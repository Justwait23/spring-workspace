package com.ezen.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.board.dto.ReplyDTO;
import com.ezen.board.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	ReplyMapper replyMapper;

	@Override
	public List<ReplyDTO> list(int board_id) {
		List<ReplyDTO> replies = replyMapper.getBoardReplies(board_id);
//		System.out.println("Replies: " + replies);
		return replies;
	}

	@Override
	public void replyCount(int board_id) {
		replyMapper.updateReplyCount(board_id);
	}




	
	
	
}
