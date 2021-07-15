package com.springbook.biz.review_board;

import java.util.List;

public interface Review_BoardService {
	// CRUD ����� �޼ҵ� ����
		// �� ���
		void insertReview_Board(Review_BoardVO vo);
		
		// �� ����
		void updateReview_Board(Review_BoardVO vo);
		
		// �� ����
		void deleteReview_Board(Review_BoardVO vo);
		
		// ��ȸ�� ����
		void cntReview_Board(Review_BoardVO vo);
		
		// ��õ�� ����
		void recmdReview_Board(Review_BoardVO vo);
		
		// �� �� ��ȸ
		Review_BoardVO getReview_Board(Review_BoardVO vo);
		
		// �� ��� ��ȸ
		List<Review_BoardVO> getReview_BoardList(Review_BoardVO vo);

	}
