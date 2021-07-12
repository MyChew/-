package com.springbook.view.test;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.Test2Service;
import com.springbook.biz.Test2VO;

@Controller
@SessionAttributes("test2")
public class Test2Controller {

	@Autowired
	private Test2Service test2Service;

	@RequestMapping(value = "/insertTest2.do")
	public String insertTest2(Test2VO vo) throws IllegalStateException, IOException {
		test2Service.insertTest2(vo);
		return "test2.jsp";
	}

	// 삭제
	@RequestMapping("/deleteTest2.do")
	public String deleteTest2(Test2VO vo) {
		
		test2Service.deletTest2(vo);
		return "getTest2List.do";
	}

	// 글 목록 검색
	@RequestMapping(value = "/getTest2List.do")
	public String getBoardList(Test2VO vo, Model model) {

	// Model 정보 저장
	model.addAttribute("test2List", test2Service.getTest2List(vo));
	return "getTest2List.jsp";

	}
}
