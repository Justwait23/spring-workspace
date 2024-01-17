package com.ezen.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.ezen.board.dto.ReplyDTO;

public interface ReplyMapper {
	
	List<ReplyDTO> getBoardReplies(int board_id);
	
	void updateReplyCount(int board_id);
	
//	@Select("SELECT * FROM myreply WHERE board_id=#{board_id}")
//	ReplyDTO getBoardReplies2(int board_id);
//	
//	@Select("SELECT * FROM myreply")
//	ReplyDTO getAllreplies();
//	
//	@Select("SELECT COUNT(*) FROM myreply WHERE board_id =#{board_id} GROUP by board_id")
//	Integer getRepliesCount(int board_id);

}
