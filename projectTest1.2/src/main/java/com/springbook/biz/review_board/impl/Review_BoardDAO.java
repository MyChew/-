package com.springbook.biz.review_board.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.review_board.Review_BoardVO;

@Repository("review_BoardDAO")
public class Review_BoardDAO {
	
	// JDBC 관련 변수
		private Connection conn = null;
		private PreparedStatement stmt = null;
		private ResultSet rs = null;
		
		// SQL 명령어들
		// BOARD_INSERT ==> select ifnull(max(seq), 0)+1 from review_board에 tmp라는 별칭 부여
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
			System.out.println("insertReview_Board 기능 처리");
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
		public void updateReview_Board(Review_BoardVO vo) {
			System.out.println("===> JDBC로 updateReview_Board() 기능 처리");
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
		public void deleteReview_Board(Review_BoardVO vo) {
			System.out.println("===> JDBC로 deleteReview_Board() 기능 처리");
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
		public void cntReview_Board(Review_BoardVO vo) {
			System.out.println("===> JDBC로 cntReview_Board() 기능 처리");
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
		
		// 추천수 증가
		public void recmdReview_Board(Review_BoardVO vo) {
			System.out.println("===> JDBC로 recmdReview_Board() 기능 처리");
			try {
				conn = JDBCUtil.getConnection();
				stmt = conn.prepareStatement(BOARD_RECMD);
				stmt.setInt(1, vo.getSeq());
				stmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(stmt, conn);
			}
		}
		
		// 글 상세 조회
		public Review_BoardVO getReview_Board(Review_BoardVO vo) {
			System.out.println("===> JDBC로 getReview_Board() 기능 처리");
			Review_BoardVO board = null;
			try {
				conn = JDBCUtil.getConnection();
				
				stmt = conn.prepareStatement(BOARD_GET);
				stmt.setInt(1, vo.getSeq());
				rs = stmt.executeQuery();
				
				if (rs.next()) {
					board = new Review_BoardVO();
					board.setSeq(rs.getInt("SEQ"));
					board.setTitle(rs.getString("TITLE"));
					board.setWriter(rs.getString("WRITER"));
					board.setContent(rs.getString("CONTENT"));
					board.setRegDate(rs.getDate("REGDATE"));
					board.setCnt(rs.getInt("CNT"));
					board.setRecmd(rs.getInt("RECMD"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(rs, stmt, conn);
			}
			return board;
		}
		
		// 글 목록 조회
		public List<Review_BoardVO> getReview_BoardList(Review_BoardVO vo) {
			System.out.println("===> JDBC로 getReview_BoardList() 기능 처리");
			List<Review_BoardVO> boardList = new ArrayList<Review_BoardVO>();
			try {
				conn = JDBCUtil.getConnection();
				if(vo.getSearchCondition().equals("TITLE")) {
					stmt = conn.prepareStatement(BOARD_LIST_T);
				} else if(vo.getSearchCondition().equals("CONTENT")) {
					stmt = conn.prepareStatement(BOARD_LIST_C);
				}
				stmt.setString(1, vo.getSearchKeyword());
				rs = stmt.executeQuery();
				while (rs.next()) {
					Review_BoardVO board = new Review_BoardVO();
					board.setSeq(rs.getInt("SEQ"));
					board.setTitle(rs.getString("TITLE"));
					board.setWriter(rs.getString("WRITER"));
					board.setContent(rs.getString("CONTENT"));
					board.setRegDate(rs.getDate("REGDATE"));
					board.setCnt(rs.getInt("CNT"));
					board.setRecmd(rs.getInt("RECMD"));
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
