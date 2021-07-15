package com.springbook.biz.notice_board.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springbook.biz.notice_board.Notice_BoardVO;

@Repository
public class Notice_BoardDAOSpring {
	@Autowired
	private JdbcTemplate jdbcTemplate;
		
	// SQL 명령어들
	private final String BOARD_INSERT = "insert into notice_board(seq, title, writer, content, id) values((select ifnull(max(seq), 0)+1 from notice_board tmp), ?, ?, ?, ?)";
	private final String BOARD_UPDATE = "update notice_board set title=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete from notice_board where seq=?";
	private final String BOARD_GET = "select * from notice_board where seq=?";
	private final String BOARD_LIST = "select * from notice_board order by seq desc";
	private final String BOARD_CNT = "update notice_board set cnt = cnt +1 where seq=?";
	
	private final String BOARD_LIST_T = "SELECT * FROM notice_board WHERE title like '%'||?||'%' ORDER BY seq DESC;";
	private final String BOARD_LIST_C = "SELECT * FROM notice_board WHERE content like '%'||?||'%' ORDER BY seq DESC;";

	// CRUD 기능의 메소드 구현
	// 글 등록
	public void insertNotice_Board(Notice_BoardVO vo) {
		System.out.println("DAOSpring으로 insertBoard() 기능 처리");
		jdbcTemplate.update(BOARD_INSERT, vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getId());
	}

	// 글 수정
	public void updateNotice_Board(Notice_BoardVO vo) {
		System.out.println("DAOSpring으로 updateBoard() 기능 처리");
		jdbcTemplate.update(BOARD_UPDATE, vo.getTitle(), vo.getContent(), vo.getSeq());
	}

	// 글 삭제
	public void deleteNotice_Board(Notice_BoardVO vo) {
		System.out.println("DAOSpring으로 deleteBoard() 기능 처리");
		jdbcTemplate.update(BOARD_DELETE, vo.getSeq());
	}
	
	// 조회수 증가
	public void cntNotice_Board(Notice_BoardVO vo) {
		System.out.println("DAOSpring으로 cntBoard() 기능 처리");
		jdbcTemplate.update(BOARD_CNT, vo.getSeq());
	}

	// 글 상세 보기
	public Notice_BoardVO getNotice_Board(Notice_BoardVO vo) {
		System.out.println("DAOSpring으로 getBoard() 기능 처리");
		Object[] args = { vo.getSeq() };
		return jdbcTemplate.queryForObject(BOARD_GET, args, new Notice_BoardRowMapper());
	}

	// 글 목록 조회
	public List<Notice_BoardVO> getNotice_BoardList(Notice_BoardVO vo) {
		System.out.println("검색 기능 DAOSpring 처리");
		Object[] args = {vo.getSearchKeyword()};
		if(vo.getSearchCondition().equals("TITLE")) {			
			System.out.println(vo.getSearchKeyword());
			return jdbcTemplate.query(BOARD_LIST_T, args, new Notice_BoardRowMapper());
		} else if(vo.getSearchCondition().equals("CONTENT")) {
			System.out.println(vo.getSearchKeyword());
			return jdbcTemplate.query(BOARD_LIST_C, args, new Notice_BoardRowMapper());	
		}
		return null;
	}

}

class Notice_BoardRowMapper implements RowMapper<Notice_BoardVO> {
	public Notice_BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		Notice_BoardVO board = new Notice_BoardVO();
		board.setSeq(rs.getInt("SEQ"));
		board.setTitle(rs.getString("TITLE"));
		board.setWriter(rs.getString("WRITER"));
		board.setContent(rs.getString("CONTENT"));
		board.setRegDate(rs.getDate("REGDATE"));
		board.setCnt(rs.getInt("CNT"));
		board.setId(rs.getString("ID"));
		return board;
	}
}