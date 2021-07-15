package com.springbook.biz.notice_board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.notice_board.Notice_BoardService;
import com.springbook.biz.notice_board.Notice_BoardVO;

@Service("notice_BoardService")
public class Notice_BoardServiceImpl implements Notice_BoardService{
	
	@Autowired
	private Notice_BoardDAOSpring notice_BoardDAO;
	
	public void insertNotice_Board(Notice_BoardVO vo) {
		notice_BoardDAO.insertNotice_Board(vo);
	}
	
	public void updateNotice_Board(Notice_BoardVO vo) {
		notice_BoardDAO.updateNotice_Board(vo);
	}

	public void deleteNotice_Board(Notice_BoardVO vo) {
		notice_BoardDAO.deleteNotice_Board(vo);
	}

	public Notice_BoardVO getNotice_Board(Notice_BoardVO vo) {
		return notice_BoardDAO.getNotice_Board(vo);
	}

	public List<Notice_BoardVO> getNotice_BoardList(Notice_BoardVO vo) {
		return notice_BoardDAO.getNotice_BoardList(vo);
	}
	
}
