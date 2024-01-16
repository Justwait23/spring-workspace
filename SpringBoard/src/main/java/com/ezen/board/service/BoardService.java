package com.ezen.board.service;

import org.springframework.ui.Model;

import com.ezen.board.dto.BoardDTO;

public interface BoardService {
	
	void getBoardList(Model model);
	
	void get(int board_id);
	
	int write(BoardDTO dto);
	

}
