package com.springbook.biz.user.impl;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springbook.biz.user.UserVO;

public class UserServiceClient {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 1. Spring 컨테이너 구동한다.  
		AbstractApplicationContext container =
				new GenericXmlApplicationContext("applicationContext.xml");
		
		// 2. Spring 컨테이너로부터 UserServiceImpl 객체를 Lookup 한다.  
		UserService userService = 
				(UserService)container.getBean("userService");
		
		// 3. 로그인 기능 테스트
		UserVO vo = new UserVO();
		vo.setId("test");
		vo.setPassword("test123");
		
//		UserVO user = userService.getUser(vo);
//		if(user != null ) {
//			System.out.println(user.getName() + "님 환영합니다.");
//		} else {
//			System.out.println("로그인 실패");
//		}
		
		List<UserVO> userList = userService.getUserList(vo);
		for (UserVO user : userList) {
			System.out.println("---> " + user.toString());
		}
		
		// 4. Spring 컨테이너를 종료한다.  
		container.close();
	}
} 
