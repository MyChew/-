package com.springbook.biz.review_board;

import java.util.List;

public interface Review_BoardService {
	// CRUD 기능의 메소드 구현
		// 글 등록
		void insertReview_Board(Review_BoardVO vo);
		
		// 글 수정
		void updateReview_Board(Review_BoardVO vo);
		
		// 글 삭제
		void deleteReview_Board(Review_BoardVO vo);
		
		// 조회수 증가
		void cntReview_Board(Review_BoardVO vo);
		
		// 추천수 증가
		void recmdReview_Board(Review_BoardVO vo);
		
		// 글 상세 조회
		Review_BoardVO getReview_Board(Review_BoardVO vo);
		
		// 글 목록 조회
		List<Review_BoardVO> getReview_BoardList(Review_BoardVO vo);

	}
