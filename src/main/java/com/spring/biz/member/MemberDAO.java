package com.spring.biz.member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository("memberDAO")
public class MemberDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	// 회원가입
	private final String SQL_INSERT = "INSERT INTO MEMBER2 (ID, PW, MNAME, MNICKNAME, MEMAIL, MAUTHKEY) VALUES (?, ?, ?, ?, ?, ?);";
	// 아이디 중복확인
	private final String SQL_CHECK_ID = "SELECT * FROM MEMBER2 WHERE ID=?;";
	// 닉네임 중복확인
	private final String SQL_CHECK_NICKNAME = "SELECT * FROM MEMBER2 WHERE BINARY MNICKNAME=?;";
	// 이메일 중복확인
	private final String SQL_CHECK_EMAIL = "SELECT * FROM MEMBER2 WHERE MEMAIL=?;";
	// 아이디찾기
	private final String SQL_SELECTONE_ID = "SELECT * FROM MEMBER2 WHERE MEMAIL=?;";
	// 비밀번호찾기
	private final String SQL_SELECTONE_PW = "SELECT * FROM MEMBER2 WHERE MEMAIL=? AND ID=?;";
	// 로그인
	private final String SQL_SELECTONE_LOGIN = 
			"SELECT * , DATEDIFF(NOW(), MJOINDATE) AS PWFLAG, DATEDIFF(MSTOPDATE,NOW()) AS BENFLAG\r\n"
					+ "FROM (\r\n"
					+ "SELECT M.*, IFNULL(HEARTCNT, 0) AS HEARTCNT\r\n"
					+ "FROM MEMBER2 M\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT IFNULL(BID, CID) AS USERID\r\n"
					+ "      , COUNT(*) AS HEARTCNT\r\n"
					+ "   FROM HEART2 H\r\n"
					+ "   LEFT JOIN BOARD2 B\r\n"
					+ "   ON H.HTYPE='게시글' AND H.HBNUM=B.BNUM \r\n"
					+ "   LEFT JOIN COMMENT2 C \r\n"
					+ "   ON H.HTYPE='댓글' AND H.HBNUM=C.CNUM\r\n"
					+ "   GROUP BY USERID\r\n"
					+ ") HEART\r\n"
					+ "ON M.ID = HEART.USERID\r\n"
					+ ") MBH\r\n"
					+ "JOIN GRADE2 G\r\n"
					+ "ON MBH.HEARTCNT BETWEEN G.GMIN AND G.GMAX\r\n"
					+ "WHERE BINARY ID=? AND BINARY PW=?";

	// 회원목록(등급순)
	private final String SQL_SELECTALL_GRADE = 
			"SELECT ID\r\n"
					+ "    , MNICKNAME\r\n"
					+ "    , IFNULL(GRADE, 'level1.png') AS GRADE\r\n"
					+ "    , IFNULL(HEARTCNT, 0) AS HEARTCNT\r\n"
					+ "FROM MEMBER2 M\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT IFNULL(BID, CID) AS USERID\r\n"
					+ "      , COUNT(*) AS HEARTCNT\r\n"
					+ "   FROM HEART2 H\r\n"
					+ "   LEFT JOIN BOARD2 B\r\n"
					+ "   ON H.HTYPE='게시글' AND H.HBNUM=B.BNUM \r\n"
					+ "   LEFT JOIN COMMENT2 C \r\n"
					+ "   ON H.HTYPE='댓글' AND H.HBNUM=C.CNUM\r\n"
					+ "   GROUP BY USERID\r\n"
					+ ") HEART\r\n"
					+ "ON M.ID = HEART.USERID\r\n"
					+ "LEFT JOIN GRADE2 G \r\n"
					+ "ON HEART.HEARTCNT BETWEEN G.GMIN AND G.GMAX\r\n"
					+ "WHERE ID != 'ADMIN'\r\n"
					+ "ORDER BY HEART.HEARTCNT DESC\r\n"
					+ "LIMIT 5;";

	// 정보변경
	private final String SQL_UPDATE_ALL = "UPDATE MEMBER2 SET PW=?,MNICKNAME=? WHERE ID=?;";
	// 회원정지
	private final String SQL_UPDATE_STOPDATE = "UPDATE MEMBER2 SET MSTOPDATE=DATE_ADD(NOW(), INTERVAL ? DAY), BENDATE=BENDATE+? ,BENCNT=BENCNT+1 WHERE ID=?;";
	//이메일 인증
	private final String SQL_UPDATE_CHK="UPDATE MEMBER2 SET MAUTHKEY=? WHERE ID=?";
	//이메일 인증
	private final String SQL_UPDATE_FIND_ID="UPDATE MEMBER2 SET MEMAILCHK=? WHERE MEMAIL=?";
	//이메일 인증
	private final String SQL_UPDATE_FLAG="UPDATE MEMBER2 SET MFLAG='1' WHERE MEMAIL=? AND MAUTHKEY=? ";
	// 회원탈퇴
	private final String SQL_DELETE = "DELETE FROM MEMBER2 WHERE ID=?;";
	// 총회원수
	private final String SQL_SELECT_CNT = "SELECT COUNT(*) AS MEMBERCNT FROM MEMBER2";
	//조인데이트 초기화
	private final String SQL_UPDATE_MJOINDATE = "UPDATE MEMBER2 SET MJOINDATE=NOW() WHERE ID=?;";
	// 관리자등급
	private final String SQL_SELECT_ADMIN_GRADE = 
			"SELECT GRADE, COUNT(*) AS MEMBERCNT\r\n"
					+ "FROM (\r\n"
					+ "SELECT IFNULL(GRADE, 'level1.png') AS GRADE\r\n"
					+ "FROM MEMBER2 M\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT IFNULL(BID, CID) AS USERID\r\n"
					+ "      , COUNT(*) AS HEARTCNT\r\n"
					+ "   FROM HEART2 H\r\n"
					+ "   LEFT JOIN BOARD2 B\r\n"
					+ "   ON H.HTYPE='게시글' AND H.HBNUM=B.BNUM \r\n"
					+ "   LEFT JOIN COMMENT2 C \r\n"
					+ "   ON H.HTYPE='댓글' AND H.HBNUM=C.CNUM\r\n"
					+ "   GROUP BY USERID\r\n"
					+ ") HEART\r\n"
					+ "ON M.ID = HEART.USERID\r\n"
					+ "LEFT JOIN GRADE2 G \r\n"
					+ "ON HEART.HEARTCNT BETWEEN G.GMIN AND G.GMAX\r\n"
					+ "WHERE ID!='admin'\r\n"
					+ ") A\r\n"
					+ "GROUP BY GRADE\r\n"
					+ "ORDER BY GRADE;";
	private final String SQL_SELECT_ADMIN_REPORT = 
			"SELECT *\r\n"
					+ "FROM (\r\n"
					+ "      SELECT M.*, IFNULL(BID.REPORTCNT, 0) AS REPORTCNT, IF(NOW()-MSTOPDATE<0, 1, 0) AS BENFLAG\r\n"
					+ "      FROM (\r\n"
					+ "         SELECT IFNULL(RB.BID, CB.BID) AS MEMBERID, COUNT(*)-SUM(RESET) AS REPORTCNT\r\n"
					+ "         FROM (\r\n"
					+ "            SELECT *\r\n"
					+ "            FROM REPORT2 R\r\n"
					+ "            LEFT JOIN BOARD2 B \r\n"
					+ "            ON R.RBNUM=B.BNUM AND R.RTYPE='게시글'\r\n"
					+ "         ) RB\r\n"
					+ "         LEFT JOIN (\r\n"
					+ "            SELECT B.BID, C.CNUM\r\n"
					+ "            FROM COMMENT2 C\r\n"
					+ "            JOIN BOARD2 B\r\n"
					+ "            ON C.CBNUM=B.BNUM\r\n"
					+ "         ) CB \r\n"
					+ "         ON RB.RBNUM=CB.CNUM AND RB.RTYPE='댓글'\r\n"
					+ "         GROUP BY MEMBERID\r\n"
					+ "      ) BID\r\n"
					+ "      RIGHT JOIN MEMBER2 M \r\n"
					+ "      ON BID.MEMBERID=M.ID\r\n"
					+ "      WHERE ID !='admin' \r\n"
					+ "      ORDER BY REPORTCNT\r\n"
					+ "    ) REPORTT  \r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT ID\r\n"
					+ "    , MNICKNAME\r\n"
					+ "    , IFNULL(GRADE, 'level1.png') AS GRADE\r\n"
					+ "FROM MEMBER2 M\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT IFNULL(BID, CID) AS USERID\r\n"
					+ "      , COUNT(*) AS HEARTCNT\r\n"
					+ "   FROM HEART2 H\r\n"
					+ "   LEFT JOIN BOARD2 B\r\n"
					+ "   ON H.HTYPE='게시글' AND H.HBNUM=B.BNUM \r\n"
					+ "   LEFT JOIN COMMENT2 C \r\n"
					+ "   ON H.HTYPE='댓글' AND H.HBNUM=C.CNUM\r\n"
					+ "   GROUP BY USERID\r\n"
					+ ") HEART\r\n"
					+ "ON M.ID = HEART.USERID\r\n"
					+ "LEFT JOIN GRADE2 G \r\n"
					+ "ON HEART.HEARTCNT BETWEEN G.GMIN AND G.GMAX\r\n"
					+ ") G\r\n"
					+ "ON REPORTT.ID = G.ID\r\n"
					+ "ORDER BY REPORTCNT DESC;";

	public boolean insertMember(MemberVO vo) {
		jdbcTemplate.update(SQL_INSERT, vo.getId(), vo.getPw(), vo.getmName(), vo.getmNickname(), vo.getmEmail(),vo.getmAuthkey());
		return true;
	}
	public boolean updateMember_mjoindate(MemberVO vo) {
		int res=jdbcTemplate.update(SQL_UPDATE_MJOINDATE, vo.getId());
		if(res<1) {
			return false;
		}
		return true;
	}
	public boolean updateMember(MemberVO vo) {
		int res;
		if(vo.getBenDate() == 0) {
			res=jdbcTemplate.update(SQL_UPDATE_ALL, vo.getPw(), vo.getmNickname(), vo.getId());

		} else {
			res=jdbcTemplate.update(SQL_UPDATE_STOPDATE, vo.getBenDate(), vo.getBenDate(), vo.getId());
		}
		if(res<1) {
			return false;
		}
		return true;
	}
	//이메일 인증 링크 클릭시 플레그1 업뎃
	public boolean updateAuthStatus(MemberVO vo) {
		int res;		
		res=jdbcTemplate.update(SQL_UPDATE_FLAG,vo.getmEmail(),vo.getmAuthkey());
		if(res<1) {
			return false;
		}
		return true;
	}
	//인증키 발송 후 업뎃
	public boolean updateKey(MemberVO vo) {
		jdbcTemplate.update(SQL_UPDATE_FIND_ID,vo.getmEmailChk(),vo.getmEmail());
		return true;
	}

	public List<MemberVO> select_admin_report(MemberVO vo) {
		return jdbcTemplate.query(SQL_SELECT_ADMIN_REPORT, new MemberRowMapper_adminR());
	}

	public MemberVO selectOneMember(MemberVO vo) {
		try {
			MemberVO mvo = new MemberVO();
			if(vo.getPw()!=null) {
				Object[] args= {vo.getId(), vo.getPw()};
				mvo = jdbcTemplate.queryForObject(SQL_SELECTONE_LOGIN, args, new MemberRowMapper_login());
			} else if(vo.getId()!=null) {
				Object[] args= {vo.getmEmail(), vo.getId()};
				mvo = jdbcTemplate.queryForObject(SQL_SELECTONE_PW, args, new MemberRowMapper());
			} else {
				Object[] args= {vo.getmEmail()};
				mvo = jdbcTemplate.queryForObject(SQL_SELECTONE_ID, args, new MemberRowMapper_email());
			}
			return mvo;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public MemberVO checkNickName(MemberVO vo) {
		try {
			Object[] args = {vo.getmNickname()};
			MemberVO mvo = jdbcTemplate.queryForObject(SQL_CHECK_NICKNAME, args, new MemberRowMapper());
			return mvo;
		} catch(Exception e) {
			//e.printStackTrace();
			return null;
		}

	}
	public MemberVO checkId(MemberVO vo) {
		try {
			Object[] args = {vo.getId()};
			MemberVO mvo = jdbcTemplate.queryForObject(SQL_CHECK_ID, args, new MemberRowMapper());
			return mvo;
		} catch(Exception e) {
			//e.printStackTrace();
			return null;
		}
	}
	public MemberVO checkEmail(MemberVO vo) {
		try {
			Object[] args = {vo.getmEmail()};
			MemberVO mvo = jdbcTemplate.queryForObject(SQL_CHECK_EMAIL, args, new MemberRowMapper());
			return mvo;
		} catch(Exception e) {
			//e.printStackTrace();
			return null;
		}
	}

	public List<MemberVO> selectAll_GRADE(MemberVO vo) {
		try {
			return jdbcTemplate.query(SQL_SELECTALL_GRADE, new MemberRowMapper_grade());
		} catch(Exception e) {
			//e.printStackTrace();
			return null;
		}
	}
	public boolean deleteMember(MemberVO vo) {
		int res=jdbcTemplate.update(SQL_DELETE, vo.getId());
		if(res<1) {
			return false;
		}
		return true;
	}

	public MemberVO selectMemberCnt(MemberVO vo) {
		try {
			return jdbcTemplate.queryForObject(SQL_SELECT_CNT, new MemberRowMapper_cnt());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<MemberVO> select_admin_grade(MemberVO vo) {
		return jdbcTemplate.query(SQL_SELECT_ADMIN_GRADE, new MemberRowMapper_adminG());
	}
}

// 개수
class MemberRowMapper_cnt implements RowMapper<MemberVO> {
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data = new MemberVO();
		data.setMemberCnt(rs.getInt("MEMBERCNT"));
		return data;
	}
}
//관리자 신고순
class MemberRowMapper_adminR implements RowMapper<MemberVO> {
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data = new MemberVO();
		data.setId(rs.getString("ID"));
		data.setPw(rs.getString("PW"));
		data.setmName(rs.getString("MNAME"));
		data.setmNickname(rs.getString("MNICKNAME"));
		data.setmJoinDate(rs.getDate("MJOINDATE"));
		data.setmStopDate(rs.getDate("MSTOPDATE"));
		data.setGrade(rs.getString("GRADE"));
		data.setReportCnt(rs.getInt("REPORTCNT"));
		data.setBenCnt(rs.getInt("BENCNT"));
		data.setBenDate(rs.getInt("BENDATE"));
		data.setBenFlag(rs.getInt("BENFLAG"));
		return data;
	}
}

// 등급순 회원목록
class MemberRowMapper_grade implements RowMapper<MemberVO> {
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data=new MemberVO();
		data.setId(rs.getString("ID"));
		data.setmNickname(rs.getString("MNICKNAME"));
		data.setGrade(rs.getString("GRADE"));
		data.setHeartCnt(rs.getInt("HEARTCNT"));
		return data;
	}
}

// 로그인
class MemberRowMapper_login implements RowMapper<MemberVO> {
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data=new MemberVO();
		data.setId(rs.getString("ID"));
		data.setPw(rs.getString("PW"));
		data.setmName(rs.getString("MNAME"));
		data.setmNickname(rs.getString("MNICKNAME"));
		data.setmEmail(rs.getString("MEMAIL"));
		data.setmEmailChk(rs.getString("MEMAILCHK"));
		data.setmJoinDate(rs.getDate("MJOINDATE"));
		data.setmStopDate(rs.getDate("MSTOPDATE"));
		data.setGrade(rs.getString("GRADE"));
		data.setHeartCnt(rs.getInt("HEARTCNT"));
		data.setmFlag(rs.getInt("MFLAG"));
		data.setBenFlag(rs.getInt("BENFLAG"));
		data.setPwFlag(rs.getInt("PWFLAG"));
		return data;
	}
}

// 닉네임중복확인, 아이디중복확인, 아이디찾기, 비밀번호찾기
class MemberRowMapper implements RowMapper<MemberVO> {
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data=new MemberVO();
		data.setId(rs.getString("ID"));
		data.setPw(rs.getString("PW"));
		data.setmName(rs.getString("MNAME"));
		data.setmNickname(rs.getString("MNICKNAME"));
		data.setmEmail(rs.getString("MEMAIL"));
		data.setmEmailChk(rs.getString("MEMAILCHK"));
		data.setmJoinDate(rs.getDate("MJOINDATE"));
		data.setmStopDate(rs.getDate("MSTOPDATE"));
		return data;
	}
}

// 신고순 회원목록
class MemberRowMapper_report implements RowMapper<MemberVO> {
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data=new MemberVO();
		data.setId(rs.getString("ID"));
		data.setPw(rs.getString("PW"));
		data.setmName(rs.getString("MNAME"));
		data.setmNickname(rs.getString("MNICKNAME"));
		data.setmEmail(rs.getString("MEMAIL"));
		data.setmEmailChk(rs.getString("MEMAILCHK"));
		data.setmJoinDate(rs.getDate("MJOINDATE"));
		data.setmStopDate(rs.getDate("MSTOPDATE"));
		data.setGrade(rs.getString("GRADE"));
		data.setHeartCnt(rs.getInt("HEARTCNT"));
		return data;
	}
}

class MemberRowMapper_email implements RowMapper<MemberVO> {
	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		System.out.println();
		MemberVO data=new MemberVO();
		data.setId(rs.getString("ID"));
		data.setPw(rs.getString("PW"));
		data.setmName(rs.getString("MNAME"));
		data.setmNickname(rs.getString("MNICKNAME"));
		data.setmEmail(rs.getString("MEMAIL"));
		data.setmEmailChk(rs.getString("MEMAILCHK"));
		data.setmJoinDate(rs.getDate("MJOINDATE"));
		data.setmStopDate(rs.getDate("MSTOPDATE"));
		data.setmFlag(rs.getInt("MFLAG"));
		return data;
	}
}

//관리자카테
class MemberRowMapper_adminG implements RowMapper<MemberVO> {
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO data = new MemberVO();
		data.setGrade(rs.getString("GRADE"));
		data.setMemberCnt(rs.getInt("MEMBERCNT"));
		return data;
	}
}