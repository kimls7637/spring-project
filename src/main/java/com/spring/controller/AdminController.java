package com.spring.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.board.BoardService;
import com.spring.biz.board.BoardVO;
import com.spring.biz.comment.CommentService;
import com.spring.biz.comment.CommentVO;
import com.spring.biz.member.MemberService;
import com.spring.biz.member.MemberVO;
import com.spring.biz.report.ReportService;
import com.spring.biz.report.ReportVO;

@Controller
public class AdminController {

	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentService commentService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReportService reportService;

	//관리자페이지
	@RequestMapping(value = "/admin.do", method = RequestMethod.GET)
	public String adminPage(MemberVO mvo, BoardVO bvo, Model model) {
		System.out.println("AdminController에 있는 admin.do 입장   GET");
		//총 게시물
		model.addAttribute("allBoard", boardService.selectBoardCnt(bvo));
		//총 회원수
		model.addAttribute("allMember", memberService.selectMemberCnt(mvo));
		//카테별 게시글수
		ArrayList<Integer> boardCntList = new ArrayList<>();      

		List<BoardVO> bList = boardService.select_admin_cate(bvo);
		for(int i = 0; i < bList.size(); i++) {
			boardCntList.add(bList.get(i).getBoardCnt());
		}

		model.addAttribute("boardCntList", boardCntList);      

		//회원등급별 카운트
		ArrayList<Integer> memberCntList = new ArrayList<>();

		List<MemberVO> mList = memberService.select_admin_grade(mvo);
		int cnt = 0;
		for(int i = 0; i < 4; i++) {
			if(mList.size() != cnt) {
				if(mList.get(cnt).getGrade().equals("level"+(i+1)+".png")) {
					memberCntList.add(mList.get(cnt++).getMemberCnt());
				} else {
					memberCntList.add(0);
				}
			} else {
				memberCntList.add(0);
			}
		}
		model.addAttribute("memberCntList", memberCntList);

		return "admin.jsp";
	}

	//최신순 기본값
	@RequestMapping(value = "/boardCtrl.do", method = RequestMethod.GET)
	public String boardallList(BoardVO bvo, Model model,CommentVO cvo) {
		System.out.println("AdminController에 있는 boardCtrl.do 입장   GET");
		if(bvo.getbId()!=null) {
			cvo.setcId(bvo.getbId());
		}
		model.addAttribute("commemtCtrlReport", commentService.select_admin_recent(cvo));
		model.addAttribute("boardCtrlBoard", boardService.select_admin_recent(bvo));
		return "boardCtrl.jsp";
	}

	//신고순
	@RequestMapping(value = "/report.do", method = RequestMethod.GET)
	public String reportList(BoardVO bvo, Model model,CommentVO cvo) {
		System.out.println("AdminController에 있는 report.do 입장   GET");
		if(bvo.getbId()!=null) {
			cvo.setcId(bvo.getbId());
		}
		model.addAttribute("commemtCtrlReport", commentService.select_admin_report(cvo));
		model.addAttribute("boardCtrlBoard", boardService.select_admin_report(bvo));
		return "boardCtrl.jsp";
	}

	//멤버관리
	@RequestMapping(value = "/memberCtrl.do", method = RequestMethod.GET)
	public String memberallList(MemberVO mvo, Model model) {
		System.out.println("AdminController에 있는 memberCtrl.do 입장   GET");
		model.addAttribute("memberCtrl", memberService.select_admin_report(mvo));
		return "memberCtrl.jsp";
	}

	//멤버신고순
	@RequestMapping(value = "/reportMember.do", method = RequestMethod.GET)
	public String reportMember(MemberVO mvo, Model model) {
		System.out.println("AdminController에 있는 reportMember.do 입장   GET");
		model.addAttribute("memberCtrl", memberService.select_admin_report(mvo));
		return "memberCtrl.jsp";
	}

	//멤버등급순
	@RequestMapping(value = "/levelMember.do", method = RequestMethod.GET)
	public String levelMember(MemberVO mvo, Model model) {
		System.out.println("AdminController에 있는 levelMember.do 입장   GET");
		model.addAttribute("memberCtrl", memberService.selectAll_GRADE(mvo));
		return "memberCtrl.jsp";
	}


	//--------------- 회원정지 ---------------
	@RequestMapping(value="/locked.do", method=RequestMethod.GET)
	public String lockedMember(MemberVO mvo,  Model model) {
		System.out.println("AdminController에 있는 locked.do 입장   GET");		
		memberService.updateMember(mvo);
		//블라인드 추가

		model.addAttribute("memberCtrl", memberService.select_admin_report(mvo));
		return "memberCtrl.do";
	}

	//댓글 신고수 초기화
	@RequestMapping(value="/commentInit.do", method=RequestMethod.POST)
	@ResponseBody
	public String commentInit(Model model,ReportVO rvo) {
		System.out.println("commentInit에 있는 commentInit.do 입장   POST");		
		ArrayList<String> datas = new ArrayList<String>(Arrays.asList(rvo.getAdminCtrlrNum().split(",")));
		for(int i=0; i<datas.size(); i++) {
			rvo.setRbnum(datas.get(i));
			rvo.setRtype("댓글");
			//모델 호출
			reportService.updateReport(rvo);
		}

		return "1";
	}

	//댓글 신고수 초기화
	@RequestMapping(value="/boardInit.do", method=RequestMethod.POST)
	@ResponseBody
	public String boardInit(ReportVO rvo,  Model model) {
		System.out.println("AdminController에 있는 boardInit.do 입장   POST");		
		ArrayList<String> datas = new ArrayList<String>(Arrays.asList(rvo.getAdminCtrlbNum().split(",")));
		for(int i=0; i<datas.size(); i++) {
			rvo.setRbnum(datas.get(i));
			rvo.setRtype("게시글");
			//모델 호출
			reportService.updateReport(rvo);
		}

		return "1";
	}


	//댓글 블라인드
	//commentBlind.do
	@RequestMapping(value="/commentBlind.do", method=RequestMethod.POST)
	@ResponseBody
	public String commentBlind(CommentVO cvo,  Model model) {
		System.out.println("commentBlind에 있는 commentBlind.do 입장   POST");		
		ArrayList<String> datas = new ArrayList<String>(Arrays.asList(cvo.getAdminCtrlrNum().split(",")));
		for(int i=0; i<datas.size(); i++) {
			cvo.setcNum(Integer.parseInt(datas.get(i)));
			//모델 호출
			commentService.blindCommentAdmin(cvo);
		}

		return "2";
	}

	//게시글 블라인드
	@RequestMapping(value="/boardBlind.do", method=RequestMethod.POST)
	@ResponseBody
	public String boardBlind(BoardVO bvo,  Model model) {
		System.out.println("AdminController에 있는 boardBlind.do 입장   POST");		
		ArrayList<String> datas = new ArrayList<String>(Arrays.asList(bvo.getAdminCtrlbNum().split(",")));
		for(int i=0; i<datas.size(); i++) {
			bvo.setbNum(Integer.parseInt(datas.get(i)));
			//모델 호출
			boardService.updateBoardBlind(bvo);
		}

		return "2";
	}

	//멤버별 게시글/댓글
	@RequestMapping(value="/memberContents.do", method=RequestMethod.POST)
	public String memberContents(BoardVO bvo,MemberVO mvo, Model model,CommentVO cvo) {
		System.out.println("AdminController에 있는 memberContents.do 입장   POST");
		
		bvo.setbId(mvo.getId());
		cvo.setcId(mvo.getId());
		System.out.println("");
		
		
		model.addAttribute("commemtCtrlReport", commentService.select_admin_recent(cvo));
		model.addAttribute("boardCtrlBoard", boardService.select_admin_recent(bvo));
		return "boardCtrl.jsp";
	}

}