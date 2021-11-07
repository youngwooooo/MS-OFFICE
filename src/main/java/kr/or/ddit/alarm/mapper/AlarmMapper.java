package kr.or.ddit.alarm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.alarm.vo.AlarmVO;

@Mapper
public interface AlarmMapper {
	// 알람 등록
	int createAlarm(AlarmVO alarmVO);
	// 로그인 세션에 따른 알람 조회
	List<AlarmVO> getAlarmList(String empno);
	// 알람 확인 여부 업데이트
	int editNewAt(int newNo);
}
