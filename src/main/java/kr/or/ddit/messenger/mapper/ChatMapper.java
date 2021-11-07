package kr.or.ddit.messenger.mapper;

import java.util.List;

import kr.or.ddit.messenger.vo.ChatVO;

public interface ChatMapper {

	int chatInsert(ChatVO chatVo);

	List<String> chatRoomList(ChatVO chatVo);

	List<ChatVO> chatListByEmpno(ChatVO chatVo);

	ChatVO chatLastByEmpno(ChatVO chatVo);
	
	List<ChatVO> chatRoomNoAndPrtcpnt(ChatVO chatVo);

	void lastTm(ChatVO chatVo);
	
	List<ChatVO> noReadChatCount(ChatVO chatVo);
}
