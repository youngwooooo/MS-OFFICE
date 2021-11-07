package kr.or.ddit.calendar.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.calendar.mapper.CalendarMapper;
import kr.or.ddit.calendar.service.CalendarService;
import kr.or.ddit.calendar.vo.CalendarVO;

@Service
public class CalendarServiceImpl implements CalendarService{
	
	@Autowired
	private CalendarMapper cm;
	
	// 모든 일정 목록 가져오기
	@Override
	public List<CalendarVO> selectScheduleList(String empno){
		return cm.selectScheduleList(empno);
	}
	
	// 일정 수정
	@Override
	public int editSchedule(CalendarVO calendarVO) {
		return cm.editSchedule(calendarVO);
	}

	// 일정 삭제
	@Override
	public int deleteSchedule(int schdulNo) {
		return cm.deleteSchedule(schdulNo);
	}

	@Override
	public int createSchedule(CalendarVO calendarVO) {
		return cm.createSchedule(calendarVO);
	}
	
	// 메인화면 - 캘린더 - '일' 클릭 시, 해당 일의 일정 정보가져오기
	@Override
	public List<CalendarVO> todayScheduleList(Map<String, Object> map) {
		return cm.todayScheduleList(map);
	}
	
	// 해당 세션에 따른 카테고리 목록 조회
	@Override
	public List<CalendarVO> selectCategoryList(String empno) {
		return cm.selectCategoryList(empno);
	}
	
	// 카테고리 등록
	@Override
	public int createCategory(CalendarVO calendarVO) {
		return cm.createCategory(calendarVO);
	}
	
	// 카테고리 삭제 시 관련된 일정도 삭제
	@Override
	public int deleteCategory(int categoryNo) {
		int deleteCategoryResult = cm.deleteCategory(categoryNo);
		if(deleteCategoryResult > 0 ) {
			cm.deleteCategorySchedule(categoryNo);
		}
		return deleteCategoryResult;
	}
	
	// 등록된 카테고리 색 변경
	@Override
	public int editCategoryColor(Map<String, Object> map) {
		return cm.editCategoryColor(map);
	}
	
}
