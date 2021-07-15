package com.springbook.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.springbook.biz.user.UserVO;
@Repository
@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	public void setUserDAO(UserDAO userDao) {
		this.userDAO = userDao;
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

	@Override
	public void getinsertUser(UserVO vo) {
		userDAO.getinsertUser(vo);
	}

	@Override
	public void getupdateUser(UserVO vo) {
		userDAO.getupdateUser(vo);
	}

	@Override
	public List<UserVO> getUserList(UserVO vo) {
		return userDAO.getUserList(vo);
	}

	@Override
	public void getdeleteUser(UserVO vo) {
		userDAO.getdeleteUser(vo);
	}

}