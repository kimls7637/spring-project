package com.spring.biz.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDAO")
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public boolean insertBoard(BoardVO vo) {
		mybatis.insert("BoardDAO.insertBoard", vo);
		return true;
	}

	public boolean updateBoard(BoardVO vo) {
		int res = 0;
		if (vo.getbTitle() == null) {
			res=mybatis.update("BoardDAO.updateBoard_hits", vo);
		} else {
			res=mybatis.update("BoardDAO.updateBoard", vo);
		}
		if (res < 1) {
			return false;
		}
		return true;
	}

	public boolean updateBoardBlind(BoardVO vo) {
		int res = 0;
		if(vo.getbId() == null) {
			res=mybatis.update("BoardDAO.updateBoard_blind", vo);
		} else {
			res=mybatis.update("BoardDAO.updateBoard_blind_member", vo);
		}
		if(res < 1) {
			return false;
		}
		return true;
	}

	public boolean deleteBoard(BoardVO vo) {
		int res=mybatis.delete("BoardDAO.deleteBoard", vo);
		if(res<1) {
			return false;
		}
		return true;
	}

}