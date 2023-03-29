package com.spring.biz.report;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("reportDAO")
public class ReportDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	// 신고
	private final String SQL_INSERT = "INSERT INTO REPORT2 (RTYPE,RID,RBNUM) VALUES (?,?,?);";
	// 신고삭제
	private final String SQL_DELETE = "DELETE FROM REPORT2 WHERE RTYPE=? AND RID=? AND RBNUM=?;";
	// 게시글 블라
	private final String SQL_DELETE_BOARD = "DELETE FROM REPORT2 WHERE RTYPE='게시글' AND RBNUM=?;";
	//회원 탈퇴시 내가받은 신고 리셋
	private final String SQL_DELETE_MEMBER = 
			"DELETE  R\r\n"
					+ "FROM REPORT2 R\r\n"
					+ "JOIN (\r\n"
					+ "   SELECT RB.RNUM\r\n"
					+ "   FROM REPORT2 R\r\n"
					+ "   JOIN (\r\n"
					+ "      SELECT *\r\n"
					+ "      FROM REPORT2 R\r\n"
					+ "      LEFT JOIN BOARD2 B \r\n"
					+ "      ON R.RTYPE='게시글' AND R.RBNUM=B.BNUM\r\n"
					+ "      WHERE BID=?\r\n"
					+ "   ) RB\r\n"
					+ "   ON R.RNUM = RB.RNUM\r\n"
					+ "   UNION\r\n"
					+ "   SELECT RC.RNUM\r\n"
					+ "   FROM REPORT2 R\r\n"
					+ "   JOIN (\r\n"
					+ "   SELECT *\r\n"
					+ "   FROM REPORT2 R\r\n"
					+ "   LEFT JOIN COMMENT2 C \r\n"
					+ "   ON R.RTYPE='댓글' AND R.RBNUM=C.CNUM \r\n"
					+ "   WHERE CID=?\r\n"
					+ "   ) RC\r\n"
					+ "   ON R.RNUM=RC.RNUM\r\n"
					+ ") R2\r\n"
					+ "ON R.RNUM=R2.RNUM";
	//내가 신고안한글에만 신고가능
	private final String SQL_SELECT_MY = "SELECT IFNULL(COUNT(*), 0) AS MYREPORT FROM REPORT2 WHERE RTYPE=? AND RBNUM=? AND RID=?;";
	//신고수 초기화
	private final String SQL_UPDATE_RESET = "UPDATE REPORT2 SET RESET = TRUE WHERE RTYPE=? AND RBNUM=?;";
	//벤햇을시 신고수 초기화
	private final String SQL_UPDATE_RESET_BEN = 
			"UPDATE REPORT2 R \r\n"
					+ "JOIN (\r\n"
					+ "   SELECT RB.RNUM\r\n"
					+ "   FROM REPORT2 R\r\n"
					+ "   JOIN (\r\n"
					+ "      SELECT *\r\n"
					+ "      FROM REPORT2 R\r\n"
					+ "      LEFT JOIN BOARD2 B \r\n"
					+ "      ON R.RTYPE='게시글' AND R.RBNUM=B.BNUM\r\n"
					+ "      WHERE BID=?\r\n"
					+ "   ) RB\r\n"
					+ "   ON R.RNUM = RB.RNUM\r\n"
					+ "   UNION\r\n"
					+ "   SELECT RC.RNUM\r\n"
					+ "   FROM REPORT2 R\r\n"
					+ "   JOIN (\r\n"
					+ "   SELECT *\r\n"
					+ "   FROM REPORT2 R\r\n"
					+ "   LEFT JOIN COMMENT2 C \r\n"
					+ "   ON R.RTYPE='댓글' AND R.RBNUM=C.CNUM \r\n"
					+ "   WHERE CID=?\r\n"
					+ "   ) RC\r\n"
					+ "   ON R.RNUM=RC.RNUM\r\n"
					+ ") R2\r\n"
					+ "ON R.RNUM = R2.RNUM\r\n"
					+ "SET R.RESET = TRUE;";
	//탈퇴했을때 내가누른 신고자명 @@@로 리셋
	private final String SQL_UPDATE_MEMBER = "UPDATE REPORT2 SET RID='@@@' WHERE RID=?;";


	public boolean insertReport(ReportVO vo) {
		jdbcTemplate.update(SQL_INSERT, vo.getRtype(), vo.getRid(), vo.getRbnum());
		return true;
	}
	public boolean updateReportMember(ReportVO vo) {
		int res=jdbcTemplate.update(SQL_UPDATE_MEMBER, vo.getRid());   
		if(res<1) {
			return false;
		}
		return true;
	}
	public boolean updateReport(ReportVO vo) {
		int res;
		if(vo.getRtype()==null) {
			res=jdbcTemplate.update(SQL_UPDATE_RESET_BEN, vo.getRid());   
		} else {
			res=jdbcTemplate.update(SQL_UPDATE_RESET, vo.getRtype(), vo.getRbnum());
		}
		if(res<1) {
			return false;
		}
		return true;
	}

	public boolean deleteReport(ReportVO vo) {
		int res;
		if(vo.getRid() == null) {
			res=jdbcTemplate.update(SQL_DELETE, vo.getRtype(), vo.getRid(), vo.getRbnum());
		} else {
			res=jdbcTemplate.update(SQL_DELETE_BOARD, vo.getRbnum());
		}
		if(res<1) {
			return false;
		}
		return true;
	}

	public boolean deleteReportMember(ReportVO vo) {
		int res=jdbcTemplate.update(SQL_DELETE_MEMBER, vo.getRid(), vo.getRid());
		if(res<1) {
			return false;
		}
		return true;
	}

	public ReportVO selectMy(ReportVO vo) {
		try {
			Object[] args = {vo.getRtype(), vo.getRbnum(), vo.getRid()};
			return jdbcTemplate.queryForObject(SQL_SELECT_MY, args, new ReportRowMapper());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}

class ReportRowMapper implements RowMapper<ReportVO> {
	public ReportVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ReportVO data = new ReportVO();
		data.setMyReport(rs.getInt("MYREPORT"));
		return data;
	}
}