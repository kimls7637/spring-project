package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.comment.CommentService;
import com.spring.biz.comment.CommentVO;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;



	//댓글 추가
	@ResponseBody
	@RequestMapping(value="/commentInsert.do",method = RequestMethod.POST)
	public String insertComment(CommentVO cvo) {
		System.out.println("commentInsert      POST입장");
		if(commentService.insertComment(cvo)) {
			System.out.println("댓글등록완료");   
			return "1";
		}else {
			System.out.println("댓글등록실패");
			return "2";

		}
	}

	//댓글 수정
	@ResponseBody
	@RequestMapping(value="/commentUpdate.do", method = RequestMethod.POST)
	public String updeteComment(CommentVO cvo) {
		System.out.println("commentUpdate        POST입장");
		if(commentService.updateComment(cvo)) {
			System.out.println("수정완료");
			return "1";
		}else {
			System.out.println("수정실패");
			return "2";

		}
	}


	//삭제
	@ResponseBody
	@RequestMapping(value="/commentDelete.do", method=RequestMethod.POST)
	public String blindComment(CommentVO cvo) {
		System.out.println("commentDelete        POST입장");
		if(commentService.blindComment(cvo)) {
			System.out.println("삭제 완료");
			return "1";
		}else {
			System.out.println("삭제 실");
			return "2";
		}
	}



	//삭제
	@RequestMapping(value="/myCommentDelete.do", method=RequestMethod.GET)
	public String myCommentDelete(CommentVO cvo) {
		if(commentService.blindComment(cvo)) {
			return "myComment.do";
		} else {
			return "myComment.do";
		}
	}



	//탈퇴시 삭제처리
	@RequestMapping(value="/blindMemberComment.do", method=RequestMethod.GET)
	public void blindMemberComment(CommentVO cvo , Model model) {
		model.addAttribute("commentList",commentService.blindMemberComment(cvo));
	}


	//게시글 클릭시
	@RequestMapping(value="/commentSelect.do", method=RequestMethod.GET)
	public String selectAll(CommentVO cvo, Model model) {
		model.addAttribute("commentList",commentService.selectAll(cvo));
		return "commuDetail.jsp";
	}

}