package kr.or.ddit.calendar.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.calendar.service.CalendarService;
import kr.or.ddit.calendar.vo.CalendarVO;
import kr.or.ddit.login.vo.EmpVO;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("/calendar")
@Slf4j
@Controller
public class CalendarController {
	private final Logger logger = LoggerFactory.getLogger(CalendarController.class);
	
	@Autowired
	private CalendarService cs;
	
	// 캘린더 홈
	@GetMapping("/home")
	public String calendarHome(HttpSession session, Model model) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
		}
		
		// 카테고리 조회
		List<CalendarVO> selectCategoryList = cs.selectCategoryList(empno);
		
		model.addAttribute("selectCategoryList", selectCategoryList);
		
		return "calendar/calendarHome";
	}
	
	// 세션에 따른 모든 일정 조회
	@ResponseBody
	@GetMapping("/allSchedule")
	public List<CalendarVO> calendarAllSchedule(HttpSession session) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
		}
		
		List<CalendarVO> scheduleList = cs.selectScheduleList(empno);
		return scheduleList;
	}
	
	// 일정 수정
	@PostMapping("/edit")
	public String calendarEdit(@ModelAttribute CalendarVO calendarVO) {
		logger.info("calendarVO : " + calendarVO);
		int result = cs.editSchedule(calendarVO);
		return "redirect:/calendar/home";
	}
	
	// 일정 삭제
	@PostMapping("/delete")
	public String calendarDelete(@RequestParam int schdulNo) {
		int result = cs.deleteSchedule(schdulNo);
		return "redirect:/calendar/home";
	}
	
	// 일정 등록
	@PostMapping("/create")
	public String calenderCreate(@ModelAttribute CalendarVO calendarVO) {
		logger.info("일정등록 파라미터 : " +calendarVO);
		int result = cs.createSchedule(calendarVO);
		return "redirect:/calendar/home";
	}
	
	// 카테고리 등록
	@PostMapping("/createCategory")
	public String createCategory(@ModelAttribute CalendarVO calendarVO) {
		int result = cs.createCategory(calendarVO);
		return "redirect:/calendar/home";
	}
	
	
	// 카테고리 삭제(해당 카테고리의 일정도 함께 삭제)
	@ResponseBody
	@PostMapping("/deleteCategory")
	public int deleteCategory(@RequestParam int categoryNo) {
		logger.info("카테고리 번호 : " + categoryNo);
		int result = cs.deleteCategory(categoryNo);
		return result;
	}
	
	// 등록된 카테고리 색 변경
	@ResponseBody
	@PostMapping("/editCategoryColor")
	public int editCategoryColor(@RequestParam Map<String, Object> map) {
		int result = cs.editCategoryColor(map);
		return result;
	}
	
}
