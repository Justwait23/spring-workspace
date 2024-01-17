package com.ezen.board.mapper;

import java.util.List;

import com.ezen.board.dto.BoardDTO;
import com.ezen.board.dto.ReplyDTO;

public interface BoardMapper {
	
	List<BoardDTO> getAll();
	
	BoardDTO get(int board_id);
	
	int insert(BoardDTO dto);
	
}
