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
		System.out.println("�α��� ȭ������ �̵�");
		model.addAttribute("user", userService.getUser(vo));
		vo.setId("test");
		vo.setPassword("test123");
		return "redirect:login.jsp";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO , HttpSession session) {
		System.out.println("�α��� ���� ó��...");
		UserVO user = userService.getUser(vo);
		if(user != null) {
			session.setAttribute("userName", user.getName());
			session.setAttribute("user1", user.getId());
			session.setAttribute("user2", user.getPassword());
			System.out.println(user.getId());
			System.out.println(user.getPassword());
			return "redirect:getNotice_BoardList.do";
		} 
		else return "redirect:login.jsp";
	}
}