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
		System.out.println("유저 회원가입 처리");
		userService.getinsertUser(vo);
		return "login.jsp";
	}
	
	@RequestMapping(value = "/updateUser.do")
	public String updateUser(UserVO vo) {
		System.out.println("유저업데이트 처리");
		System.out.println(vo.toString());
		userService.getupdateUser(vo);
		userService.getUser(vo); // 이거 꼭 불러와야 업데이트가됨
		return "redirect:myPage.do";
	}
	
	@RequestMapping(value = "/myPage.do")
	public String Mypage(UserVO vo, Model model) {
		System.out.println("마이페이지 처리");
		model.addAttribute("user", userService.getUser(vo));
		return "myPage.jsp";
	}
	
	@RequestMapping(value = "/memberList.do")
	public String memberList (UserVO vo,Model model) {
		System.out.println("유저 리스트 처리");
		model.addAttribute("userList", userService.getUserList(vo)); // Model 정보 저장
		return "memberList.jsp";
	}
	
	@RequestMapping(value = "/deleteUser.do")
	public String userdelete (UserVO vo) {
		System.out.println("유저 리스트 삭제 처리");
		userService.getdeleteUser(vo);
		return "redirect:memberList.do";
	}
	
}
