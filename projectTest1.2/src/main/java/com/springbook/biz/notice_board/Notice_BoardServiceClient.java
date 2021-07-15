package com.springbook.biz.notice_board;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Notice_BoardServiceClient {

	public static void main(String[] args) {
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		Notice_BoardService notice_BoardService = (Notice_BoardService) container.getBean("notice_BoardService");
		
		Notice_BoardVO vo = new Notice_BoardVO();
		vo.setTitle("Ŭ���̾�Ʈ ��� �׽�Ʈ2");
		vo.setWriter("��Ŭ��");
		vo.setContent("����");
		notice_BoardService.insertNotice_Board(vo);
		
		System.out.println(vo.toString());
		
		container.close();

	}

}
