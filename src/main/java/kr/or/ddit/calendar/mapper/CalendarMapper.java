package kr.or.ddit.calendar.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.calendar.vo.CalendarVO;

@Mapper
public interface CalendarMapper {
	// 모든 일정 목록 가져오기
	List<CalendarVO> selectScheduleList(String empno); 
	//일정 수정
	int editSchedule(CalendarVO calendarVO);
	// 일정 삭제
	int deleteSchedule(int schdulNo);
	// 일정 등록
	int createSchedule(CalendarVO calendarVO);
	// 메인화면 - 캘린더 - '일' 클릭 시, 해당 일의 일정 정보가져오기
	List<CalendarVO> todayScheduleList(Map<String, Object> map);
	// 해당 세션에 해당되는 카테고리 가져오기
	List<CalendarVO> selectCategoryList(String empno);
	// 카테고리 등록
	int createCategory(CalendarVO calendarVO);
	// 카테고리 삭제
	int deleteCategory(int categoryNo);
	// 카테고리 삭제 시 일정 삭제
	int deleteCategorySchedule(int categoryNo);
	// 등록된 카테고리 색 변경
	int editCategoryColor(Map<String, Object> map);

}
