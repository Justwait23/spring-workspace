package com.ezen.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ezen.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/board/index")
	public void getLlist(Model model) {
		boardService.getBoardList(model);
	}
	
	@PostMapping("/board/detail")
	public String detail(Model model, Integer board_id) {
		
		return null;
	}
}
