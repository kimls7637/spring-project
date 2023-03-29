package com.spring.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.biz.board.BoardService;
import com.spring.biz.board.BoardVO;
import com.spring.biz.comment.CommentService;
import com.spring.biz.comment.CommentVO;
import com.spring.biz.heart.HeartService;
import com.spring.biz.heart.HeartVO;
import com.spring.biz.member.MemberService;
import com.spring.biz.member.MemberVO;
import com.spring.biz.report.ReportService;
import com.spring.biz.report.ReportVO;
import com.spring.biz.tag.TagService;
import com.spring.biz.tag.TagVO;

@Controller
public class BoardController {

	/////////////////////////////////////// 추가 /////////////////////
	@Autowired
	private BoardService boardService;
	@Autowired
	private TagService tagService;
	@Autowired
	private HeartService heartService;
	@Autowired
	private CommentService commentService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReportService reportService; 
	
	public static final String path = "C:\\lee1108\\workspace03\\AC\\src\\main\\webapp\\images\\";

	///////////////////////////////////////////
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String startApp(Model model,BoardVO bvo,MemberVO mvo,HttpSession session) {
		System.out.println("board에 있는 main.do() 입장");
		//좋아요 게시물
		model.addAttribute("likeList", boardService.selectAll_main_heartCnt(bvo));
		//최신 게시물
		model.addAttribute("recentList", boardService.selectAll_main_recent(bvo));
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!= null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}
		return "main.jsp";
	}

	@RequestMapping(value = "/chat.do", method = RequestMethod.GET)
	public String chat(MemberVO vo) {
		System.out.println("board에 있는 chat.do() 입장  GET");
		return "main.do";
	}
	@RequestMapping(value = "/chat.do", method = RequestMethod.POST)
	public String chat(HttpServletRequest req, HttpSession session, MemberVO mvo) {
		System.out.println("board에 있는 chat.do() 입장   POST");
		if(req.getHeader("Referer") != null) {
			session.setAttribute("user", mvo.getmNickname());
			
			//실시간 정보변경
			mvo=(MemberVO)session.getAttribute("member");   
			if(mvo!=null) {
				mvo=memberService.selectOneMember(mvo);    
				session.setAttribute("member", mvo);
			}
			return "redirect:" + req.getHeader("Referer");
		}
		return null;
	}

	@RequestMapping(value = "/commuList.do", method = RequestMethod.GET)
	public String commuList(BoardVO bvo, Model model,MemberVO mvo, HttpSession session ) {
		System.out.println("board에 있는 commuList.do 입장   GET");
		bvo.setbCate("커뮤니티");
		model.addAttribute("commuList", boardService.selectAll_cate_recent(bvo));
		
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);			
		}
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		return "commuList.jsp";
	}

	@RequestMapping(value = "/sharingTipList.do", method = RequestMethod.GET)
	public String sharingTipList(BoardVO bvo, Model model,MemberVO mvo, HttpSession session) {
		System.out.println("board에 있는 sharingTipList.do 입장   GET");
		bvo.setbCate("꿀팁공유");
		model.addAttribute("commuList", boardService.selectAll_cate_recent(bvo));
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		return "sharingTipList.jsp";
	}

	@RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
	public String noticeList(BoardVO bvo, Model model,MemberVO mvo, HttpSession session) {
		System.out.println("board에 있는 noticeList.do 입장   GET");
		bvo.setbCate("공지사항");
		model.addAttribute("commuList", boardService.selectAll_cate_recent(bvo));
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		return "noticeList.jsp";
	}

	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET)
	public String insertBoard(BoardVO bvo,Model model,MemberVO mvo, HttpSession session, HttpServletRequest request) {
		System.out.println("board에 있는 insertBoard.do 입장   GET");
		model.addAttribute("bCate", bvo.getbCate());
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");  
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		return "insertBoard.jsp";
	}

	@RequestMapping(value = "/checkVoca.do", method = RequestMethod.POST)
	@ResponseBody
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	public String checkVoca(BoardVO bvo, TagVO tvo, Model model, HttpSession session, HttpServletRequest request) throws IOException {
		System.out.println("board에 있는 checkVoca.do 입장   POST");
		//비속어 체크
		if(!checkVoca(bvo,tvo,session)) {
			return "0";
		}

		// 욕설이 포함되어 있지 않다면 등록
		boardService.insertBoard(bvo);

		// 최근 게시물 선택
		bvo = boardService.selectTag(bvo);
		tvo.settBnum(bvo.getbNum());

		// 태그 등록
		String tagcontent = (String) tvo.gettContent();
		String[] tag = tagcontent.split(",");
		for (int i = 0; i < tag.length; i++) {
			if (i == tag.length) {
				break;
			}
			tvo.settContent(tag[i]);
			tagService.insertTag(tvo);
		}

		if (bvo.getbCate().equals("꿀팁공유")) {
			return "redirect:sharingTipList.do";
		}

		return "redirect:commuList.do";
	}

	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	public String insertBoard(BoardVO bvo, TagVO tvo, Model model, HttpSession session, HttpServletRequest request) throws IOException {
		System.out.println("board에 있는 insertBoard.do 입장   POST");
		// db인서트
		boardService.insertBoard(bvo);

		// 최근 게시물 선택
		bvo = boardService.selectTag(bvo);
		tvo.settBnum(bvo.getbNum());

		// 태그 등록
		String tagcontent = (String) tvo.gettContent();
		String[] tag = tagcontent.split(",");
		for (int i = 0; i < tag.length; i++) {
			if (i == tag.length) {
				break;
			}
			tvo.settContent(tag[i]);
			tagService.insertTag(tvo);
		}

		if (bvo.getbCate().equals("꿀팁공유")) {
			return "redirect:sharingTipList.do";
		}else if(bvo.getbCate().equals("공지사항")) {
			return "redirect:noticeList.do";
		}

		return "redirect:commuList.do";
	}
	
	// 게시글 수정
	@RequestMapping(value = "/updateBoard.do", method = RequestMethod.POST)
	public String updateBoardPOST(BoardVO bvo, TagVO tvo, Model model,HttpSession session,MemberVO mvo) {
		System.out.println("BoardController에 있는 update.do 입장  POST");
				
		boardService.updateBoard(bvo);   

		//태그 삭제
		tvo.settBnum(bvo.getbNum());
		tagService.deleteTag(tvo);

		// 태그 등록
		String tagcontent = (String) tvo.gettContent();
		String[] tag = tagcontent.split(",");

		for (int i = 0; i < tag.length; i++) {
			if (i == tag.length) {
				break;
			}
			tvo.settContent(tag[i]);
			tvo.settBnum(bvo.getbNum());
			tagService.insertTag(tvo);
		}

		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member"); 
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}

		if (bvo.getbCate().equals("꿀팁공유")) {
			return "redirect:sharingTipList.do";
		}else if(bvo.getbCate().equals("공지사항")) {
			return "redirect:noticeList.do";
		}

		return "redirect:commuList.do";
	}

	//--------------- 비속어 필터링 ---------------
	public boolean checkVoca(BoardVO vo,TagVO tvo,HttpSession session) throws IOException {
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
			if(vo.getbTitle().contains(profanity) || vo.getbContent().contains(profanity)|| tvo.gettContent().contains(profanity)) {
				return false;
			}
		}
		return true;
	}


	@RequestMapping(value = "/insertInsta.do", method = RequestMethod.POST)
	public String insertInstaBoard(BoardVO vo,MemberVO mvo, HttpSession session) {
		// 이미지 업로드
		MultipartFile uploadFile=vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
			System.out.println("이미지 업로드 확인");
			String fileName=uploadFile.getOriginalFilename();
			System.out.println("파일 이름 : "+fileName);

			// 사용자의 로컬PC에 저장된 이미지를 업로드한것이기때문에,
			// 서버(프로젝트)에서 해당 이미지를 별도 관리하기위해 데이터를 복사해서 저장해야함!
			try {
				uploadFile.transferTo(new File(path+fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		Instagram selTest = new Instagram();
		selTest.crawl(vo);
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}
		return "redirect:main.do";
	}

	//---------------나의게시글---------------
	@RequestMapping(value="/myBoard.do", method=RequestMethod.GET) 
	public String myboard(BoardVO bvo,MemberVO mvo,Model model,HttpSession session) {
		System.out.println("board에 있는 myBoard.do 입장   GET");

		mvo=(MemberVO)session.getAttribute("member");      
		bvo.setbId(mvo.getId());
		model.addAttribute("myBoardList", boardService.selectAll(bvo));

		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}
		return "myBoard.jsp"; 
	}


	//---------------나의댓글---------------
	@RequestMapping(value="/myComment.do", method=RequestMethod.GET)
	public String myComment(MemberVO mvo,CommentVO cvo,Model model,HttpSession session) {
		System.out.println("board에 있는 myComment.do 입장   GET");
		mvo=(MemberVO)session.getAttribute("member");      
		cvo.setcId(mvo.getId());
		model.addAttribute("myCommentList", commentService.selectAllMy(cvo));

		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);   
			session.setAttribute("member", mvo);  			
		}  
		return "myComment.jsp";
	}


	//---------------최신순---------------
	@RequestMapping(value="/recent.do", method=RequestMethod.GET) 
	public String recent(BoardVO bvo,MemberVO mvo,Model model,HttpSession session) {
		System.out.println("board에 있는 hit.do 입장   GET");
		model.addAttribute("commuList", boardService.selectAll_cate_recent(bvo));

		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);			
		}

		if(bvo.getbCate().equals("커뮤니티")) {
			return "commuList.jsp";
		}
		else if(bvo.getbCate().equals("공지사항")) {
			return "noticeList.jsp";
		}
		return "sharingTipList.jsp";
	}

	
	//---------------조회순---------------
	@RequestMapping(value="/hit.do", method=RequestMethod.GET) 
	public String hit(BoardVO bvo,MemberVO mvo,Model model,HttpSession session) {
		System.out.println("board에 있는 hit.do 입장   GET");
		model.addAttribute("commuList", boardService.selectAll_cate_hits(bvo));
		
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);			
		}

		if(bvo.getbCate().equals("커뮤니티")) {
			return "commuList.jsp";
		}else if(bvo.getbCate().equals("꿀팁공유")) {
			return "sharingTipList.jsp";
		}
		return "noticeList.jsp";
	}




	// 입력한 게시글,tag + 리스트 출력//////////////////////////////
	@RequestMapping(value = "/deleteBoard.do", method = RequestMethod.GET)
	public String deleteBoard(BoardVO bvo,MemberVO mvo,HttpSession session) {
		System.out.println("BoardController에 있는 deleteBoard.do 입장  POST");

		boardService.updateBoardBlind(bvo);

		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}

		return "redirect:commuList.do";
	}


	/////////////////////////////수정 버튼 누르면 이쪽으로 온다////////////////////
	@RequestMapping(value = "/updateBoard.do", method = RequestMethod.GET)
	public String updateBoardGET(BoardVO vo, TagVO tvo, Model model,MemberVO mvo, HttpSession session ) {
		System.out.println("BoardController에 있는 updateBoard.do 입장  GET");

		mvo=(MemberVO)session.getAttribute("member");
		if(mvo!=null) {
			vo.setmId(mvo.getId());
		}

		model.addAttribute("commuDetail", boardService.selectOneBoard(vo));

		//tag
		tvo.settBnum(vo.getbNum());
		model.addAttribute("tagList", tagService.HashTagSelectOne(vo));

		//조회수올리기
		boardService.updateBoard(vo);
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);			
		}

		return "insertBoard.jsp";
	}


	/////////////////////////// 게시물 상세보기 이동///////////////////////
	@RequestMapping(value = "/commuDetail.do", method = RequestMethod.GET)
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	public String selectOneBoard(BoardVO vo, CommentVO cvo,TagVO tvo, Model model,MemberVO mvo, HttpSession session, HttpServletRequest request) {
		System.out.println("BoardController에 있는 commuDetail.do 입장  GET");

		mvo=(MemberVO)session.getAttribute("member");

		if(mvo!=null) {
			vo.setmId(mvo.getId());
			cvo.setcId(mvo.getId());
		}

		//조회수올리기
		boardService.updateBoard(vo);
		
		//게시글
		vo =boardService.selectOneBoard(vo);
		
		if(vo==null) {
			model.addAttribute("msg", "없는 게시글 입니다.");
			model.addAttribute("url", "main.do");
			return "alert.jsp";
		}
		if(vo.getBlind()==1) {
			if(request.getHeader("Referer") != null) {
				
				model.addAttribute("msg", "블라인드 처리된 게시글입니다");
				model.addAttribute("url", request.getHeader("Referer")+"");
				return "alert.jsp";
			}
			model.addAttribute("msg", "블라인드 처리된 게시글입니다");
			model.addAttribute("url", "main.do");
			return "alert.jsp";
		}

		model.addAttribute("commuDetail", vo);
		//댓글
		cvo.setcBnum(vo.getbNum());
		
			
		model.addAttribute("commentList", commentService.selectAll(cvo));
		//tag
		tvo.settBnum(vo.getbNum());
		model.addAttribute("tagList", tagService.HashTagSelectOne(vo));
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		
		//실시간 정보변경
		if(mvo != null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);
		}
		return "commuDetail.jsp";
	}


	///////////////////////////태그 검색///////////////////////
	@RequestMapping(value = "/searchTag.do",method=RequestMethod.GET)
	public String searchTag(BoardVO bvo, Model model,MemberVO mvo, HttpSession session) {
		System.out.println("BoardController에 있는 searchTag.do 입장  GET");
		
		model.addAttribute("tagResult", boardService.selectAll(bvo));
		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");   
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);			
		}
		//회원 랭킹
		model.addAttribute("datas", memberService.selectAll_GRADE(mvo));
		return "result.jsp";
	}



	////////좋아요////////////////////////////////////////////////////
	@RequestMapping(value="/heart.do",method=RequestMethod.POST)
	@ResponseBody 
	public String heart(MemberVO mvo,HeartVO vo,  HttpSession session)  {
		System.out.println("BoardController에 있는 heart.do 입장  POST");
		mvo = (MemberVO)session.getAttribute("member"); // 로그인할떄 객체를 세션에 저장했기때문에

		vo.setHid(mvo.getId());
		
		// 좋아요 여부에 따라 결과값 반환
		if (vo.gethImgPath().contains("/images/heartBefore.png")) { // 좋아요 하지 않은 경우
			heartService.insertHeart(vo);
		} else { // 좋아요 한 경우
			heartService.deleteHeart(vo);
		}

		HeartVO hvo = heartService.selectHeartCnt(vo); // 좋아요 개수 조회

		//실시간 정보변경
		mvo=(MemberVO)session.getAttribute("member");
		if(mvo!=null) {
			mvo=memberService.selectOneMember(mvo);    
			session.setAttribute("member", mvo);			
		}
		return Integer.toString(hvo.getHeartCnt());

	}
	
	@ResponseBody 
	@RequestMapping(value = "/report.do", method = RequestMethod.POST)
	public String report(ReportVO vo, HttpSession session) throws IOException {
		MemberVO mvo = (MemberVO)session.getAttribute("member"); // 로그인할떄 객체를 세션에 저장했기때문에
		vo.setRid(mvo.getId()); // 로그인한 id를 신고누른사람 id에 세팅

		if(reportService.selectMy(vo).getMyReport() != 0) {
			return "0";
		} else {
			reportService.insertReport(vo);
			return "1";
		}

	}
}