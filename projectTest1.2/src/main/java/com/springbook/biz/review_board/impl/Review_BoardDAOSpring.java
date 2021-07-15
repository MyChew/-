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
		
	// SQL ��ɾ��
	private final String BOARD_INSERT = "insert into review_board(seq, title, writer, content, id) values((select ifnull(max(seq), 0)+1 from review_board tmp), ?, ?, ?, ?)";
	private final String BOARD_UPDATE = "update review_board set title=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete from review_board where seq=?";
	private final String BOARD_GET = "select * from review_board where seq=?";
	private final String BOARD_LIST = "select * from review_board order by seq desc";
	private final String BOARD_CNT = "update review_board set cnt = cnt +1 where seq=?";
	private final String BOARD_RECMD = "update review_board set recmd = recmd +1 where seq=?"; // ��õ�� ��� �̱���
	
	private final String BOARD_LIST_T = "SELECT * FROM review_board WHERE title like '%'||?||'%' ORDER BY seq DESC;";
	private final String BOARD_LIST_C = "SELECT * FROM review_board WHERE content like '%'||?||'%' ORDER BY seq DESC;";

	// CRUD ����� �޼ҵ� ����
	// �� ���
	public void insertReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring���� insertBoard() ��� ó��");
		jdbcTemplate.update(BOARD_INSERT, vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getId());
	}

	// �� ����
	public void updateReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring���� updateBoard() ��� ó��");
		jdbcTemplate.update(BOARD_UPDATE, vo.getTitle(), vo.getContent(), vo.getSeq());
	}

	// �� ����
	public void deleteReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring���� deleteBoard() ��� ó��");
		jdbcTemplate.update(BOARD_DELETE, vo.getSeq());
	}
	
	// ��ȸ�� ����
	public void cntReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring���� cntBoard() ��� ó��");
		jdbcTemplate.update(BOARD_CNT, vo.getSeq());
	}
	
	// ��õ�� ����
	public void recmdReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring���� recmdBoard() ��� ó��");
		jdbcTemplate.update(BOARD_RECMD, vo.getSeq());
	}

	// �� �� ����
	public Review_BoardVO getReview_Board(Review_BoardVO vo) {
		System.out.println("DAOSpring���� getBoard() ��� ó��");
		Object[] args = { vo.getSeq() };
		return jdbcTemplate.queryForObject(BOARD_GET, args, new Review_BoardRowMapper());
	}

	// �� ��� ��ȸ
	public List<Review_BoardVO> getReview_BoardList(Review_BoardVO vo) {
		System.out.println("DAOSpring���� getBoardList()��� ó��");
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