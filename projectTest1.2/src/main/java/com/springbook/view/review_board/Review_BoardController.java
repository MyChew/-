package com.springbook.view.review_board;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.review_board.Review_BoardService;
import com.springbook.biz.review_board.Review_BoardVO;

@Controller
@SessionAttributes("review_Board")
public class Review_BoardController {
	@Autowired
	private Review_BoardService review_Boardservice;
	
	// �˻� ���� ��� ����
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("����", "TITLE");
		conditionMap.put("����", "CONTENT");
		return conditionMap;
	}
	
	// �� ���
	@RequestMapping(value="/insertReview_Board.do") // value= ���� ����
	public String insertReview_Board(Review_BoardVO vo) {
		System.out.println("�� ��� ó��");
		
		review_Boardservice.insertReview_Board(vo);
		return "redirect:getReview_BoardList.do";
	}
	
	// �� ����
	@RequestMapping("/updateReview_Board.do")
	public String updateReview_Board(@ModelAttribute("review_Board") Review_BoardVO vo) {
		
		System.out.println("��ȣ " + vo.getSeq());
		System.out.println("����: " + vo.getTitle());
		System.out.println("�ۼ��� : " + vo.getWriter());
		System.out.println("����: " + vo.getContent());
		System.out.println("�����: " + vo.getRegDate());
		System.out.println("��ȸ��: " + vo.getCnt());
		System.out.println("��õ��: " + vo.getRecmd());
		System.out.println("ID: " + vo.getId());
		
		review_Boardservice.updateReview_Board(vo);
		return "getReview_BoardList.do";
	}
	
	// �� ����
	@RequestMapping("/deleteReview_Board.do")
	public String deleteReview_Board(Review_BoardVO vo) {
		System.out.println("�� ���� ó��");
		
		review_Boardservice.deleteReview_Board(vo);
		return "getReview_BoardList.do";
	}
	
	// �� �� ��ȸ
	@RequestMapping("/getReview_Board.do")
	public String getReview_Board(Review_BoardVO vo, Model model){
		System.out.println("�� �� ��ȸ ó��");
		
		review_Boardservice.cntReview_Board(vo);
		model.addAttribute("review_Board", review_Boardservice.getReview_Board(vo)); // Model ���� ����
		return "getReview_Board.jsp"; // View �̸� ����
	}
	
	// �� ��� �˻�
	@RequestMapping("/getReview_BoardList.do")
	public String getReview_BoardList (Review_BoardVO vo, Model model){
		System.out.println("!�� ��� �˻� ��� ó��");
		
		// Null Check
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		model.addAttribute("review_BoardList", review_Boardservice.getReview_BoardList(vo)); // Model ���� ����
		return "getReview_BoardList.jsp"; // View �̸� ����
	}

}
