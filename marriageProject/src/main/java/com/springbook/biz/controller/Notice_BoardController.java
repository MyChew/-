package com.springbook.biz.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.notice_board.Notice_BoardService;
import com.springbook.biz.notice_board.Notice_BoardVO;
import com.springbook.biz.notice_board.impl.Notice_BoardDAO;

@Controller
@SessionAttributes("notice_Board")
public class Notice_BoardController {
	@Autowired
	private Notice_BoardService notice_Boardservice;
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}
	
	// 글 등록
	@RequestMapping(value="/insertNotice_Board.do") // value= 생략 가능
	public String insertNotice_Board(Notice_BoardVO vo) {
		System.out.println("글 등록 처리");
		
		notice_Boardservice.insertNotice_Board(vo);
		return "redirect:getNotice_BoardList.do";
	}
	
	// 글 수정
	@RequestMapping("/updateNotice_Board.do")
	public String updateNotice_Board(@ModelAttribute("notice_Board") Notice_BoardVO vo) {
		
		System.out.println("번호 " + vo.getSeq());
		System.out.println("제목: " + vo.getTitle());
		System.out.println("작성자 : " + vo.getWriter());
		System.out.println("내용: " + vo.getContent());
		System.out.println("등록일: " + vo.getRegDate());
		System.out.println("조회수: " + vo.getCnt());
		
		notice_Boardservice.updateNotice_Board(vo);
		return "getNotice_BoardList.do";
	}
	
	// 글 삭제
	@RequestMapping("/deleteNotice_Board.do")
	public String deleteNotice_Board(Notice_BoardVO vo) {
		System.out.println("글 삭제 처리");
		
		notice_Boardservice.deleteNotice_Board(vo);
		return "getNotice_BoardList.do";
	}
	
	// 글 상세 조회
	@RequestMapping("/getNotice_Board.do")
	public String getNotice_Board(Notice_BoardVO vo, Model model){
		System.out.println("글 상세 조회 처리");
		
		model.addAttribute("notice_Board", notice_Boardservice.getNotice_Board(vo)); // Model 정보 저장
		return "getNotice_Board.jsp"; // View 이름 리턴
	}
	
	// 글 목록 검색
	@RequestMapping("/getNotice_BoardList.do")
	public String getNotice_BoardList (Notice_BoardVO vo, Model model){
		
		// Null Check
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		model.addAttribute("notice_BoardList", notice_Boardservice.getNotice_BoardList(vo)); // Model 정보 저장
		return "getNotice_BoardList.jsp"; // View 이름 리턴
	}

}
