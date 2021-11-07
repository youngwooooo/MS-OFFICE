package kr.or.ddit.common.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.calendar.service.CalendarService;
import kr.or.ddit.calendar.vo.CalendarVO;
import kr.or.ddit.common.service.CommonService;
import kr.or.ddit.common.vo.CommonVO;
import kr.or.ddit.ehr.service.EhrService;
import kr.or.ddit.ehr.vo.EhrVO;
import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.notice.vo.NoticeVO;
import kr.or.ddit.survey.vo.SurveyVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CommonController {
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Autowired
	CommonService cs;
	
	@Autowired
	EhrService ehrService;
	
	@Autowired
	CalendarService cds;
	
	@Autowired
	FileMapper fm;
	
	@GetMapping("/")
	public String indexLTE() {
		return "/index";
	}
	
	// 메인화면(홈)
	@GetMapping("/index")
	public String index(Model model, HttpSession session, @ModelAttribute EhrVO ehrVo) {
		String empno = "";
		// 세션으로 empno 세팅
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
		}
		
		// 근태관리 vo
		ehrVo = new EhrVO();
		ehrVo.setEmpNo(empno);
		
		// 이름, 직위명, 사진, 소속 가져오기
		EmpVO getProfile = cs.getProfile(empno);
		// 최근에 작성된 미참여한 설문 2건 가져오기
		List<SurveyVO> getSurveyList = cs.getSurveyList(empno);
		// 공지사항 최신 5개 조회
		List<NoticeVO> selectNoticeList = cs.selectNoticeList();
		// 근태관리
		List<EhrVO> timeList = ehrService.time(ehrVo);
		List<EhrVO> list4 = ehrService.selectList4(ehrVo);
		// 최근 알림을 조회(전자결재, 설문, todo, 공지사항)
		List<CommonVO> selectNewList = cs.selectNewList(empno);
		
		model.addAttribute("getProfile", getProfile);
		model.addAttribute("getSurveyList", getSurveyList);
		model.addAttribute("selectNoticeList", selectNoticeList);
		model.addAttribute("timeList", timeList);
		model.addAttribute("list4" , list4);
		model.addAttribute("selectNewList", selectNewList);
		
		return "common/index";
	}
	
	// 해당 사원의 전체 일정 목록 조회
	@ResponseBody
	@GetMapping("/allSchedule")
	public List<CalendarVO> calendarAllSchedule(HttpSession session) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
		}
		
		List<CalendarVO> scheduleList = cds.selectScheduleList(empno);
		return scheduleList;
	}
	
	// 메인화면 - 캘린더 - '일' 클릭 시, 해당 일의 일정 정보 조회
	@ResponseBody
	@PostMapping("/todaySchedule")
	public List<CalendarVO> todayScheduleList(HttpSession session, @RequestParam Map<String, Object> map){
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
			map.put("empno", empno);
		}
		
		List<CalendarVO> todayScheduleList = cds.todayScheduleList(map);
		
		return todayScheduleList;
	}
	
	@GetMapping("/content")
	public String leftMenu() {
		return "common/content";
	}
	
	
	@GetMapping("/calendar")
	public String calendar() {
		return "common/calendar";
	}
	
	// 근태관리
	@PostMapping(value = "/timemain")
	public String time(@ModelAttribute EhrVO ev, HttpServletRequest request) {

		List<EhrVO> ev2 = this.ehrService.time(ev);
		int ev3 = this.ehrService.total(ev);
		HttpSession session = request.getSession(true);
		session.setAttribute("ev", ev2);
		return "redirect:/index";
	}
	
	// 마이 페이지
	@GetMapping("/mypage/{empno}")
	public String mypageGet(@PathVariable("empno") String empno, Model model) {
		EmpVO getEmpInfo = cs.getEmpInfo(empno);
		
		model.addAttribute("getEmpInfo", getEmpInfo);
		
		return "common/mypage";
	}
	
	// 마이 페이지 수정
	@PostMapping("/mypageEdit")
	public String mypageEdit(@ModelAttribute EmpVO empVO, @ModelAttribute FileVO fileVO, HttpSession session) {
		logger.info("마이페이지 회원 수정 정보 : " + empVO.toString());
		logger.info("마이페이지 파일 정보 : " + fileVO.toString());
		
		int result = cs.mypageEdit(empVO, fileVO);
		if(result > 0) {
			EmpVO empVo2 = (EmpVO) session.getAttribute("empVo");
			logger.info("세션? : " + empVo2);
			empVo2.setFileNo(String.valueOf(fileVO.getFileNo()));
			empVo2.setFileNm(fileVO.getFileNm());
			empVo2.setFileCours("/resources/upload/" + fileVO.getFileCours());
			empVo2.setFileOrginlNm(fileVO.getFileOrginlNm());
			
			session.setAttribute("empVo2", empVo2);
			
			return "redirect:/mypage/" + empVO.getEmpno();
		}else {
			return null;
		}
		
	}
	
	// 사진 엑박 방지
	@GetMapping("/reload")
	public void reload(@RequestParam int fileNo, HttpServletResponse resp) throws IOException {
		List<FileVO> fileVO = fm.fileSelect(fileNo);
		logger.info("fileVO : " + fileVO);
		
		String fileCours = "C:\\upload\\" + fileVO.get(0).getFileCours(); 
		
		File file = new File(fileCours, fileVO.get(0).getFileNm());
		
		byte[] bytes = FileUtils.readFileToByteArray(file);
		resp.setHeader("Content-Disposition", "attachment;filename=\"" + fileVO.get(0).getFileOrginlNm() +"\"");
		resp.setHeader("Content-Transfer-Encoding", "binary");
		resp.getOutputStream().write(bytes);
		
	}
	// 사진 엑박 방지
	@GetMapping("/reload2")
	public void reload2(@RequestParam int fileNo, @RequestParam int fileOrdr, HttpServletResponse resp) throws IOException {
		List<FileVO> fileVO = fm.fileSelect(fileNo);
		logger.info("fileVO : " + fileVO);
		
		String fileCours = "C:\\upload\\" + fileVO.get(fileOrdr-1).getFileCours(); 
		
		File file = new File(fileCours, fileVO.get(fileOrdr-1).getFileNm());
		logger.info("file : " + file);
		
		byte[] bytes = FileUtils.readFileToByteArray(file);
		resp.setHeader("Content-Disposition", "attachment;filename=\"" + fileVO.get(fileOrdr-1).getFileOrginlNm() +"\"");
		resp.setHeader("Content-Transfer-Encoding", "binary");
		resp.getOutputStream().write(bytes);
		
	}
	
	
	@GetMapping("/reloadByEmpno")
	public void reloadByEmpno(@RequestParam String empno, HttpServletResponse resp) throws IOException {
		List<FileVO> fileVO = fm.fileSelectByEmpno(empno);
		logger.info("fileVO : " + fileVO);
		String fileCours = "C:\\upload\\" + fileVO.get(0).getFileCours(); 
		
		File file = new File(fileCours, fileVO.get(0).getFileNm());
		
		byte[] bytes = FileUtils.readFileToByteArray(file);
		resp.setHeader("Content-Disposition", "attachment;filename=\"" + fileVO.get(0).getFileOrginlNm() +"\"");
		resp.setHeader("Content-Transfer-Encoding", "binary");
		resp.getOutputStream().write(bytes);
	}
	
	
}
