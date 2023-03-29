package com.spring.biz.tag;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.spring.biz.board.BoardVO;

@Repository("tagDAO")
public class TagDAO {
   @Autowired
   private JdbcTemplate jdbcTemplate;

   private final String SQL_TAG_INSERT="INSERT INTO TAG2(TCONTENT,TBNUM) VALUES(?,?)";
   private final String SQL_TAG_SELECT_ALL="SELECT * FROM TAG2 WHERE TBNUM=?";
   private final String SQL_TAG_DELETE="DELETE FROM TAG2 WHERE TBNUM=?";
   
   public boolean insertHashTagList(TagVO tvo) {
      jdbcTemplate.update(SQL_TAG_INSERT,tvo.gettContent(),tvo.gettBnum());
      return true;
   }   
   
   public boolean deleteHashTagList(TagVO tvo) {
      jdbcTemplate.update(SQL_TAG_DELETE,tvo.gettBnum());
      return true;
   }   

   public List<TagVO> HashTagSelectOne(BoardVO vo) {
      Object[] args= {vo.getbNum()};
      return jdbcTemplate.query(SQL_TAG_SELECT_ALL, args, new TagRowMapper());
   }   
   
}

class TagRowMapper implements RowMapper<TagVO> {

   @Override
   public TagVO mapRow(ResultSet rs, int rowNum) throws SQLException {
      TagVO data=new TagVO();
      data.settNum(rs.getInt("TNUM"));
      data.settContent(rs.getString("TCONTENT"));
      data.settBnum(rs.getInt("TBNUM"));
      return data;
   }
   
}