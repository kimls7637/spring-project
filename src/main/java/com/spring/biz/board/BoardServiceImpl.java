package com.spring.biz.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

   @Autowired
   private BoardDAO BoardDAO;
   @Autowired
   private BoardDAOplus BoardDAOplus;

   @Override
   public boolean insertBoard(BoardVO vo) {
      return BoardDAO.insertBoard(vo);
   }

   @Override
   public boolean updateBoard(BoardVO vo) {
      return BoardDAO.updateBoard(vo);
   }

   @Override
   public boolean deleteBoard(BoardVO vo) {
      return BoardDAO.deleteBoard(vo);
   }

   @Override
   public List<BoardVO> selectAll_cate_recent(BoardVO vo) {
      return BoardDAOplus.selectAll_cate_recent(vo);
   }

   @Override
   public List<BoardVO> selectAll_cate_hits(BoardVO vo) {
      return BoardDAOplus.selectAll_cate_hits(vo);
   }

   @Override
   public List<BoardVO> selectAll_main_recent(BoardVO vo) {
      return BoardDAOplus.selectAll_main_recent(vo);
   }

   @Override
   public List<BoardVO> selectAll_main_heartCnt(BoardVO vo) {
      return BoardDAOplus.selectAll_main_heartCnt(vo);
   }

   @Override
   public List<BoardVO> selectAll(BoardVO vo) {
      return BoardDAOplus.selectAll(vo);
   }

   @Override
   public BoardVO selectOneBoard(BoardVO vo) {
      return BoardDAOplus.selectOneBoard(vo);
   }

   @Override
   public BoardVO selectTag(BoardVO vo) {
      return BoardDAOplus.selectTag(vo);
   }

   @Override
   public BoardVO selectBoardCnt(BoardVO vo) {
      return BoardDAOplus.selectBoardCnt(vo);
   }

   @Override
   public List<BoardVO> select_admin_cate(BoardVO vo) {
      return BoardDAOplus.select_admin_cate(vo);
   }

   @Override
   public List<BoardVO> select_admin_report(BoardVO vo) {
      return BoardDAOplus.select_admin_report(vo);
   }

   @Override
   public List<BoardVO> select_admin_recent(BoardVO vo) {
      return BoardDAOplus.select_admin_recent(vo);
   }

   @Override
   public boolean updateBoardBlind(BoardVO vo) {
      return BoardDAO.updateBoardBlind(vo);
   }

}