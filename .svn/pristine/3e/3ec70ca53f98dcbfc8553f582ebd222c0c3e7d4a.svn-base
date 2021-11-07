package kr.or.ddit.messenger.controller;

import java.io.IOException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;
import kr.or.ddit.messenger.service.MessengerService;

@Controller
public class MessengerController {
	
	@Autowired
	private MessengerService messengerService;
	
	private ObjectMapper objectMapper;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value="/messenger", method=RequestMethod.GET)
	public String messenger() {
		return "messenger/messenger";
	}
	
	@RequestMapping(value="/messenger_test", method=RequestMethod.GET)
	public String messengerTest() {
		return "messenger/messenger_test";
	}
	
	@ResponseBody
	@RequestMapping(value="/messenger/search", method=RequestMethod.POST)
	public List<EmpVO> messengerSearch(@RequestBody Map<String, String> param) {
		String search = param.get("search");
		logger.info(search);
		List<EmpVO> empList = messengerService.search(search);
		return empList;
	}
	
	@RequestMapping(value="/messenger/exit", method=RequestMethod.POST)
	public String messengerExit(@ModelAttribute EmpVOList empVoList) {
		EmpVO empVo = new EmpVO();
		empVo.setChttRoomNo(empVoList.getChttRoomNo());
		empVo.setEmpno(empVoList.getEmpVoList().get(0).getEmpno());
		int result = messengerService.exitRoom(empVo);
		return "redirect:/messenger";
	}
	
	@RequestMapping(value="/messenger/invite", method=RequestMethod.POST)
	public String messengerInvite(@ModelAttribute EmpVOList empVoList) {
		if(empVoList.getEmpVoList() != null) {
			String chttRoomNo = "";
			if(empVoList.getChttRoomNo() == null) {//방을 새로 만듬
				chttRoomNo = messengerService.nextRoom();				
			}else {
				chttRoomNo = empVoList.getChttRoomNo();//원래 있던 방에 초대
			}
			
			for(EmpVO empVo : empVoList.getEmpVoList()) {
				logger.info(empVo.getEmpno());
				empVo.setChttRoomNo(chttRoomNo);
			}
			int result = messengerService.invite(empVoList.getEmpVoList());
			logger.info(result + "명이 들어있는 채팅방 생성");
		}
		return "redirect:/messenger";
	}
	
	@ResponseBody
	@PostMapping("/getMessageCount")
	public int getRspnsAtIsNCount(@RequestParam String empno) {
		return messengerService.getMessageCount(empno);
	}
	
}
