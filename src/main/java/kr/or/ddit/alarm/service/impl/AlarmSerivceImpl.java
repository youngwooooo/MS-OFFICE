package kr.or.ddit.alarm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.alarm.mapper.AlarmMapper;
import kr.or.ddit.alarm.service.AlarmService;
import kr.or.ddit.alarm.vo.AlarmVO;

@Service
public class AlarmSerivceImpl implements AlarmService{

	@Autowired
	AlarmMapper am;
	
	@Override
	public int createAlarm(AlarmVO alarmVO) {
		int result = am.createAlarm(alarmVO);
		return result;
	}

	@Override
	public List<AlarmVO> getAlarmList(String empno) {
		return am.getAlarmList(empno);
	}

	@Override
	public int editNewAt(int newNo) {
		return am.editNewAt(newNo);
	}

	
}
