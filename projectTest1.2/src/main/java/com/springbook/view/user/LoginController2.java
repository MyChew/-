package com.springbook.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.biz.user.impl.UserService;

@Controller
public class LoginController2 {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login2.do", method = RequestMethod.GET)
	public String loginView(UserVO vo) {
		System.out.println("로그인 화면으로 이동");
		vo.setId("test");
		vo.setPassword("test123");
		return "redirect:login2.jsp";
	}

	@RequestMapping(value = "/login2.do", method = RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
		System.out.println("로그인 인증 처리...");
		UserVO user1 = userService.getUser(vo);
		System.out.println(session.getAttribute("user1"));
		System.out.println(session.getAttribute("user2"));
		System.out.println(user1.getId());
		System.out.println(user1.getPassword());
		
		if (user1 == null) {
			return "redirect:login2.jsp";
		}
		
		if (session.getAttribute("user1").equals(user1.getId())) {
			if (session.getAttribute("user2").equals(user1.getPassword())) {
				return "redirect:myPage.do";
			} else {
				return "redirect:login2.jsp";
			}
		} else {
			return "redirect:login2.jsp";
		}
	}
}