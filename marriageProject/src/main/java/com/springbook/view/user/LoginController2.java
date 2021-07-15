package com.springbook.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;

@Controller
public class LoginController2 {
	@RequestMapping(value = "/login2.do", method = RequestMethod.GET)
	public String loginView(UserVO vo) {
		System.out.println("로그인 화면으로 이동");
		vo.setId("test");
		vo.setPassword("test123");
		return "login2.jsp";
	}

	@RequestMapping(value = "/login2.do", method = RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
		System.out.println("로그인 인증 처리...");
		UserVO user1 = userDAO.getUser(vo);
		System.out.println("아이디세션 : "+session.getAttribute("user1"));
		System.out.println("비밀번호세션 : "+session.getAttribute("user2"));
		System.out.println("아이디 : "+user1.getId());
		System.out.println("비밀번호 : "+user1.getPassword());
		if (session.getAttribute("user1").equals(user1.getId())) {
			if (session.getAttribute("user2").equals(user1.getPassword()) ) {
				return "Mypage.do";
			} else
				return "login2.jsp";
		}
		return "login2.jsp";
	}
}