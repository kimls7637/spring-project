package com.spring.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.biz.board.BoardService;
import com.spring.biz.board.BoardVO;
import com.spring.biz.comment.CommentService;
import com.spring.biz.comment.CommentVO;
import com.spring.biz.common.AES256Util;
import com.spring.biz.heart.HeartService;
import com.spring.biz.heart.HeartVO;
import com.spring.biz.member.MailSendService;
import com.spring.biz.member.MemberService;
import com.spring.biz.member.MemberVO;
import com.spring.biz.report.ReportService;
import com.spring.biz.report.ReportVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private BoardService boardService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private HeartService heartService;
	@Autowired
	private CommentService CommentService;
	@Autowired
	private MailSendService mss;
	@Autowired
	private AES256Util aes;

	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String joinView(@ModelAttribute("user")MemberVO vo) {
		System.out.println("insert: join 입장			GET");
		return "join.jsp";
	}

	//회원가입
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	public String join(MemberVO vo, Model model, HttpSession session) throws IOException {
		System.out.println("insert: join 입장			POST");
		
		//비밀번호 보안처리
		try {
			vo.setPw(aes.encrypt(vo.getPw()));
		} catch(Exception e) {
			System.out.println("에러");
		}

		//임의의 난수키 생성 & 이메일 발송
		String authKey = mss.sendAuthMail(vo.getmEmail());
		//메일발송후 디비에 인증키포함해서 입력한 회원정보 인서트
		vo.setmAuthkey(authKey);
		memberService.insertMember(vo);

		model.addAttribute("msg", "인증링크를 메일로 발송하였습니다.\\n3분 이내 인증을 안 하실 경우 회원탈퇴 됩니다.");
		model.addAttribute("url", "main.do");

		return "alert.jsp";
	}

	//메일 인증완료시 FLAG =1로 업데이트
	@RequestMapping(value="/signUpConfirm.do", method=RequestMethod.GET)
	public String signUpConfirm(@RequestParam Map<String, String> map,MemberVO vo, Model model){
		//email, authKey 가 일치할경우 authStatus 업데이트
		System.out.println("signUpConfirm        GET입장");
		vo.setmEmail(map.get("email"));
		vo.setmAuthkey(map.get("authKey"));

		//인증 일치
		if(memberService.updateAuthStatus(vo)) {
			model.addAttribute("msg", "메일 인증을 완료하였습니다.\\n로그인해주세요.");
			model.addAttribute("url", "main.do");
			return "alert.jsp";		
		}		
		//인증 불일치
		model.addAttribute("msg", "없는 정보입니다.\\n회원가입을 해주세요.");
		model.addAttribute("url", "main.do");

		return "alert.jsp";
	}



	//---------------로그인---------------
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MemberVO vo,HttpSession session, Model model,BoardVO bvo, HttpServletRequest request) {
		System.out.println("selectOne: login 입장");
		try {
			vo.setPw(aes.encrypt(vo.getPw()));
		} catch(Exception e) {
			System.out.println("에러");			
		}
		
		//입력한 회원셀렉
		vo=memberService.selectOneMember(vo);   		
		
		if(vo==null) {
			model.addAttribute("msg", "아이디 비밀번호를 확인해주세요.");
			model.addAttribute("url", "/app/main.do");
			return "alert.jsp";
		}
		else if(vo.getmFlag()==0) {
			model.addAttribute("msg", "email 인증 후 로그인해주세요.");
			model.addAttribute("url", "/app/main.do");
			return "alert.jsp";
		}
		else if (vo.getBenFlag()>0) {
			model.addAttribute("msg",vo.getmStopDate()+"일까지 정지입니다.  정지일수("+ vo.getBenFlag()+")일");
			model.addAttribute("url", request.getHeader("Referer")+"");
			return "alert.jsp";
		}else{
			session.setAttribute("member", vo);

			if(vo.getPwFlag() >=30) {
				model.addAttribute("msg", "비밀번호를 변경 유효기간이 "+vo.getPwFlag()+"일이 지났습니다. \\n비밀번호를 변경해주세요.");				
				model.addAttribute("url", request.getHeader("Referer")+"");
				return "alert.jsp";
			}
			return "redirect:" + request.getHeader("Referer");
		}
	}

	//---------------로그아웃---------------
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) {
		System.out.println("logout 입장  GET");

		session.removeAttribute("member");		
		return "redirect:main.do";
	}
	
	//--------------- 회원 탈퇴 ---------------
	@RequestMapping(value="/deleteMember.do", method=RequestMethod.GET)
	public String deleteMember() {
		System.out.println("delete: deleteMember    GET");
		return "unJoin.jsp";
	}


	//--------------- 회원 탈퇴 ---------------
	@RequestMapping(value="/unjoin.do", method=RequestMethod.GET)
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	public String deleteMember(BoardVO bvo,CommentVO cvo,MemberVO mvo,HeartVO hvo,ReportVO rvo, Model model, HttpSession session) {
		System.out.println("delete: unjoin    GET");

		mvo=(MemberVO)session.getAttribute("member");
		mvo.getId();
		//게시판 블라
		bvo.setbId(mvo.getId());
		boardService.updateBoardBlind(bvo);

		//좋아요 리셋
		hvo.setHid(mvo.getId());
		heartService.deleteHeartMember(hvo);
		
		//신고 리셋처리
		rvo.setRid(mvo.getId());
		reportService.deleteReportMember(rvo);
		
		//댓글 블라인드 처리
		cvo.setcId(mvo.getId());
		CommentService.blindMemberComment(cvo);
		
		// 멤버 삭제
		memberService.deleteMember(mvo);

		session.removeAttribute("member");
		return "main.do";
	}

	//---------------마이페이지---------------
	@RequestMapping(value="/myPage.do", method=RequestMethod.GET)
	public String mypage() {
		System.out.println("myPage 입장    GET");   
		return "myPage.jsp";
	}


	//--------------- 아이디중복확인 ---------------
	@RequestMapping(value="/idCheck.do", method=RequestMethod.POST) 
	@ResponseBody
	public String idCheck(MemberVO vo,HttpSession session)throws IOException {
		System.out.println("selectOne: idCheck 입장 POST");
		//비속어 체크
		if(!checkVoca(vo,session)) {
			return "0";
		}
		//db확인
		vo=memberService.checkId(vo);
		//1성공  2실패
		if(vo==null) {
			return "1";
		}
		else {
			return "2";
		}
	}

	//--------------- 닉네임중복확인 ---------------
	@RequestMapping(value="/nickCheck.do", method=RequestMethod.POST) 
	@ResponseBody
	public String nickCheck(MemberVO vo,HttpSession session)  throws IOException{
		System.out.println("nickCheck.do  입장 POST");
		//비속어 체크		
		if(!checkVoca(vo,session)) {
			return "0";
		}
		//db확인
		vo=memberService.checkNickName(vo);
		//1성공  2실패
		if(vo==null) {
			return "1";
		}
		else {
			return "2";
		}
	}

	//--------------- 비속어 필터링 ---------------
	public boolean checkVoca(MemberVO vo,HttpSession session) throws IOException {
		System.out.println("MemberController: checkVoca 입장 ");
		// 욕설이 포함된 파일 경로 설정
		String filePath = session.getServletContext().getRealPath("/WEB-INF/profanity.txt");
		File file = new File(filePath);

		// 파일이 존재하면 파일을 읽어서 리스트로 저장
		List<String>profanityList = new ArrayList<>();
		if (file.exists()) {
			BufferedReader br = new BufferedReader(new FileReader(file));
			String line = null;
			while ((line = br.readLine()) != null) {
				profanityList.add(line);
			}
			br.close();
		}
		// 제목과 내용에 욕설이 포함되어 있는지 확인
		for (String profanity : profanityList) {
			if(vo.getId()!=null) {
				if(vo.getId().contains(profanity)) {
					return  false;
				}
			}
			if(vo.getmNickname()!=null) {
				if(vo.getmNickname().contains(profanity)) {
					return  false;
				}
			}
		}
		return true;
	}

	//--------------- 이메일중복확인 ---------------
	@RequestMapping(value="/emailCheck.do", method=RequestMethod.POST) 
	@ResponseBody
	public String emailCheck(MemberVO vo,HttpSession session)  throws IOException{
		System.out.println("emailCheck.do  입장 POST");
		//db확인
		vo=memberService.checkEmail(vo);
		//1성공  2실패
		if(vo==null) {
			return "1";
		}
		else {
			return "2";
		}
	}

	//--------------- 아이디찾기 인증번호발송 ---------------
	@RequestMapping(value="/searchId.do", method=RequestMethod.POST) 
	@ResponseBody
	public String searchId(MemberVO vo,HttpServletResponse response) throws IOException{
		System.out.println("searchId.do  입장 POST");
		vo=memberService.selectOneMember(vo);

		if(vo==null) {
			return "0";
		}
		else {
			String authKey = mss.sendChkMail(vo.getmEmail());
			vo.setmEmailChk(authKey);
			response.setContentType("application/x-json; charset=UTF-8");  
			response.getWriter().write(authKey+"");
			System.out.println("메일로 발송된 인증번호"+authKey);
			return authKey;
		}
	}

	//--------------- 아이디찾기 인증번호 확인 ---------------
	@RequestMapping(value="/emailNumConfirm.do", method=RequestMethod.POST) 
	@ResponseBody
	public String emailNumConfirm(MemberVO vo,HttpServletResponse response,HttpServletRequest request)throws IOException{
		System.out.println("confirm.do  입장 POST");

		String authKey=(request.getParameter("authKey")); 
		
		System.out.println("세션에 있는 값" + vo.getmAuthkey());
		System.out.println("사용자가 입력한 값"+ vo.getmEmailChk());
		
		if(vo.getmEmailChk().equals(vo.getmAuthkey())) {
			return "1";
		}
		else {
			return "0";
		}
	}

	//--------------- 아이디찾기 인증번호 확인 ---------------
	@RequestMapping(value="/returnId.do", method=RequestMethod.POST) 
	public String returnId(MemberVO vo,Model model) {
		System.out.println("returnId.do  입장 POST");
		vo=memberService.selectOneMember(vo);   
		model.addAttribute("member", vo);      
		return "searchIdResult.jsp";
	}

	//---------------비밀번호찾기---------------
	@RequestMapping(value="/searchPw.do", method=RequestMethod.POST)
	public String serachPwView(MemberVO vo,Model model) {
		System.out.println("searchPw.do  입장 POST");

		vo=memberService.selectOneMember(vo);   
		model.addAttribute("member", vo);      
		return "searchPwResult.jsp";
	}

	//--------------- 회원정보변경---------------
	@RequestMapping(value="/changeMyInfo.do", method=RequestMethod.POST)
	public String changeMyInfo (MemberVO vo, Model model,HttpSession session) {
		System.out.println("update: changeMyInfo입장 			POST");

		//세션 정보 가져오기
		MemberVO mvo=(MemberVO)session.getAttribute("member"); 
		
		//비밀번호 보안처리
		try {
			vo.setPw(aes.encrypt(vo.getPw()));
		} catch(Exception e) {
			System.out.println("에러");
		}
		
		//입력 받은 값으로 정보 업데이트
		memberService.updateMember(vo);
		


		//로그인했을경우 세션에서 정보를 가져오므로 mvo가 널일수가없음
		if(mvo!=null) {
			//비번이 다를시 새로은 날짜 등록
			if(!vo.getPw().equals(mvo.getPw())) {
				memberService.updateMember_mjoindate(vo);
			}
		}else {//비밀번호찾기로 변경시 mjoindate 무조건 변경
			memberService.updateMember_mjoindate(vo);
		}

		return "redirect:main.do";
	}


}