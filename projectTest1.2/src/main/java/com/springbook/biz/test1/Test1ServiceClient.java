package com.springbook.biz.test1;




import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;




public class Test1ServiceClient {
	public static void main(String[] args) {
		// 1. Spring �����̳ʸ� �����Ѵ�.
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

		// 2. Spring �����̳ʷκ��� Test1ServiceImpl ��ü�� Lookup�Ѵ�.
		Test1Service test1Service = (Test1Service) container.getBean("test1Service");

		// 3. ���� ��� �׽�Ʈ
		Test1VO vo = new Test1VO();
		vo.setName("�谨��");
		
		
		test1Service.deletTest1(vo);
		
		


		// 5. Spring �����̳� ����
		container.close();
	}
}