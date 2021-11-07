package kr.or.ddit.messenger.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.messenger.mapper.ChatMapper;
import kr.or.ddit.messenger.vo.ChatVO;
import kr.or.ddit.messenger.vo.ChatVO.MessageType;

@RequestMapping("/echo")
public class MessageController extends TextWebSocketHandler{
	
	//chttRoomNo를 키로 가지고 session의 Set을 value로 가지는 HashMap
	private static Map<String, Set<WebSocketSession>> chatRoomMap = new HashMap<String, Set<WebSocketSession>>();
	//세션을 가지고 참가자 id
	private static Map<WebSocketSession, String> empnoMap = new HashMap<WebSocketSession, String>();
	//세션을 가지고 지금 참가한 방 번호
	private static Map<WebSocketSession, String> roomMap = new HashMap<WebSocketSession, String>();

    private static Logger logger = LoggerFactory.getLogger(MessageController.class);
    
    @Autowired
    private ChatMapper chatMapper;
    
    private final ObjectMapper objectMapper = new ObjectMapper();
    
    //클라이언트가 웹소켓 서버로 메시지를 전송했을 때 실행
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {    	
    	
//	    logger.info("메세지 전송 = {} : {}", session, message.getPayload());
	    
	    String msg = message.getPayload();
	    ChatVO chatVo = objectMapper.readValue(msg, ChatVO.class);
	    
	    empnoMap.put(session, chatVo.getPrtcpntEmpno());
	    roomMap.put(session, chatVo.getChttRoomNo());
	    
	    //메신저에 입장했을 때
	    if(chatVo.getType() == MessageType.CONTACT) {
	    	List<ChatVO> chatRoomList = chatMapper.chatRoomNoAndPrtcpnt(chatVo);
	    	for(ChatVO chatVoC : chatRoomList) {
	    		chatVoC.setType(MessageType.CONTACT);
	    	}
	    	String msgC = objectMapper.writeValueAsString(chatRoomList);
	    	TextMessage messageC = new TextMessage(msgC);
    		session.sendMessage(messageC);
    		
    		//읽지 않은 메세지 확인
    		List<ChatVO> noReadChatList = chatMapper.noReadChatCount(chatVo);
    		for(ChatVO noChatVO : noReadChatList) {
    			noChatVO.setType(MessageType.NOREAD);
    		}
    		String msgCh = objectMapper.writeValueAsString(noReadChatList);
    		TextMessage messageCh = new TextMessage(msgCh);
    		session.sendMessage(messageCh);
    		
	    }
	    
	    //채팅방에 입장했을 때
	    if(chatVo.getType() == MessageType.ENTER) {
	    	//참가자가 속한 채팅방 조회
	    	List<String> chatRoomList = chatMapper.chatRoomList(chatVo);
	    	
	    	List<ChatVO> chatList = chatMapper.chatListByEmpno(chatVo);
	    	
	    	//참가자의 마지막 채팅 확인시각 갱신
	    	chatMapper.lastTm(chatVo);
    	
	    	if(chatRoomMap.get(chatVo.getChttRoomNo()) != null) {
//    			logger.info("기존 채팅방이 존재함");
    			Set<WebSocketSession> sessionSet = chatRoomMap.get(chatVo.getChttRoomNo());
    			//들어온 참가자를 추가한다.
    			sessionSet.add(session);
//    			logger.info("{}세션의 {}를 추가", session.getId(), chatVo.getPrtcpntEmpno());
	    	}else {
//	    		logger.info("기존 채팅방이 존재하지 않음");
	    		Set<WebSocketSession> sessionSet = new HashSet<>();
	    		sessionSet.add(session);
//	    		logger.info("{}세션의 {}를 추가", session.getId(), chatVo.getPrtcpntEmpno());
	    		chatRoomMap.put(chatVo.getChttRoomNo(), sessionSet);
	    	}
	    	
	    	for(ChatVO chat : chatList) {
	    		chat.setType(MessageType.CHAT);
	    		String msg2 = objectMapper.writeValueAsString(chat);
	    		TextMessage message2 = new TextMessage(msg2);
	    		session.sendMessage(message2);
	    	}
	    	
	    	//읽지 않은 메세지 확인
    		List<ChatVO> noReadChatList = chatMapper.noReadChatCount(chatVo);
    		for(ChatVO noChatVO : noReadChatList) {
    			noChatVO.setType(MessageType.NOREAD);
    		}
    		String msgCh = objectMapper.writeValueAsString(noReadChatList);
    		TextMessage messageCh = new TextMessage(msgCh);
    		session.sendMessage(messageCh);
	    	
	    }
	    
	    //채팅을 쳤을 때
	    if(chatVo.getType() == MessageType.CHAT) {
//	    	logger.info("chttRoomNo" + chatVo.getChttRoomNo());
	    	int result = chatMapper.chatInsert(chatVo);
	    	ChatVO chatVo2 = chatMapper.chatLastByEmpno(chatVo);
	    	chatVo2.setType(MessageType.CHAT);
	    	String msg2 = objectMapper.writeValueAsString(chatVo2);
    		TextMessage message2 = new TextMessage(msg2);
	    	Set<WebSocketSession> sessionSet = chatRoomMap.get(chatVo.getChttRoomNo());
	    	for(WebSocketSession session2 : sessionSet) {
	    		session2.sendMessage(message2);
//	    		logger.info("{}에게 {} 전송", session2.getId(), message2.getPayload());
	    	}
	    }
	    
	    //채팅방에서 퇴장했을 때
	    if(chatVo.getType() == MessageType.LEAVE) {
	    	
	    	//참가자의 마지막 채팅 확인시각 갱신
	    	chatMapper.lastTm(chatVo);
	    	
	    	for (Entry<String, Set<WebSocketSession>> entrySet : chatRoomMap.entrySet()) {
	    		if(entrySet.getValue().contains(session) == true) {
	    			entrySet.getValue().remove(session);
//	    			logger.info("{}가 퇴장", session.getId());
	    		}
	    	}
	    	
	    	
	    	Set<WebSocketSession> sessionSet = chatRoomMap.get(chatVo.getChttRoomNo());
	    	sessionSet.remove(session);
	
	    }
    }
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	for (Entry<String, Set<WebSocketSession>> entrySet : chatRoomMap.entrySet()) {
    		if(entrySet.getValue().contains(session) == true) {
    			ChatVO chatVo = new ChatVO();
    			chatVo.setChttRoomNo(roomMap.get(session));
    			chatVo.setPrtcpntEmpno(empnoMap.get(session));
    			chatMapper.lastTm(chatVo);
    			entrySet.getValue().remove(session);
//    			logger.info("{}가 퇴장", session.getId());
    		}
    	}
    }
    
    
}
