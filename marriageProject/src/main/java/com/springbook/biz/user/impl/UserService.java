package com.springbook.biz.user.impl;

import java.util.List;

import com.springbook.biz.user.UserVO;

public interface UserService {

	// CRUD ����� �޼ҵ� ����  
	// �α���   
	UserVO getUser(UserVO vo);
	
	void getinsertUser(UserVO vo);
	
	void getupdateUser(UserVO vo);
	
	List<UserVO> getUserList(UserVO vo);

}