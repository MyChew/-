package com.springbook.biz.test1;

import java.util.List;

public interface Test1Service {
	void insertTest1(Test1VO vo);
	
	void deletTest1(Test1VO vo);
	
	List<Test1VO> getTest1List(Test1VO vo);
}
