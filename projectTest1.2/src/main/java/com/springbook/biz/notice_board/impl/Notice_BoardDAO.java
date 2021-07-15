package com.springbook.biz.notice_board.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.notice_board.Notice_BoardVO;

@Repository("notice_BoardDAO")
public class Notice_BoardDAO {
	
	// JDBC 관련 변수
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	// SQL 명령어들
	// BOARD_INSERT ==> select ifnull(max(seq), 0)+1 from notice_board에 tmp라는 별칭 부여
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
		System.out.println("insertNotice_Board 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getWriter());
			stmt.setString(3, vo.getContent());
			stmt.setString(4, vo.getId());
			stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	// 글 수정
	public void updateNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC로 updateNotice_Board() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getContent());
			stmt.setInt(3, vo.getSeq());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	// 글 삭제
	public void deleteNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC로 deleteNotice_Board() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getSeq());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	// 조회수 증가
	public void cntNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC로 cntNotice_Board() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_CNT);
			stmt.setInt(1, vo.getSeq());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	// 글 상세 조회
	public Notice_BoardVO getNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC로 getNotice_Board() 기능 처리");
		Notice_BoardVO board = null;
		try {
			conn = JDBCUtil.getConnection();
			
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, vo.getSeq());
			rs = stmt.executeQuery();
			
			if (rs.next()) {
				board = new Notice_BoardVO();
				board.setSeq(rs.getInt("SEQ"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getDate("REGDATE"));
				board.setCnt(rs.getInt("CNT"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return board;
	}
	
	// 글 목록 조회
	public List<Notice_BoardVO> getNotice_BoardList(Notice_BoardVO vo) {
		System.out.println("===> JDBC로 getNotice_BoardList() 기능 처리");
		List<Notice_BoardVO> boardList = new ArrayList<Notice_BoardVO>();
		try {
			System.out.println("검색 기능 DAO 1단계");
			conn = JDBCUtil.getConnection();
			System.out.println("검색 기능 DAO 2단계");
			if(vo.getSearchCondition().equals("TITLE")) {
				stmt = conn.prepareStatement(BOARD_LIST_T);
			} else if(vo.getSearchCondition().equals("CONTENT")) {
				stmt = conn.prepareStatement(BOARD_LIST_C);
			}
			stmt.setString(1, vo.getSearchKeyword());
			rs = stmt.executeQuery();
			while (rs.next()) {
				Notice_BoardVO board = new Notice_BoardVO();
				board.setSeq(rs.getInt("SEQ"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getDate("REGDATE"));
				board.setCnt(rs.getInt("CNT"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return boardList;
	}
}
