package com.springbook.biz.test2.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.test2.Test2Service;
import com.springbook.biz.test2.Test2VO;

@Service("test2Service")
public class Test2ServiceImpl implements Test2Service{
	
	@Autowired
	private Test2DAO test2DAO;
	
	public void insertTest2(Test2VO vo) {
	// TODO Auto-generated methosssd stub
		System.out.println("등록 들어간다");
		test2DAO.insertTest2(vo);
	}

	
	public void deletTest2(Test2VO vo) {
		// TODO Auto-generated method stub
		test2DAO.deleteTest2(vo);
	
	}


	@Override
	public List<Test2VO> getTest2List(Test2VO vo) {
		// TODO Auto-generated method stub
		return test2DAO.getTest2List(vo);
	}


	
	
}
