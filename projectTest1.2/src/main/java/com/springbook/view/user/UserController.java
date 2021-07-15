package com.springbook.view.user;

import org.apache.tomcat.jni.User;
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
		System.out.println("���� ȸ������ ó��");
		userService.getinsertUser(vo);
		return "login.jsp";
	}
	
	@RequestMapping(value = "/updateUser.do")
	public String updateUser(UserVO vo) {
		System.out.println("����������Ʈ ó��");
		System.out.println(vo.toString());
		userService.getupdateUser(vo);
		userService.getUser(vo); // �̰� �� �ҷ��;� ������Ʈ����
		return "redirect:myPage.do";
	}
	
	@RequestMapping(value = "/myPage.do")
	public String Mypage(UserVO vo, Model model) {
		System.out.println("���������� ó��");
		model.addAttribute("user", userService.getUser(vo));
		return "myPage.jsp";
	}
	
	@RequestMapping(value = "/memberList.do")
	public String memberList (UserVO vo,Model model) {
		System.out.println("���� ����Ʈ ó��");
		model.addAttribute("userList", userService.getUserList(vo)); // Model ���� ����
		return "memberList.jsp";
	}
	
	@RequestMapping(value = "/deleteUser.do")
	public String userdelete (UserVO vo) {
		System.out.println("���� ����Ʈ ���� ó��");
		userService.getdeleteUser(vo);
		return "redirect:memberList.do";
	}
	
}
