package kr.or.ddit.calendar.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.calendar.vo.CalendarVO;

public interface CalendarService {
	// 모든 일정 목록 가져오기
	public List<CalendarVO> selectScheduleList(String empno);
	// 일정 수정
	public int editSchedule(CalendarVO calendarVO);
	// 일정 삭제
	public int deleteSchedule(int schdulNo);
	// 일정 등록
	public int createSchedule(CalendarVO calendarVO);
	// 메인화면 - 캘린더 - '일' 클릭 시, 해당 일의 일정 정보가져오기
	public List<CalendarVO> todayScheduleList(Map<String, Object> map);
	// 해당 세션에 해당되는 카테고리 가져오기
	public List<CalendarVO> selectCategoryList(String empno);
	// 카테고리 등록
	public int createCategory(CalendarVO calendarVO);
	// 카테고리 삭제
	public int deleteCategory(int categoryNo);
	// 등록된 카테고리 색 변경
	public int editCategoryColor(Map<String, Object> map);

}
