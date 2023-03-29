package com.spring.biz.heart;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("heartDAO")
public class HeartDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private final String SQL_INSERT = "INSERT INTO HEART2 (HTYPE,HID,HBNUM) VALUES (?,?,?);";
	private final String SQL_DELETE = "DELETE FROM HEART2 WHERE HTYPE=? AND HID=? AND HBNUM=?;";
	private final String SQL_DELETE_BOARD = "DELETE FROM HEART2 WHERE HTYPE='게시글' AND HBNUM=?;";
	private final String SQL_DELETE_MEMBER = 
			"DELETE  H\r\n"
					+ "FROM HEART2 H\r\n"
					+ "JOIN (\r\n"
					+ "   SELECT HB.HNUM\r\n"
					+ "   FROM HEART2 H\r\n"
					+ "   JOIN (\r\n"
					+ "      SELECT *\r\n"
					+ "      FROM HEART2 H\r\n"
					+ "      LEFT JOIN BOARD2 B \r\n"
					+ "      ON H.HTYPE='게시글' AND H.HBNUM=B.BNUM\r\n"
					+ "      WHERE BID=?\r\n"
					+ "   ) HB\r\n"
					+ "   ON H.HNUM = HB.HNUM\r\n"
					+ "   UNION\r\n"
					+ "   SELECT HC.HNUM\r\n"
					+ "   FROM HEART2 H\r\n"
					+ "   JOIN (\r\n"
					+ "   SELECT *\r\n"
					+ "   FROM HEART2 H\r\n"
					+ "   LEFT JOIN COMMENT2 C \r\n"
					+ "   ON H.HTYPE='댓글' AND H.HBNUM=C.CNUM \r\n"
					+ "   WHERE CID=?\r\n"
					+ "   ) HC\r\n"
					+ "   ON H.HNUM=HC.HNUM\r\n"
					+ ") H2\r\n"
					+ "ON H.HNUM=H2.HNUM";
	private final String SQL_SELECT_HEARTCNT = "SELECT COUNT(*) AS HEARTCNT FROM HEART2 WHERE HTYPE=? AND HBNUM=?";
	private final String SQL_UPDATE_MEMBER = "UPDATE HEART2 SET HID='@@@' WHERE HID=?;";

	public boolean insertHeart(HeartVO vo) {
		jdbcTemplate.update(SQL_INSERT, vo.getHtype(), vo.getHid(), vo.getHbnum());
		return true;
	}

	public boolean deleteHeart(HeartVO vo) {
		int res;
		if(vo.getHid() != null) {
			res=jdbcTemplate.update(SQL_DELETE, vo.getHtype(), vo.getHid(), vo.getHbnum());
		} else {
			res=jdbcTemplate.update(SQL_DELETE_BOARD, vo.getHbnum());
		}
		if(res<1) {
			return false;
		}
		return true;
	}

	public boolean deleteHeartMember(HeartVO vo) {
		int res=jdbcTemplate.update(SQL_DELETE_MEMBER, vo.getHid(), vo.getHid());
		if(res<1) {
			return false;
		}
		return true;
	}
	public boolean updateHeartMember(HeartVO vo) {
		int res=jdbcTemplate.update(SQL_UPDATE_MEMBER, vo.getHid());   
		if(res<1) {
			return false;
		}
		return true;
	}

	public HeartVO selectHeartCnt(HeartVO vo){
		Object[] args = {vo.getHtype(), vo.getHbnum()};
		try {
			return jdbcTemplate.queryForObject(SQL_SELECT_HEARTCNT, args, new HeartRowMapper());
		} catch(Exception e) {
			return null;
		}
	}
}




class HeartRowMapper implements RowMapper<HeartVO> {
	public HeartVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		HeartVO data = new HeartVO();
		data.setHeartCnt(rs.getInt("HEARTCNT"));
		return data;
	}
}