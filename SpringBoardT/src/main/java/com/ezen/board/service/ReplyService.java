package com.ezen.board.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.board.dto.ReplyDTO;

public interface ReplyService {
	
	List<ReplyDTO> list(int board_id);
	
	void replyCount(int board_id);
	
	int add(ReplyDTO dto);
	

}
