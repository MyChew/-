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
	
	// JDBC ���� ����
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	// SQL ��ɾ��
	// BOARD_INSERT ==> select ifnull(max(seq), 0)+1 from notice_board�� tmp��� ��Ī �ο�
	private final String BOARD_INSERT = "insert into notice_board(seq, title, writer, content, id) values((select ifnull(max(seq), 0)+1 from notice_board tmp), ?, ?, ?, ?)";
	private final String BOARD_UPDATE = "update notice_board set title=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete from notice_board where seq=?";
	private final String BOARD_GET = "select * from notice_board where seq=?";
	private final String BOARD_LIST = "select * from notice_board order by seq desc";
	private final String BOARD_CNT = "update notice_board set cnt = cnt +1 where seq=?";
	
	private final String BOARD_LIST_T = "SELECT * FROM notice_board WHERE title like '%'||?||'%' ORDER BY seq DESC;";
	private final String BOARD_LIST_C = "SELECT * FROM notice_board WHERE content like '%'||?||'%' ORDER BY seq DESC;";
	
	// CRUD ����� �޼ҵ� ����
	// �� ���
	public void insertNotice_Board(Notice_BoardVO vo) {
		System.out.println("insertNotice_Board ��� ó��");
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
	
	// �� ����
	public void updateNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC�� updateNotice_Board() ��� ó��");
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
	
	// �� ����
	public void deleteNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC�� deleteNotice_Board() ��� ó��");
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
	
	// ��ȸ�� ����
	public void cntNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC�� cntNotice_Board() ��� ó��");
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
	
	// �� �� ��ȸ
	public Notice_BoardVO getNotice_Board(Notice_BoardVO vo) {
		System.out.println("===> JDBC�� getNotice_Board() ��� ó��");
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
	
	// �� ��� ��ȸ
	public List<Notice_BoardVO> getNotice_BoardList(Notice_BoardVO vo) {
		System.out.println("===> JDBC�� getNotice_BoardList() ��� ó��");
		List<Notice_BoardVO> boardList = new ArrayList<Notice_BoardVO>();
		try {
			System.out.println("�˻� ��� DAO 1�ܰ�");
			conn = JDBCUtil.getConnection();
			System.out.println("�˻� ��� DAO 2�ܰ�");
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
