package com.spring.biz.tag;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.board.BoardVO;

@Service("tagService")
public class TagServiceImpl implements TagService {

	@Autowired
	private TagDAO TagDAO;

	@Override
	public boolean insertTag(TagVO tvo) {
		return TagDAO.insertHashTagList(tvo);
	}

	@Override
	public List<TagVO> HashTagSelectOne(BoardVO vo) {
		return TagDAO.HashTagSelectOne(vo);

	}

	@Override
	public boolean deleteTag(TagVO tvo) {
		return TagDAO.deleteHashTagList(tvo);
	}

}