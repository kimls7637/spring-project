package com.spring.biz.comment;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("commentDAO")
public class CommentDAO {

   // 댓글 추가
   private final String SQL_INSERT = "INSERT INTO COMMENT2(CBNUM,CID,CCONTENT,CSEQUENCE,CGROUP,CDATE) VALUES (?,?,?,?,(SELECT COALESCE(MAX(CGROUP),0)+1 FROM COMMENT2 AS CGROUP WHERE CBNUM=?),NOW())";
   // 대댓글 추가
   private final String SQL_INSERT_COMMENT =" INSERT INTO COMMENT2(CBNUM,CID,CCONTENT,CGROUP,CSEQUENCE,CDATE)VALUES(?,?,?,?,(SELECT COALESCE(MAX(C.CSEQUENCE),0)+1 FROM COMMENT2 AS C WHERE CBNUM=? GROUP BY CGROUP HAVING CGROUP=?),NOW())"; 
   // 댓글 수정
   private final String SQL_UPDATE = "UPDATE COMMENT2 SET CCONTENT=? , CDATE = NOW() WHERE CNUM =?";
   // 댓글블라인드(삭제)
   private final String SQL_UPDATE_BLIND_CONTENT = "UPDATE COMMENT2 SET CBLIND=2 WHERE CNUM=?";
   //댓글블라인드(관리자)
   private final String SQL_UPDATE_BLIND_CONTENT_ADMIN = "UPDATE COMMENT2 SET CBLIND=1 WHERE CNUM=?";
   // 탈퇴시 댓글블라인드(삭제)
   private final String SQL_UPDATE_BLIND_CONTENT_MEMBER = "UPDATE COMMENT2 SET CBLIND=2 WHERE CID=?";
   // 댓글 목록
   private final String SQL_SELECT_ALL = "SELECT *\n"
   		+ "FROM (\n"
   		+ "SELECT *, COUNT(HNUM) AS HEARTCNT, SUM(MY) AS MYHEART\n"
   		+ "FROM (\n"
   		+ "SELECT *, IF(HID=?, 1, 0) AS MY\n"
   		+ "FROM COMMENT2 C\n"
   		+ "LEFT JOIN\n"
   		+ "MEMBER2 M\n"
   		+ "ON C.CID = M.ID\n"
   		+ "LEFT JOIN \n"
   		+ "HEART2 H \n"
   		+ "ON C.CNUM = H.HBNUM AND H.HTYPE='댓글'\n"
   		+ "WHERE CBNUM=?\n"
   		+ ") CTABLE\n"
   		+ "GROUP BY CNUM\n"
   		+ ") A\n"
   		+ "LEFT JOIN (\n"
   		+ "SELECT ID\n"
   		+ "    , MNICKNAME\n"
   		+ "    , IFNULL(GRADE, 'level1.png') AS GRADE\n"
   		+ "FROM MEMBER2 M\n"
   		+ "LEFT JOIN (\n"
   		+ "   SELECT IFNULL(BID, CID) AS USERID\n"
   		+ "      , COUNT(*) AS HEARTCNT\n"
   		+ "   FROM HEART2 H\n"
   		+ "   LEFT JOIN BOARD2 B\n"
   		+ "   ON H.HTYPE='게시글' AND H.HBNUM=B.BNUM \n"
   		+ "   LEFT JOIN COMMENT2 C \n"
   		+ "   ON H.HTYPE='댓글' AND H.HBNUM=C.CNUM\n"
   		+ "   GROUP BY USERID\n"
   		+ ") HEART\n"
   		+ "ON M.ID = HEART.USERID\n"
   		+ "LEFT JOIN GRADE2 G \n"
   		+ "ON HEART.HEARTCNT BETWEEN G.GMIN AND G.GMAX\n"
   		+ "WHERE ID != 'ADMIN'\n"
   		+ "ORDER BY HEART.HEARTCNT DESC\n"
   		+ ") B\n"
   		+ "ON A.CID = B.ID\n"
   		+ "ORDER BY CGROUP, CSEQUENCE;";
   
   // 나의 댓글 목록 (최신순)
   private final String SQL_SELECT_ALl_MYCOMMENTLIST = "SELECT * FROM COMMENT2 WHERE CID=? AND CBLIND=0 ORDER BY CDATE DESC";
   // 관리자신고
   private final String SQL_SELECT_ADMIN_REPORT = 
         "SELECT REPORTT.*, M.MNICKNAME\n"
               + "FROM(\n"
               + "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT \n"
               + "FROM COMMENT2 C\n"
               + "LEFT JOIN (\n"
               + "   SELECT *, COUNT(*) AS RC\n"
               + "   FROM REPORT2 \n"
               + "   WHERE RTYPE='댓글' AND RESET=FALSE\n"
               + "   GROUP BY RBNUM\n"
               + ") R \n"
               + "ON C.CNUM = R.RBNUM\n"
                  + "WHERE CID !='admin'\r\n"
               + ")REPORTT\n"
               + "JOIN MEMBER2 M\n"
               + "ON REPORTT.CID = M.ID\n"
               + "ORDER BY REPORTCNT DESC";
   // 관리자신고
   private final String SQL_SELECT_ADMIN_REPORT_M = 
         "SELECT REPORTT.*, M.MNICKNAME\n"
               + "FROM(\n"
               + "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT \n"
               + "FROM COMMENT2 C\n"
               + "LEFT JOIN (\n"
               + "   SELECT *, COUNT(*) AS RC\n"
               + "   FROM REPORT2 \n"
               + "   WHERE RTYPE='댓글' AND RESET=FALSE\n"
               + "   GROUP BY RBNUM\n"
               + ") R \n"
               + "ON C.CNUM = R.RBNUM\n"
                  + "WHERE CID !='admin'\r\n"
               + ")REPORTT\n"
               + "JOIN MEMBER2 M\n"
               + "ON REPORTT.CID = M.ID\n"
               + "WHERE CID=? \n"
               + "ORDER BY REPORTCNT DESC";
   // 관리자최신
   private final String SQL_SELECT_ADMIN_RECENT = 
         "SELECT REPORTT.*, M.MNICKNAME\n"
               + "FROM(\n"
               + "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT \n"
               + "FROM COMMENT2 C\n"
               + "LEFT JOIN (\n"
               + "   SELECT *, COUNT(*) AS RC\n"
               + "   FROM REPORT2 \n"
               + "   WHERE RTYPE='댓글' AND RESET=FALSE\n"
               + "   GROUP BY RBNUM\n"
               + ") R \n"
               + "ON C.CNUM = R.RBNUM\n"
                  + "WHERE CID !='admin'\r\n"
               + ")REPORTT\n"
               + "JOIN MEMBER2 M\n"
               + "ON REPORTT.CID = M.ID\n"
               + "ORDER BY CDATE DESC";
   // 관리자최신
   private final String SQL_SELECT_ADMIN_RECENT_M = 
         "SELECT REPORTT.*, M.MNICKNAME\n"
               + "FROM(\n"
               + "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT \n"
               + "FROM COMMENT2 C\n"
               + "LEFT JOIN (\n"
               + "   SELECT *, COUNT(*) AS RC\n"
               + "   FROM REPORT2 \n"
               + "   WHERE RTYPE='댓글' AND RESET=FALSE\n"
               + "   GROUP BY RBNUM\n"
               + ") R \n"
               + "ON C.CNUM = R.RBNUM\n"
                  + "WHERE CID !='admin'\r\n"
               + ")REPORTT\n"
               + "JOIN MEMBER2 M\n"
               + "ON REPORTT.CID = M.ID\n"
               + "WHERE CID=? \n"
               + "ORDER BY CDATE DESC";
   @Autowired
   private JdbcTemplate jdbcTemplate;

   public boolean insertComment(CommentVO cvo) {
      int res = 0;
      if (cvo.getcSequence() == 0) {
         res = jdbcTemplate.update(SQL_INSERT, cvo.getcBnum(), cvo.getcId(), cvo.getcContent(), cvo.getcSequence(),cvo.getcBnum());
      } else {
         res = jdbcTemplate.update(SQL_INSERT_COMMENT, cvo.getcBnum(), cvo.getcId(), cvo.getcContent(),
               cvo.getcGroup(),cvo.getcBnum(), cvo.getcGroup());
      }
      if (res < 1) {
         return false;
      }
      return true;
   }

   public boolean updateComment(CommentVO cvo) {
      int res = jdbcTemplate.update(SQL_UPDATE, cvo.getcContent(), cvo.getcNum());

      if (res < 1) {
         return false;
      }
      return true;
   }

   public boolean blindComment(CommentVO cvo) {
      int res = jdbcTemplate.update(SQL_UPDATE_BLIND_CONTENT, cvo.getcNum());
      if (res < 1) {
         return false;
      }
      return true;
   }

   public boolean blindCommentAdmin(CommentVO cvo) {
	      int res = jdbcTemplate.update(SQL_UPDATE_BLIND_CONTENT_ADMIN, cvo.getcNum());
	      if (res < 1) {
	         return false;
	      }
	      return true;
	   }
   
   public boolean blindMemberComment(CommentVO cvo) {
      int res = jdbcTemplate.update(SQL_UPDATE_BLIND_CONTENT_MEMBER, cvo.getcId());
      if (res < 1) {
         return false;
      }
      return true;
   }


   public List<CommentVO> selectAll(CommentVO cvo) {
         Object[] args = { cvo.getcId(),cvo.getcBnum()};
         return jdbcTemplate.query(SQL_SELECT_ALL, args, new CommentRowMapper());
   }
   
   
   public List<CommentVO> selectAllMy(CommentVO cvo) {
         Object[] args = { cvo.getcId() };
         return jdbcTemplate.query(SQL_SELECT_ALl_MYCOMMENTLIST, args, new CommentRowMapper_MY());
	   }
   
   // 관리자신고
   public List<CommentVO> select_admin_report(CommentVO vo) {
		if(vo.getcId() != null) {
			Object[] args = {vo.getcId()};
			return jdbcTemplate.query(SQL_SELECT_ADMIN_REPORT_M, args, new CommentRowMapper_adminR());
		} else {
			return jdbcTemplate.query(SQL_SELECT_ADMIN_REPORT, new CommentRowMapper_adminR());
		}
   }

   // 관리자최신
   public List<CommentVO> select_admin_recent(CommentVO vo) {
		if(vo.getcId() != null) {
			Object[] args = {vo.getcId()};
			return jdbcTemplate.query(SQL_SELECT_ADMIN_RECENT_M, args, new CommentRowMapper_adminR());
		} else {
			return jdbcTemplate.query(SQL_SELECT_ADMIN_RECENT, new CommentRowMapper_adminR());
		}
		
   }
}
   











   //관리자신고,최신
   class CommentRowMapper_adminR implements RowMapper<CommentVO> {
      public CommentVO mapRow(ResultSet rs, int rowNum) throws SQLException {
         CommentVO data = new CommentVO();
         data.setcNum(rs.getInt("CNUM"));
         data.setcDate(rs.getDate("CDATE"));
         data.setcContent(rs.getString("CCONTENT"));
         data.setcId(rs.getString("CID"));
         data.setReportCnt(rs.getInt("REPORTCNT"));
         data.setmNickName(rs.getString("MNICKNAME"));
         data.setcBnum(rs.getInt("CBNUM"));
         data.setcBlind(rs.getInt("CBLIND"));
         return data;
      }
   }

   class CommentRowMapper_MY implements RowMapper<CommentVO> {
	      public CommentVO mapRow(ResultSet rs, int rowNum) throws SQLException {
	         CommentVO data = new CommentVO();
	         data.setcNum(rs.getInt("CNUM"));
	         data.setcGroup(rs.getInt("CGROUP"));
	         data.setcSequence(rs.getInt("CSEQUENCE"));
	         data.setcContent(rs.getString("CCONTENT"));
	         data.setcDate(rs.getDate("CDATE"));
	         data.setcId(rs.getString("CID"));
	         data.setcBnum(rs.getInt("CBNUM"));
	         data.setcBlind(rs.getInt("CBLIND"));
	         return data;
	      }
   }
   class CommentRowMapper implements RowMapper<CommentVO> {
      public CommentVO mapRow(ResultSet rs, int rowNum) throws SQLException {
         CommentVO data = new CommentVO();
         data.setcNum(rs.getInt("CNUM"));
         data.setcGroup(rs.getInt("CGROUP"));
         data.setcSequence(rs.getInt("CSEQUENCE"));
         data.setcContent(rs.getString("CCONTENT"));
         data.setcDate(rs.getDate("CDATE"));
         data.setcId(rs.getString("CID"));
         data.setcBnum(rs.getInt("CBNUM"));
         data.setcBlind(rs.getInt("CBLIND"));
         data.setmNickName(rs.getString("MNICKNAME"));
         data.setHeartCnt(rs.getInt("HEARTCNT"));
         data.setMyheart(rs.getInt("MYHEART"));
         data.setGrade(rs.getString("GRADE"));
         return data;
      }
   }
