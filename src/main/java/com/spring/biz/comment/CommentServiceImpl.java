package com.spring.biz.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("commentService")
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentDAO CommentDAO;

	@Override
	public boolean insertComment(CommentVO cvo) {
		return CommentDAO.insertComment(cvo);
	}                                                                                                                                                                                                                                         

	@Override
	public boolean updateComment(CommentVO cvo) {
		return CommentDAO.updateComment(cvo);
	}
	

	@Override
	public List<CommentVO> selectAll(CommentVO cvo) {
		return CommentDAO.selectAll(cvo);
	}

	@Override
	public boolean blindComment(CommentVO cvo) {
		return CommentDAO.blindComment(cvo);
	}
	@Override
	public boolean blindMemberComment(CommentVO cvo) {
		return CommentDAO.blindMemberComment(cvo);
	}


	@Override
	public List<CommentVO> select_admin_report(CommentVO vo) {
		return CommentDAO.select_admin_report(vo);
	}

	@Override
	public List<CommentVO> select_admin_recent(CommentVO vo) {
		return CommentDAO.select_admin_recent(vo);
	}

	@Override
	public List<CommentVO> selectAllMy(CommentVO cvo) {
		return CommentDAO.selectAllMy(cvo);
	}

	@Override
	public boolean blindCommentAdmin(CommentVO cvo) {
		return CommentDAO.blindCommentAdmin(cvo);
	}

}
