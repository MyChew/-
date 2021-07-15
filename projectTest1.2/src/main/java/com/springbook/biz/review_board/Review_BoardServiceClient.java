package com.springbook.biz.review_board;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class Review_BoardServiceClient {

	public static void main(String[] args) {
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		
		Review_BoardService review_BoardService = (Review_BoardService) container.getBean("review_BoardService");
		
		Review_BoardVO vo = new Review_BoardVO();
		vo.setTitle("�ı� �Խ��� ù ���");
		vo.setWriter("���ı�");
		vo.setContent("���ڱ�");
		review_BoardService.insertReview_Board(vo);
		
		System.out.println(vo.toString());
		
		container.close();

	}

}

