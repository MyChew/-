package com.springbook.biz.notice_board;

import java.util.List;

public interface Notice_BoardService {
	
	// CRUD ����� �޼ҵ� ����
	// �� ���
	void insertNotice_Board(Notice_BoardVO vo);
	
	// �� ����
	void updateNotice_Board(Notice_BoardVO vo);
	
	// �� ����
	void deleteNotice_Board(Notice_BoardVO vo);
	
	// �� �� ��ȸ
	Notice_BoardVO getNotice_Board(Notice_BoardVO vo);
	
	// �� ��� ��ȸ
	List<Notice_BoardVO> getNotice_BoardList(Notice_BoardVO vo);

}