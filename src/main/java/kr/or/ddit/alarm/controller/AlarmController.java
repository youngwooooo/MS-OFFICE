package kr.or.ddit.alarm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.alarm.service.AlarmService;
import kr.or.ddit.alarm.vo.AlarmVO;
import oracle.jdbc.proxy.annotation.Post;


@Controller
@RequestMapping("/alarm")
public class AlarmController {
	
	@Autowired
	AlarmService as;
	
	@ResponseBody
	@PostMapping("/getAlarmList")
	public List<AlarmVO> getAlarmList(@RequestParam String empno){
		return as.getAlarmList(empno);
	}
	
	@ResponseBody
	@PostMapping("/editNewAt")
	public int editNewAt(@RequestParam int newNo) {
		return as.editNewAt(newNo);
	}
}
