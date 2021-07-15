package com.springbook.biz.review_board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.review_board.Review_BoardService;
import com.springbook.biz.review_board.Review_BoardVO;

@Service("review_BoardService")
public class Review_BoardServiceImpl implements Review_BoardService{
	
	@Autowired
	private Review_BoardDAOSpring review_BoardDAO;
	
	public void insertReview_Board(Review_BoardVO vo) {
		review_BoardDAO.insertReview_Board(vo);
	}
	
	public void updateReview_Board(Review_BoardVO vo) {
		review_BoardDAO.updateReview_Board(vo);
	}

	public void deleteReview_Board(Review_BoardVO vo) {
		review_BoardDAO.deleteReview_Board(vo);
	}
	
	public void cntReview_Board(Review_BoardVO vo) {
		review_BoardDAO.cntReview_Board(vo);
	}
	
	public void recmdReview_Board(Review_BoardVO vo) {
		review_BoardDAO.recmdReview_Board(vo);
	}

	public Review_BoardVO getReview_Board(Review_BoardVO vo) {
		return review_BoardDAO.getReview_Board(vo);
	}

	public List<Review_BoardVO> getReview_BoardList(Review_BoardVO vo) {
		return review_BoardDAO.getReview_BoardList(vo);
	}
	
}
