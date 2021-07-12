package com.springbook.view.test;

import java.io.IOException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.Test1Service;
import com.springbook.biz.Test1VO;



@Controller
@SessionAttributes("test1")
public class Test1Controller {

	@Autowired
	private Test1Service test1Service;

	@RequestMapping(value = "/insertTest1.do")
	public String insertTest1(Test1VO vo) throws IllegalStateException, IOException {
		
		System.out.println("name :"+vo.getName());
		System.out.println("age : " + vo.getAge());
		System.out.println("marriage : " + vo.getMarriage());
		System.out.println("height : "+ vo.getHeight());
		System.out.println("academicBackgeround : " +vo.getAcademicBackground());
		System.out.println("jobRadio : "+vo.getJob());
		System.out.println("religionRadio : "+vo.getReligion());
		test1Service.insertTest1(vo);
		return "test1.jsp";
	}

	// 삭제
	@RequestMapping("/deleteTest1.do")
	public String deleteTest1(Test1VO vo) {
		System.out.println("seq:"+vo.getSeq());
		test1Service.deletTest1(vo);
		return "getTest1List.do";
	}

	// 글 목록 검색
	@RequestMapping(value = "/getTest1List.do")
	public String getBoardList(Test1VO vo, Model model) {

	// Model 정보 저장
	model.addAttribute("test1List", test1Service.getTest1List(vo));
	return "getTest1List.jsp";

	}
}
