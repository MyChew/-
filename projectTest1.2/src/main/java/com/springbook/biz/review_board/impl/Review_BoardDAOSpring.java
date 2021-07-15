package com.springbook.biz.review_board.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springbook.biz.review_board.Review_BoardVO;

@Repository
public class Review_BoardDAOSpring {
	@Autowired
	private JdbcTemplate jdbcTemplate;
		
	// SQL 명령어들
	private final String BOARD_INSERT = "insert into review_board(seq, title, writer, content, id) values((select ifnull(max(seq), 0)+1 from review_board tmp), ?, ?, ?, ?)";
	private final String BOARD_UPDATE = "update review_board set title=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete from review_board where seq=?";
	private final String BOARD_GET = "select * from review_board where seq=?";
	private final String BOARD_LIST = "select * from review_board order by seq desc";
	private final String BOARD_CNT = "update review_board set cnt = cnt +1 where seq=?";
	private final String BOARD_RECMD = "update review_board set recmd = recmd +1 where seq=?"; // 추천수 기능 미구현
	
	private final String BOARD_LIST_T = "SELECT * FROM review_board WHERE title like '%'||?||'%' ORDER BY seq DESC;";
	private final String BOARD_LIST_C = "SELECT * FROM review_board WHERE content like '%'||?||'%' ORDER BY seq DESC;";

	// CRUD 기능의 메소드 구현
	// 글 등록
	public void insertReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring으로 insertBoard() 기능 처리");
		jdbcTemplate.update(BOARD_INSERT, vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getId());
	}

	// 글 수정
	public void updateReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring으로 updateBoard() 기능 처리");
		jdbcTemplate.update(BOARD_UPDATE, vo.getTitle(), vo.getContent(), vo.getSeq());
	}

	// 글 삭제
	public void deleteReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring으로 deleteBoard() 기능 처리");
		jdbcTemplate.update(BOARD_DELETE, vo.getSeq());
	}
	
	// 조회수 증가
	public void cntReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring으로 cntBoard() 기능 처리");
		jdbcTemplate.update(BOARD_CNT, vo.getSeq());
	}
	
	// 추천수 증가
	public void recmdReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring으로 recmdBoard() 기능 처리");
		jdbcTemplate.update(BOARD_RECMD, vo.getSeq());
	}

	// 글 상세 보기
	public Review_BoardVO getReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring으로 getBoard() 기능 처리");
		Object[] args = { vo.getSeq() };
		return jdbcTemplate.queryForObject(BOARD_GET, args, new Review_BoardRowMapper());
	}

	// 글 목록 조회
	public List<Review_BoardVO> getReview_BoardList(Review_BoardVO vo) {
		System.out.println("DAOSpring으로 getBoardList()기능 처리");
		Object[] args = {vo.getSearchKeyword()};
		if(vo.getSearchCondition().equals("TITLE")) {
			return jdbcTemplate.query(BOARD_LIST_T, args, new Review_BoardRowMapper());
		} else if(vo.getSearchCondition().equals("CONTENT")) {
			return jdbcTemplate.query(BOARD_LIST_C, args, new Review_BoardRowMapper());	
		}
		return null;
	}

}

class Review_BoardRowMapper implements RowMapper<Review_BoardVO> {
	public Review_BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		Review_BoardVO board = new Review_BoardVO();
		board.setSeq(rs.getInt("SEQ"));
		board.setTitle(rs.getString("TITLE"));
		board.setWriter(rs.getString("WRITER"));
		board.setContent(rs.getString("CONTENT"));
		board.setRegDate(rs.getDate("REGDATE"));
		board.setCnt(rs.getInt("CNT"));
		board.setRecmd(rs.getInt("RECMD"));
		board.setId(rs.getString("ID"));
		return board;
	}
}