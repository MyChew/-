package com.springbook.view.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserService;

@Controller
@SessionAttributes("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/insertUser.do")
	public String insertUser(UserVO vo) {
		userService.getinsertUser(vo);
		return "login.jsp";
	}
	
	@RequestMapping(value = "/updateUser.do")
	public String updateUser(UserVO vo) {
		userService.getupdateUser(vo);
		userService.getUser(vo); // 이거 꼭 불러와야 업데이트가됨
		return "Mypage.do";
	}
	
	@RequestMapping(value = "/Mypage.do")
	public String Mypage(UserVO vo, Model model) {
		model.addAttribute("user", userService.getUser(vo));
		return "Mypage.jsp";
	}
	
}
