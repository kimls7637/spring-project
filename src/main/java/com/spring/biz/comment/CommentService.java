package com.spring.biz.comment;

import java.util.List;


public interface CommentService {
	public boolean insertComment(CommentVO cvo);
	public boolean updateComment(CommentVO cvo);
	public boolean blindComment(CommentVO cvo);
	public boolean blindMemberComment(CommentVO cvo);
	public List<CommentVO> selectAll(CommentVO cvo);
	public List<CommentVO> select_admin_report(CommentVO vo);
	public List<CommentVO> select_admin_recent(CommentVO vo);
	public List<CommentVO> selectAllMy(CommentVO cvo);
	public boolean blindCommentAdmin(CommentVO cvo);

}
