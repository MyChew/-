package com.springbook.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("test1Service")
public class Test1ServiceImpl implements Test1Service{
	
	@Autowired
	private Test1DAO test1DAO;
	
	public void insertTest1(Test1VO vo) {
	// TODO Auto-generated methosssd stub
		System.out.println("등록 들어간다");
		test1DAO.insertTest1(vo);
	}

	
	public void deletTest1(Test1VO vo) {
		// TODO Auto-generated method stub
		test1DAO.deleteTest1(vo);
	
	}


	@Override
	public List<Test1VO> getTest1List(Test1VO vo) {
		// TODO Auto-generated method stub
		return test1DAO.getTest1List(vo);
	}


	
	
}
