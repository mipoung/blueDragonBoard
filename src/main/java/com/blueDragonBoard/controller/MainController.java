package com.blueDragonBoard.controller;

import java.security.PublicKey;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.blueDragonBoard.service.BoardService;
import com.blueDragonBoard.vo.BoardVo;

@Controller
public class MainController {
	
	@Autowired
	BoardService boardService;
	
//	@GetMapping("/")
//	public String test(Model model) {
//		
//		List<BoardVO> list = boardService.boardList();
//		model.addAttribute("list", list);
//		return "index";
//	}
	
	@GetMapping("/")
	public String main(Model model) {
		
		List<BoardVo> list = boardService.boardList();
		model.addAttribute("list", list);
		return "board/main";
	}
	
	
	@GetMapping("/writeBoard")
	public String writeBoard() {
		return "board/writeBoard";
	}
	
//	@PostMapping("/insertBoard")
//	public void insertBoard() {
//		
//	}
	
	@PostMapping("/boardInsert")
	public String boardInsert(BoardVo bvo,Model model) throws Exception{
		int result = 0;
		String url="";
		
		result = boardService.boardInsert(bvo);
		
		if(result == 1) {
			url = "/";
		}	else {
			url="/writeForm";
		}
		
		return "redirect:"+url;
	}
	
	
}
