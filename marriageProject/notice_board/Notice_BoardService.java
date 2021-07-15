package com.springbook.biz.notice_board;

import java.util.List;

public interface Notice_BoardService {
	
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertNotice_Board(Notice_BoardVO vo);
	
	// 글 수정
	void updateNotice_Board(Notice_BoardVO vo);
	
	// 글 삭제
	void deleteNotice_Board(Notice_BoardVO vo);
	
	// 글 상세 조회
	Notice_BoardVO getNotice_Board(Notice_BoardVO vo);
	
	// 글 목록 조회
	List<Notice_BoardVO> getNotice_BoardList(Notice_BoardVO vo);

}