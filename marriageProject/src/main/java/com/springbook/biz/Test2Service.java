package com.springbook.biz;

import java.util.List;

public interface Test2Service {
	void insertTest2(Test2VO vo);
	
	void deletTest2(Test2VO vo);
	
	List<Test2VO> getTest2List(Test2VO vo);
}
