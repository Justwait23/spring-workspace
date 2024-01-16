package com.ezen.board.mapper;

import java.util.List;

import com.ezen.board.dto.BoardDTO;

public interface BoardMapperXML {
	
	List<BoardDTO> getAll();
	
	BoardDTO get(int board_id);
	
	int wirte(BoardDTO dto);
	
	int delete(BoardDTO dto);

}
