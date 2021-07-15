package com.springbook.biz.test1;




import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;




public class Test1ServiceClient {
	public static void main(String[] args) {
		// 1. Spring 컨테이너를 구동한다.
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

		// 2. Spring 컨테이너로부터 Test1ServiceImpl 객체를 Lookup한다.
		Test1Service test1Service = (Test1Service) container.getBean("test1Service");

		// 3. 삭제 기능 테스트
		Test1VO vo = new Test1VO();
		vo.setName("김감박");
		
		
		test1Service.deletTest1(vo);
		
		


		// 5. Spring 컨테이너 종료
		container.close();
	}
}