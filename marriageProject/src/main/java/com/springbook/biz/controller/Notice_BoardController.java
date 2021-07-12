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
	
	// �˻� ���� ��� ����
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("����", "TITLE");
		conditionMap.put("����", "CONTENT");
		return conditionMap;
	}
	
	// �� ���
	@RequestMapping(value="/insertNotice_Board.do") // value= ���� ����
	public String insertNotice_Board(Notice_BoardVO vo) {
		System.out.println("�� ��� ó��");
		
		notice_Boardservice.insertNotice_Board(vo);
		return "redirect:getNotice_BoardList.do";
	}
	
	// �� ����
	@RequestMapping("/updateNotice_Board.do")
	public String updateNotice_Board(@ModelAttribute("notice_Board") Notice_BoardVO vo) {
		
		System.out.println("��ȣ " + vo.getSeq());
		System.out.println("����: " + vo.getTitle());
		System.out.println("�ۼ��� : " + vo.getWriter());
		System.out.println("����: " + vo.getContent());
		System.out.println("�����: " + vo.getRegDate());
		System.out.println("��ȸ��: " + vo.getCnt());
		
		notice_Boardservice.updateNotice_Board(vo);
		return "getNotice_BoardList.do";
	}
	
	// �� ����
	@RequestMapping("/deleteNotice_Board.do")
	public String deleteNotice_Board(Notice_BoardVO vo) {
		System.out.println("�� ���� ó��");
		
		notice_Boardservice.deleteNotice_Board(vo);
		return "getNotice_BoardList.do";
	}
	
	// �� �� ��ȸ
	@RequestMapping("/getNotice_Board.do")
	public String getNotice_Board(Notice_BoardVO vo, Model model){
		System.out.println("�� �� ��ȸ ó��");
		
		model.addAttribute("notice_Board", notice_Boardservice.getNotice_Board(vo)); // Model ���� ����
		return "getNotice_Board.jsp"; // View �̸� ����
	}
	
	// �� ��� �˻�
	@RequestMapping("/getNotice_BoardList.do")
	public String getNotice_BoardList (Notice_BoardVO vo, Model model){
		
		// Null Check
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		model.addAttribute("notice_BoardList", notice_Boardservice.getNotice_BoardList(vo)); // Model ���� ����
		return "getNotice_BoardList.jsp"; // View �̸� ����
	}

}
