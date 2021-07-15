package com.springbook.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.biz.user.impl.UserService;


@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginView(UserVO vo, Model model) {
		System.out.println("로그인 화면으로 이동");
		model.addAttribute("user", userService.getUser(vo));
		vo.setId("test");
		vo.setPassword("test123");
		return "login.jsp";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO , HttpSession session) {
		System.out.println("로그인 인증 처리...");
		UserVO user = userDAO.getUser(vo);
		if(user != null) {
			session.setAttribute("userName", user.getName());
			session.setAttribute("user1", user.getId());
			session.setAttribute("user2", user.getPassword());
			return "getBoardList.do";
		} 
		else return "login.jsp";
	}
}