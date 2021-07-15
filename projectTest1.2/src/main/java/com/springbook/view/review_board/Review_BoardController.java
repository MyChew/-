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
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}
	
	// 글 등록
	@RequestMapping(value="/insertReview_Board.do") // value= 생략 가능
	public String insertReview_Board(Review_BoardVO vo) {
		System.out.println("글 등록 처리");
		
		review_Boardservice.insertReview_Board(vo);
		return "redirect:getReview_BoardList.do";
	}
	
	// 글 수정
	@RequestMapping("/updateReview_Board.do")
	public String updateReview_Board(@ModelAttribute("review_Board") Review_BoardVO vo) {
		
		System.out.println("번호 " + vo.getSeq());
		System.out.println("제목: " + vo.getTitle());
		System.out.println("작성자 : " + vo.getWriter());
		System.out.println("내용: " + vo.getContent());
		System.out.println("등록일: " + vo.getRegDate());
		System.out.println("조회수: " + vo.getCnt());
		System.out.println("추천수: " + vo.getRecmd());
		System.out.println("ID: " + vo.getId());
		
		review_Boardservice.updateReview_Board(vo);
		return "getReview_BoardList.do";
	}
	
	// 글 삭제
	@RequestMapping("/deleteReview_Board.do")
	public String deleteReview_Board(Review_BoardVO vo) {
		System.out.println("글 삭제 처리");
		
		review_Boardservice.deleteReview_Board(vo);
		return "getReview_BoardList.do";
	}
	
	// 글 상세 조회
	@RequestMapping("/getReview_Board.do")
	public String getReview_Board(Review_BoardVO vo, Model model){
		System.out.println("글 상세 조회 처리");
		
		review_Boardservice.cntReview_Board(vo);
		model.addAttribute("review_Board", review_Boardservice.getReview_Board(vo)); // Model 정보 저장
		return "getReview_Board.jsp"; // View 이름 리턴
	}
	
	// 글 목록 검색
	@RequestMapping("/getReview_BoardList.do")
	public String getReview_BoardList (Review_BoardVO vo, Model model){
		System.out.println("!글 목록 검색 기능 처리");
		
		// Null Check
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		model.addAttribute("review_BoardList", review_Boardservice.getReview_BoardList(vo)); // Model 정보 저장
		return "getReview_BoardList.jsp"; // View 이름 리턴
	}

}
