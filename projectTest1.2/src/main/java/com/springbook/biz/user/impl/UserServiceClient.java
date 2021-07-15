package com.springbook.biz.user.impl;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springbook.biz.user.UserVO;

public class UserServiceClient {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 1. Spring �����̳� �����Ѵ�.  
		AbstractApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		
		// 2. Spring �����̳ʷκ��� UserServiceImpl ��ü�� Lookup �Ѵ�.  
		UserService userService = 
				(UserService)container.getBean("userService");
		
		// 3. �α��� ��� �׽�Ʈ
		UserVO vo = new UserVO();
		vo.setId("test");
		vo.setPassword("test123");
		
//		UserVO user = userService.getUser(vo);
//		if(user != null ) {
//			System.out.println(user.getName() + "�� ȯ���մϴ�.");
//		} else {
//			System.out.println("�α��� ����");
//		}
		
		List<UserVO> userList = userService.getUserList(vo);
		for (UserVO user : userList) {
			System.out.println("---> " + user.toString());
		}
		
		// 4. Spring �����̳ʸ� �����Ѵ�.  
		container.close();
	}
} 
