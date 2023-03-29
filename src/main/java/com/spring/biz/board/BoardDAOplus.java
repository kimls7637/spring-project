package com.spring.biz.board;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("boardDAOplus")
public class BoardDAOplus {

	// 게시글 상세보기
	private final String SQL_SELECTONE = 
			"SELECT *\n"
					+ "FROM (\n"
					+ "   SELECT *, COUNT(HNUM) AS HEARTCNT, SUM(HEART) AS MYHEART \n"
					+ "   FROM (\n"
					+ "         SELECT *, IF(H.HID=?, 1, 0) AS HEART\n"
					+ "       FROM (\n"
					+ "            SELECT *\n"
					+ "           FROM(\n"
					+ "               SELECT * \n"
					+ "               FROM BOARD2 \n"
					+ "               WHERE BNUM=?\n"
					+ "            ) B\n"
					+ "           JOIN MEMBER2 M \n"
					+ "            ON B.BID = M.ID\n"
					+ "         ) BM\n"
					+ "         LEFT JOIN HEART2 H \n"
					+ "         ON BM.BNUM = H.HBNUM AND H.HTYPE='게시글'\n"
					+ "   ) A \n"
					+ "   GROUP BY BNUM\n"
					+ ") HBM\n"
					+ "  LEFT JOIN (\n"
					+ "SELECT ID\r\n"
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
					+ ") G\n"
					+ "ON HBM.BID = G.ID;";
	// 카테고리 최신순
	private final String SQL_SELECTALL_CATE_RECENT = 
			"SELECT *\n"
					+ "FROM (\n"
					+ "   SELECT *, COUNT(C.CNUM) AS COMMENTCNT\n"
					+ "   FROM (\n"
					+ "      SELECT B.*, M.*, COUNT(*) AS HEARTCNT \n"
					+ "      FROM BOARD2 B \n"
					+ "      JOIN MEMBER2 M \n"
					+ "      ON B.BID=M.ID \n"
					+ "      LEFT JOIN HEART2 H \n"
					+ "      ON B.BNUM=H.HBNUM \n"
					+ "      GROUP BY B.BNUM\n"
					+ "      HAVING BCATE=?\n"
					+ "   ) A\n"
					+ "   LEFT JOIN COMMENT2 C \n"
					+ "   ON A.BNUM=C.CBNUM\n"
					+ "   GROUP BY A.BNUM\n"
					+ "   ORDER BY BDATE DESC\n"
					+ ") CATE\n"
					+ "LEFT JOIN (\n"
					+ "SELECT ID\r\n"
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
					+ ") G\n"
					+ "ON CATE.BID = G.ID\n"
					+ "WHERE BLIND=FALSE;";
	// 카테고리 조회순
	private final String SQL_SELECTALL_CATE_HITS = 
			"SELECT *\n"
					+ "FROM (\n"
					+ "   SELECT *, COUNT(C.CNUM) AS COMMENTCNT\n"
					+ "   FROM (\n"
					+ "      SELECT B.*, M.*, COUNT(*) AS HEARTCNT \n"
					+ "      FROM BOARD2 B \n"
					+ "      JOIN MEMBER2 M \n"
					+ "      ON B.BID=M.ID \n"
					+ "      LEFT JOIN HEART2 H \n"
					+ "      ON B.BNUM=H.HBNUM \n"
					+ "      GROUP BY B.BNUM\n"
					+ "      HAVING BCATE=?\n"
					+ "   ) A\n"
					+ "   LEFT JOIN COMMENT2 C \n"
					+ "   ON A.BNUM=C.CBNUM\n"
					+ "   GROUP BY A.BNUM\n"
					+ "   ORDER BY BHITS DESC\n"
					+ ") CATE\n"
					+ "LEFT JOIN (\n"
					+ "SELECT ID\r\n"
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
					+ ") G\n"
					+ "ON CATE.BID = G.ID\n"
					+ "WHERE BLIND=FALSE;";
	// 메인 좋아요순 목록
	private final String SQL_SELECTALL_MAIN_HEARTCNT = "SELECT *, COUNT(HNUM) AS HCNT \r\n"
			+ "FROM BOARD2 B \r\n"
			+ "LEFT JOIN HEART2 H \r\n"
			+ "ON B.BNUM = H.HBNUM AND H.HTYPE='게시글'\r\n"
			+ "GROUP BY B.BNUM \r\n"
			+ "having blind = false\r\n"
			+ "ORDER BY HCNT DESC \r\n"
			+ "LIMIT 15;";
	// 메인 최신순 목록
	private final String SQL_SELECTALL_MAIN_RECENT = "SELECT * FROM BOARD2 WHERE BLIND = FALSE ORDER BY BDATE DESC LIMIT 15;";
	// 태그 검색 목록
	private final String SQL_SELECTALL_TAG = 
			"   SELECT *\n"
					+ "FROM(\n"
					+ "      SELECT TBMC.*, COUNT(HNUM) AS HEARTCNT\n"
					+ "      FROM (\n"
					+ "         SELECT TB.*, M.*, COUNT(CNUM) AS COMENTCNT\n"
					+ "         FROM (\n"
					+ "               SELECT *\n"
					+ "               FROM TAG2 T\n"
					+ "               JOIN BOARD2 B \n"
					+ "               ON T.TBNUM = B.BNUM\n"
					+ "               WHERE TCONTENT =?\n"
					+ "         ) TB\n"
					+ "         JOIN MEMBER2 M\n"
					+ "         ON TB.BID = M.ID\n"
					+ "         LEFT JOIN COMMENT2 C\n"
					+ "         ON TB.BNUM = C.CBNUM\n"
					+ "         GROUP BY BNUM\n"
					+ "      ) TBMC\n"
					+ "      LEFT JOIN HEART2 H\n"
					+ "      ON TBMC.BNUM = H.HBNUM\n"
					+ "      GROUP BY BNUM\n"
					+ ")TAGT\n"
					+ "LEFT JOIN (\n"
					+ "SELECT ID\r\n"
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
					+ ") G\n"
					+ "ON TAGT.BID = G.ID\n"
					+ "WHERE BLIND=FALSE;";
	// 나의 게시글 목록
	private final String SQL_SELECTALL_MY = "SELECT * FROM BOARD2 WHERE BID=? AND BLIND=FALSE ORDER BY BDATE DESC";
	// 총 게시글 수
	private final String SQL_SELECT_CNT = "SELECT COUNT(*) AS BOARDCNT FROM BOARD2;";
	// 태그 tbnum을 등록하기 위한 마지막 게시번호 셀렉원
	private final String SQL_SELECT_TAG="SELECT * FROM BOARD2 ORDER BY BNUM DESC LIMIT 1;";
	//관리자 카테고리별 게시글수
	private final String SQL_SELECT_ADMIN_CATE = "SELECT COUNT(*) AS BOARDCNT, BCATE FROM BOARD2 GROUP BY BCATE ORDER BY BCATE DESC;";
	// 관리자신고
	private final String SQL_SELECT_ADMIN_REPORT = 
			"SELECT REPORTT.*, M.MNICKNAME \r\n"
					+ "FROM (\r\n"
					+ "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT\r\n"
					+ "FROM BOARD2 B\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT *, COUNT(*) AS RC\r\n"
					+ "   FROM REPORT2 \r\n"
					+ "   WHERE RTYPE='게시글' AND RESET=FALSE\r\n"
					+ "   GROUP BY RBNUM\r\n"
					+ ") R \r\n"
					+ "ON B.BNUM = R.RBNUM\r\n"
					+ "WHERE BID !='admin'\r\n"
					+ ") REPORTT\r\n"
					+ "JOIN MEMBER2 M\r\n"
					+ "ON REPORTT.BID = M.ID\r\n"
					+ "ORDER BY REPORTCNT DESC";
	// 관리자최신
	private final String SQL_SELECT_ADMIN_RECENT = 
			"SELECT REPORTT.*, M.MNICKNAME \r\n"
					+ "FROM (\r\n"
					+ "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT\r\n"
					+ "FROM BOARD2 B\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT *, COUNT(*) AS RC\r\n"
					+ "   FROM REPORT2 \r\n"
					+ "   WHERE RTYPE='게시글' AND RESET=FALSE\r\n"
					+ "   GROUP BY RBNUM\r\n"
					+ ") R \r\n"
					+ "ON B.BNUM = R.RBNUM\r\n"
					+ "WHERE BID !='admin'\r\n"
					+ ") REPORTT\r\n"
					+ "JOIN MEMBER2 M\r\n"
					+ "ON REPORTT.BID = M.ID\r\n"
					+ "ORDER BY BDATE DESC";
	// 관리자신고
	private final String SQL_SELECT_ADMIN_REPORT_M = 
			"SELECT REPORTT.*, M.MNICKNAME \r\n"
					+ "FROM (\r\n"
					+ "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT\r\n"
					+ "FROM BOARD2 B\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT *, COUNT(*) AS RC\r\n"
					+ "   FROM REPORT2 \r\n"
					+ "   WHERE RTYPE='게시글' AND RESET=FALSE\r\n"
					+ "   GROUP BY RBNUM\r\n"
					+ ") R \r\n"
					+ "ON B.BNUM = R.RBNUM\r\n"
					+ "WHERE BID !='admin'\r\n"
					+ ") REPORTT\r\n"
					+ "JOIN MEMBER2 M\r\n"
					+ "ON REPORTT.BID = M.ID\r\n"
					+ "where bid=?\r\n"
					+ "ORDER BY REPORTCNT DESC";
	// 관리자최신
	private final String SQL_SELECT_ADMIN_RECENT_M = 
			"SELECT REPORTT.*, M.MNICKNAME \r\n"
					+ "FROM (\r\n"
					+ "SELECT *, IFNULL(R.RC, 0) AS REPORTCNT\r\n"
					+ "FROM BOARD2 B\r\n"
					+ "LEFT JOIN (\r\n"
					+ "   SELECT *, COUNT(*) AS RC\r\n"
					+ "   FROM REPORT2 \r\n"
					+ "   WHERE RTYPE='게시글' AND RESET=FALSE\r\n"
					+ "   GROUP BY RBNUM\r\n"
					+ ") R \r\n"
					+ "ON B.BNUM = R.RBNUM\r\n"
					+ "WHERE BID !='admin'\r\n"
					+ ") REPORTT\r\n"
					+ "JOIN MEMBER2 M\r\n"
					+ "ON REPORTT.BID = M.ID\r\n"
					+ "where bid=?\r\n"
					+ "ORDER BY BDATE DESC";
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public BoardVO selectOneBoard(BoardVO vo) {
		try {
			Object[] args= {vo.getmId(), vo.getbNum()};
			BoardVO bvo = jdbcTemplate.queryForObject(SQL_SELECTONE, args, new BoardRowMapper_detail());
			return bvo;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<BoardVO> selectAll_cate_recent(BoardVO vo){
		try {
			Object[] args= {vo.getbCate()};
			return jdbcTemplate.query(SQL_SELECTALL_CATE_RECENT, args,new BoardRowMapper_cate());
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<BoardVO> selectAll_cate_hits(BoardVO vo){
		try {
			Object[] args= {vo.getbCate()};
			return jdbcTemplate.query(SQL_SELECTALL_CATE_HITS, args,new BoardRowMapper_cate());
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<BoardVO> selectAll_main_recent(BoardVO vo){
		try {
			return jdbcTemplate.query(SQL_SELECTALL_MAIN_RECENT, new BoardRowMapper_recent());
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<BoardVO> selectAll_main_heartCnt(BoardVO vo){
		try {
			return jdbcTemplate.query(SQL_SELECTALL_MAIN_HEARTCNT, new BoardRowMapper_heart());
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<BoardVO> selectAll(BoardVO vo) {
		try {
			if(vo.getTag() != null) {
				Object[] args = {vo.getTag()};
				return jdbcTemplate.query(SQL_SELECTALL_TAG, args, new BoardRowMapper_tag());
			} else {
				Object[] args = {vo.getbId()};
				return jdbcTemplate.query(SQL_SELECTALL_MY, args, new BoardRowMapper_recent());
			}
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	// 관리자카테
	public List<BoardVO> select_admin_cate(BoardVO vo) {
		return jdbcTemplate.query(SQL_SELECT_ADMIN_CATE, new BoardRowMapper_adminC());
	}

	public BoardVO selectBoardCnt(BoardVO vo) {
		try {
			return jdbcTemplate.queryForObject(SQL_SELECT_CNT, new BoardRowMapper_cnt());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	//마지막 게시글번호 취득용
	public BoardVO selectTag(BoardVO vo) {
		return jdbcTemplate.queryForObject(SQL_SELECT_TAG, new BoardRowMapperAll());
	}
	// 관리자신고
	public List<BoardVO> select_admin_report(BoardVO vo) {
		if(vo.getbId() != null) {
			Object[] args = {vo.getbId()};
			return jdbcTemplate.query(SQL_SELECT_ADMIN_REPORT_M, args, new BoardRowMapper_adminR());
		} else {
			return jdbcTemplate.query(SQL_SELECT_ADMIN_REPORT, new BoardRowMapper_adminR());
		}
	}

	// 관리자신고 최신
	public List<BoardVO> select_admin_recent(BoardVO vo) {
		if(vo.getbId() != null) {
			Object[] args = {vo.getbId()};
			return jdbcTemplate.query(SQL_SELECT_ADMIN_RECENT_M, args, new BoardRowMapper_adminR());
		} else {
			return jdbcTemplate.query(SQL_SELECT_ADMIN_RECENT, new BoardRowMapper_adminR());
		}
	}

}
// 개수
class BoardRowMapper_cnt implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setBoardCnt(rs.getInt("BOARDCNT"));
		return data;
	}
}

// 상세보기
class BoardRowMapper_detail implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbNum(rs.getInt("BNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setbContent(rs.getString("BCONTENT"));
		data.setbCate(rs.getString("BCATE"));
		data.setbDate(rs.getDate("BDATE"));
		data.setbHits(rs.getInt("BHITS"));
		data.setbId(rs.getString("BID"));
		data.setGrade(rs.getString("GRADE"));
		data.setmNickName(rs.getString("MNICKNAME"));
		data.setHeartCnt(rs.getInt("HEARTCNT"));
		data.setMyheart(rs.getInt("MYHEART"));
		data.setBlind(rs.getInt("BLIND"));
		return data;
	}
}

//관리자신고,최신
class BoardRowMapper_adminR implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbNum(rs.getInt("BNUM"));
		data.setReportCnt(rs.getInt("REPORTCNT"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setbDate(rs.getDate("BDATE"));
		data.setbId(rs.getString("BID"));
		data.setmNickName(rs.getString("MNICKNAME"));
		data.setBlind(rs.getInt("BLIND"));
		return data;
	}
}

// 카테고리 최신순, 조회순
class BoardRowMapper_cate implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbNum(rs.getInt("BNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setbContent(rs.getString("BCONTENT"));
		data.setbCate(rs.getString("BCATE"));
		data.setbDate(rs.getDate("BDATE"));
		data.setbHits(rs.getInt("BHITS"));
		data.setbId(rs.getString("BID"));
		data.setGrade(rs.getString("GRADE"));
		data.setmNickName(rs.getString("MNICKNAME"));
		data.setCommentCnt(rs.getInt("COMMENTCNT"));
		data.setHeartCnt(rs.getInt("HEARTCNT"));
		return data;
	}
}

// 메인최신순, 나의게시글
class BoardRowMapper_recent implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbNum(rs.getInt("BNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setbContent(rs.getString("BCONTENT"));
		data.setbCate(rs.getString("BCATE"));
		data.setbDate(rs.getDate("BDATE"));
		data.setbHits(rs.getInt("BHITS"));
		data.setbId(rs.getString("BID"));
		return data;
	}
}

// 메인 좋아요순
class BoardRowMapper_heart implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbNum(rs.getInt("BNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setbContent(rs.getString("BCONTENT"));
		data.setbCate(rs.getString("BCATE"));
		data.setbDate(rs.getDate("BDATE"));
		data.setbHits(rs.getInt("BHITS"));
		data.setbId(rs.getString("BID"));
		data.setHeartCnt(rs.getInt("HCNT"));
		return data;
	}
}

// 태그검색목록
class BoardRowMapper_tag implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbNum(rs.getInt("BNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setbContent(rs.getString("BCONTENT"));
		data.setbCate(rs.getString("BCATE"));
		data.setbDate(rs.getDate("BDATE"));
		data.setbHits(rs.getInt("BHITS"));
		data.setbId(rs.getString("BID"));
		data.setGrade(rs.getString("GRADE"));
		data.setmNickName(rs.getString("MNICKNAME"));
		data.setCommentCnt(rs.getInt("COMENTCNT"));
		data.setHeartCnt(rs.getInt("HEARTCNT"));
		data.setTag(rs.getString("TCONTENT"));
		return data;
	}
}

class BoardRowMapperAll implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbNum(rs.getInt("BNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setbContent(rs.getString("BCONTENT"));
		data.setbCate(rs.getString("BCATE"));
		data.setbDate(rs.getDate("BDATE"));
		data.setbHits(rs.getInt("BHITS"));
		data.setbId(rs.getString("BID"));
		return data;
	}
}

//관리자카테
class BoardRowMapper_adminC implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO data = new BoardVO();
		data.setbCate(rs.getString("BCATE"));
		data.setBoardCnt(rs.getInt("BOARDCNT"));
		return data;
	}
}