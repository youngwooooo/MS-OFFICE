package kr.or.ddit.ehr.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.ehr.service.EhrService;
import kr.or.ddit.ehr.vo.Ehr2VO;
import kr.or.ddit.ehr.vo.EhrVO;
import kr.or.ddit.ehr.vo.Info2VO;
import kr.or.ddit.ehr.vo.InfoList;
import kr.or.ddit.ehr.vo.InfoVO;
import kr.or.ddit.ehr.vo.VacationVO;
import kr.or.ddit.ehr.vo.WeekWTVO;
import kr.or.ddit.login.vo.EmpVO;

@RequestMapping("/ehr")
@Controller
public class EhrController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private EhrService ehrService;

	@RequestMapping("/content")
	public String home(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
		}
		
		Map<String, String> dateMap = new HashMap<>();

		// logger.info(empNo);

		EhrVO ehrVo = new EhrVO();
		ehrVo.setEmpNo(empNo);
		List<EhrVO> timeList = ehrService.time(ehrVo);

		System.out.println("timeList : " + timeList);
		model.addAttribute("timeList", timeList);

		// logger.info(timeList.get(0).getEmpNo()+"");
		// logger.info(timeList.get(0).getTm());
		// logger.info(timeList.get(0).getRcordCode());

		// 주차 구하기

		Calendar calendar = Calendar.getInstance();
		Calendar calendarEnd = Calendar.getInstance();
		// 현재 날짜로 설정
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH);

		// 현재 달의 시작일과 마지막일 구하기
		int start = calendar.getActualMinimum(Calendar.DAY_OF_MONTH);
		int end = calendarEnd.getActualMaximum(Calendar.DAY_OF_MONTH);
		System.out.println(end);
		// DateFormat에 맞춰 String에 담기

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA);
		calendar.set(year, month, start);
		String startdate = dateFormat.format(calendar.getTime());
		calendarEnd.set(year, month, end);
		String enddate = dateFormat.format(calendarEnd.getTime());
		System.out.println("startdate : " + startdate + "/ enddate : " + enddate);
		// 오늘 날짜의 주의 월화수목금토일 날짜 구하기 시작-----------------
		Map<String, Object> map = new HashMap<String, Object>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date(calendar.getTimeInMillis());

		System.out.println("date : " + date);

		Calendar cal = Calendar.getInstance(Locale.KOREA);

		cal.setTime(date);
		cal.add(Calendar.DATE, 2 - cal.get(Calendar.DAY_OF_WEEK));
		map.put("mon1", sdf.format(cal.getTime()));
		System.out.println("첫번째 요일(월요일)날짜:" + sdf.format(cal.getTime()));
		//
		dateMap.put("mon", sdf.format(cal.getTime()));
		dateMap.put("empno", empNo);
		//
		cal.setTime(date);
		cal.add(Calendar.DATE, 3 - cal.get(Calendar.DAY_OF_WEEK));
		map.put("tue1", sdf.format(cal.getTime()));
		System.out.println("두번째 요일(화요일)날짜:" + sdf.format(cal.getTime()));

		cal.setTime(date);
		cal.add(Calendar.DATE, 4 - cal.get(Calendar.DAY_OF_WEEK));
		map.put("wed1", sdf.format(cal.getTime()));
		System.out.println("세번째 요일(수요일)날짜:" + sdf.format(cal.getTime()));

		cal.setTime(date);
		cal.add(Calendar.DATE, 5 - cal.get(Calendar.DAY_OF_WEEK));
		map.put("thur1", sdf.format(cal.getTime()));
		System.out.println("네번째 요일(목요일)날짜:" + sdf.format(cal.getTime()));

		cal.setTime(date);
		cal.add(Calendar.DATE, 6 - cal.get(Calendar.DAY_OF_WEEK));
		map.put("fri1", sdf.format(cal.getTime()));
		System.out.println("다섯번째 요일(금요일)날짜:" + sdf.format(cal.getTime()));

		cal.setTime(date);
		cal.add(Calendar.DATE, 7 - cal.get(Calendar.DAY_OF_WEEK));
		map.put("sat1", sdf.format(cal.getTime()));
		System.out.println("여섯번째 요일(토요일)날짜:" + sdf.format(cal.getTime()));

		cal.setTime(date);
		cal.add(Calendar.DATE, 8 - cal.get(Calendar.DAY_OF_WEEK));
		map.put("sun1", sdf.format(cal.getTime()));
		System.out.println("마지막 요일(일요일)날짜:" + sdf.format(cal.getTime()));
		
		dateMap.put("sun", sdf.format(cal.getTime()));
		WeekWTVO weekWTVO = ehrService.sumWeekWorkTime(dateMap);
		model.addAttribute("weekWTVO1", weekWTVO);
		// 오늘 날짜의 주의 월화수목금토일 날짜 구하기 끝-----------------

		model.addAttribute("week1", map);

		logger.info("map : " + map);

		for (int i = 1; i < 5; i++) {
			cal.setTime(date);
			cal.add(Calendar.DATE, (i * 7) + 2 - cal.get(Calendar.DAY_OF_WEEK));
			map.put("mon" + (i + 1), sdf.format(cal.getTime()));
			System.out.println("첫번째 요일(월요일)날짜:" + sdf.format(cal.getTime()));
			dateMap.put("mon", sdf.format(cal.getTime()));

			cal.setTime(date);
			cal.add(Calendar.DATE, (i * 7) + 3 - cal.get(Calendar.DAY_OF_WEEK));
			map.put("tue" + (i + 1), sdf.format(cal.getTime()));
			System.out.println("두번째 요일(화요일)날짜:" + sdf.format(cal.getTime()));

			cal.setTime(date);
			cal.add(Calendar.DATE, (i * 7) + 4 - cal.get(Calendar.DAY_OF_WEEK));
			map.put("wed" + (i + 1), sdf.format(cal.getTime()));
			System.out.println("세번째 요일(수요일)날짜:" + sdf.format(cal.getTime()));

			cal.setTime(date);
			cal.add(Calendar.DATE, (i * 7) + 5 - cal.get(Calendar.DAY_OF_WEEK));
			map.put("thur" + (i + 1), sdf.format(cal.getTime()));
			System.out.println("네번째 요일(목요일)날짜:" + sdf.format(cal.getTime()));

			cal.setTime(date);
			cal.add(Calendar.DATE, (i * 7) + 6 - cal.get(Calendar.DAY_OF_WEEK));
			map.put("fri" + (i + 1), sdf.format(cal.getTime()));
			System.out.println("다섯번째 요일(금요일)날짜:" + sdf.format(cal.getTime()));

			cal.setTime(date);
			cal.add(Calendar.DATE, (i * 7) + 7 - cal.get(Calendar.DAY_OF_WEEK));
			map.put("sat" + (i + 1), sdf.format(cal.getTime()));
			System.out.println("여섯번째 요일(토요일)날짜:" + sdf.format(cal.getTime()));

			cal.setTime(date);
			cal.add(Calendar.DATE, (i * 7) + 8 - cal.get(Calendar.DAY_OF_WEEK));
			map.put("sun" + (i + 1), sdf.format(cal.getTime()));
			System.out.println("마지막 요일(일요일)날짜:" + sdf.format(cal.getTime()));
			dateMap.put("sun", sdf.format(cal.getTime()));
			// 오늘 날짜의 주의 월화수목금토일 날짜 구하기 끝-----------------
			weekWTVO = ehrService.sumWeekWorkTime(dateMap);
			model.addAttribute("weekWTVO"+(i+1), weekWTVO);
			model.addAttribute("week" + (i + 1), map);
		}

		List<EhrVO> list = this.ehrService.selectList(ehrVo);
		logger.info("list : " + list);

		model.addAttribute("list", list);

		List<EhrVO> list2 = this.ehrService.selectList2(ehrVo);
		logger.info("list2 : " + list2);

		model.addAttribute("list2", list2);

		List<EhrVO> list3 = this.ehrService.selectList3(ehrVo);
		logger.info("list3 : " + list3);

		model.addAttribute("list3", list3);

		List<EhrVO> list4 = this.ehrService.selectList4(ehrVo);
		logger.info("list4 : " + list4);

		model.addAttribute("list4", list4);
		return "ehr/content";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	@ResponseBody
	public int insert(@ModelAttribute EhrVO ev) {
		int result = ehrService.insert(ev);
		System.out.println(result);
		return result;
	}

	@RequestMapping("/test")
	public String test() {

		return "ehr/test";
	}

	@RequestMapping("/vacation")
	public String vacation(Model model, HttpServletRequest request, @ModelAttribute VacationVO vacationVo, @ModelAttribute EmpVO empVo, @ModelAttribute EhrVO ehrVo) {

		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}

		// logger.info(empNo);

		empVo.setEmpno(empno);
		vacationVo.setEmpno(empno);
		ehrVo.setEmpNo(empno);
		
		List<EhrVO> timeList = ehrService.time(ehrVo);
		System.out.println("timeList : " + timeList);
		model.addAttribute("timeList", timeList);
		
		List<EhrVO> list4 = this.ehrService.selectList4(ehrVo);
		System.out.println("list4 : " + list4);
		model.addAttribute("list4", list4);
		
		List<VacationVO> vs = this.ehrService.vacationselect(vacationVo);
		logger.info("vacationVo : " + vacationVo);
		logger.info("empVo : " + empVo);
		model.addAttribute("vs", vs);

		List<VacationVO> vsing = this.ehrService.vacationVcatnDeing(vacationVo);
		logger.info("vsing : " + vacationVo);
		logger.info("empVo : " + empVo);
		model.addAttribute("vsing", vsing);

		List<EmpVO> ve = this.ehrService.vacationempno(empVo);
		model.addAttribute("ve", ve);
		
		List<VacationVO> vv = this.ehrService.vacationVcatnDe(vacationVo);
		model.addAttribute("vv", vv);

		return "ehr/vacation";
	}

	@RequestMapping(value = "/info")
	public String info(Model model, HttpServletRequest request, InfoVO infoVo, EmpVO empVo) {

		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("(EmpVO) session.getAttribute(\"empVo\") : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		EhrVO ehrVo = new EhrVO();
		ehrVo.setEmpNo(empNo);
		Info2VO info2Vo = new Info2VO();
		info2Vo.setEmpno(empNo);
		List<EhrVO> timeList = ehrService.time(ehrVo);

		System.out.println("timeList : " + timeList);
		model.addAttribute("timeList", timeList);

		List<EhrVO> list = this.ehrService.selectList(ehrVo);
		logger.info("list : " + list);
		model.addAttribute("list", list);

		List<EhrVO> list4 = this.ehrService.selectList4(ehrVo);
		model.addAttribute("list4", list4);

		infoVo.setEmpno(empNo);
		logger.info(infoVo.toString());
		List<InfoVO> si = this.ehrService.infoselect(infoVo);
		model.addAttribute("si", si);
		logger.info("si : " + si);

		List<Info2VO> degree = this.ehrService.degree(info2Vo);
		model.addAttribute("degree", degree);
		List<Info2VO> family = this.ehrService.family(info2Vo);
		model.addAttribute("family", family);
		List<Info2VO> businesstrip = this.ehrService.businesstrip(info2Vo);
		model.addAttribute("businesstrip", businesstrip);
		List<Info2VO> career = this.ehrService.career(info2Vo);
		model.addAttribute("career", career);
		List<Info2VO> education = this.ehrService.education(info2Vo);
		model.addAttribute("education", education);
		List<Info2VO> issued = this.ehrService.issued(info2Vo);
		model.addAttribute("issued", issued);
		List<Info2VO> jobresponsibilities = this.ehrService.jobresponsibilities(info2Vo);
		model.addAttribute("jobresponsibilities", jobresponsibilities);
		List<Info2VO> languagestudy = this.ehrService.languagestudy(info2Vo);
		model.addAttribute("languagestudy", languagestudy);
		List<Info2VO> militaryservice = this.ehrService.militaryservice(info2Vo);
		model.addAttribute("militaryservice", militaryservice);
		List<Info2VO> performanceevaluation = this.ehrService.performanceevaluation(info2Vo);
		model.addAttribute("performanceevaluation", performanceevaluation);
		List<Info2VO> rewardandpunishment = this.ehrService.rewardandpunishment(info2Vo);
		model.addAttribute("rewardandpunishment", rewardandpunishment);
		List<Info2VO> qualification = this.ehrService.qualification(info2Vo);
		model.addAttribute("qualification", qualification);

		return "ehr/info";
	}

	@RequestMapping(value= "/dashboard")
	public String dashboard(@ModelAttribute EhrVO ehrVo, @ModelAttribute Ehr2VO ehr2Vo, EmpVO empVo, Model model, HttpServletRequest request) {
		

		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("(EmpVO) session.getAttribute(\"empVo\") : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		empVo.setEmpno(empNo);
		ehrVo.setEmpNo(empNo);
		ehr2Vo.setEmpNo(empNo);
		
		List<EhrVO> timeList = ehrService.time(ehrVo);
		System.out.println("timeList : " + timeList);
		model.addAttribute("timeList", timeList);
		
		List<EhrVO> list4 = this.ehrService.selectList4(ehrVo);
		System.out.println("list4 : " + list4);
		model.addAttribute("list4", list4);
		
		List<Ehr2VO> ae1 = this.ehrService.allehr2();
		System.out.println("ae1 : " + ae1);
		model.addAttribute("ae1" , ae1);

		
		return "ehr/dashboard";
	}
	@RequestMapping(value = "/infoupdate", method = RequestMethod.POST)
	public String basicinfoupdate(Model model, @ModelAttribute InfoVO infoVo, HttpServletRequest request) {

		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		EhrVO ehrVo = new EhrVO();
		ehrVo.setEmpNo(empNo);

		infoVo.setEmpno(empNo);
		logger.info("infoVo : " + infoVo);

		int ui = this.ehrService.infoupdate(infoVo);
		logger.info("ui : " + ui);

		logger.info("상태정보 : " + infoVo.getState());

		return "redirect:/ehr/info?tag=1";
	}

	@RequestMapping(value = "/time", method = RequestMethod.POST)
	public String time(@ModelAttribute EhrVO ev, HttpServletRequest request) {

		logger.info("ev : " + ev.toString());
		List<EhrVO> ev2 = this.ehrService.time(ev);
		logger.info("ev2 : " + ev2.toString());
		int ev3 = this.ehrService.total(ev);
		logger.info("ev3 : " + ev3);
		HttpSession session = request.getSession(true);
		session.setAttribute("ev", ev2);
		return "redirect:/ehr/content";
	}

	@RequestMapping(value = "/degreeinsert", method = RequestMethod.POST)
	public String degreeinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.degreeinsert(info2Vo);

		return "redirect:/ehr/info?tag=13";
	}

	@RequestMapping(value = "/familyinsert", method = RequestMethod.POST)
	public String familyinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.familyinsert(info2Vo);

		return "redirect:/ehr/info?tag=14";
	}

	@RequestMapping(value = "/btinsert", method = RequestMethod.POST)
	public String btinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.btinsert(info2Vo);

		return "redirect:/ehr/info?tag=12";
	}

	@RequestMapping(value = "/careerinsert", method = RequestMethod.POST)
	public String careerinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.careerinsert(info2Vo);

		return "redirect:/ehr/info?tag=5";
	}

	@RequestMapping(value = "/educationinsert", method = RequestMethod.POST)
	public String educationinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.educationinsert(info2Vo);

		return "redirect:/ehr/info?tag=8";
	}

	@RequestMapping(value = "/issuedinsert", method = RequestMethod.POST)
	public String issuedinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.issuedinsert(info2Vo);

		return "redirect:/ehr/info?tag=4";
	}

	@RequestMapping(value = "/jrinsert", method = RequestMethod.POST)
	public String jrinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.jrinsert(info2Vo);

		return "redirect:/ehr/info?tag=3";
	}

	@RequestMapping(value = "/languagestudyinsert", method = RequestMethod.POST)
	public String languagestudyinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.languagestudyinsert(info2Vo);

		return "redirect:/ehr/info?tag=10";
	}

	@RequestMapping(value = "/militaryinsert", method = RequestMethod.POST)
	public String militaryinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.militaryinsert(info2Vo);

		return "redirect:/ehr/info?tag=11";
	}

	@RequestMapping(value = "/peinsert", method = RequestMethod.POST)
	public String peinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.peinsert(info2Vo);

		return "redirect:/ehr/info?tag=7";
	}

	@RequestMapping(value = "/rapinsert", method = RequestMethod.POST)
	public String rapinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.rapinsert(info2Vo);

		return "redirect:/ehr/info?tag=6";
	}

	@RequestMapping(value = "/qualificationinsert", method = RequestMethod.POST)
	public String qualificationinsert(@ModelAttribute Info2VO info2Vo, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}
		info2Vo.setEmpno(empno);
		this.ehrService.qualificationinsert(info2Vo);

		return "redirect:/ehr/info?tag=9";
	}

	@RequestMapping(value = "/businesstripupdate", method = RequestMethod.POST)
	public String businesstripupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int bu = this.ehrService.businesstripupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=12";
	}

	@RequestMapping(value = "/careerupdate", method = RequestMethod.POST)
	public String careerupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int cu = this.ehrService.careerupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=5";
	}

	@RequestMapping(value = "/degreeupdate", method = RequestMethod.POST)
	public String degreeupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int du = this.ehrService.degreeupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=13";
	}

	@RequestMapping(value = "/educationupdate", method = RequestMethod.POST)
	public String educationupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int eu = this.ehrService.educationupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=8";
	}

	@RequestMapping(value = "/familyupdate", method = RequestMethod.POST)
	public String familyupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int fu = this.ehrService.familyupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=14";
	}

	@RequestMapping(value = "/issuedupdate", method = RequestMethod.POST)
	public String issuedupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int iu = this.ehrService.issuedupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=4";
	}

	@RequestMapping(value = "/jobresponsibilitiesupdate", method = RequestMethod.POST)
	public String jobresponsibilitiesupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int ju = this.ehrService.jobresponsibilitiesupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=3";
	}

	@RequestMapping(value = "/languagestudyupdate", method = RequestMethod.POST)
	public String languagestudyupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int lu = this.ehrService.languagestudyupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=10";
	}

	@RequestMapping(value = "/performanceevaluationupdate", method = RequestMethod.POST)
	public String performanceevaluationupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int pu = this.ehrService.performanceevaluationupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=7";
	}

	@RequestMapping(value = "/qualificationupdate", method = RequestMethod.POST)
	public String qualificationupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int qu = this.ehrService.qualificationupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=9";
	}

	@RequestMapping(value = "/rewardandpunishmentupdate", method = RequestMethod.POST)
	public String rewardandpunishmentupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int ru = this.ehrService.rewardandpunishmentupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=6";
	}

	@RequestMapping(value = "/militaryserviceupdate", method = RequestMethod.POST)
	public String militaryserviceupdate(@ModelAttribute InfoList infoList, HttpServletRequest request) {
		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		for (Info2VO info2Vo : infoList.getInfo2VoList()) {

			info2Vo.setEmpno(empNo);
			logger.info("info2Vo : " + info2Vo);

			int mu = this.ehrService.militaryserviceupdate(info2Vo);
		}

		return "redirect:/ehr/info?tag=11";
	}

	@RequestMapping(value = "/bodyupdate", method = RequestMethod.POST)
	public String bodyupdate(Model model, @ModelAttribute InfoVO infoVo, HttpServletRequest request) {

		HttpSession session = request.getSession();

		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
		}

		// logger.info(empNo);

		EhrVO ehrVo = new EhrVO();
		ehrVo.setEmpNo(empNo);

		infoVo.setEmpno(empNo);
		logger.info("infoVo : " + infoVo);

		int ui = this.ehrService.bodyupdate(infoVo);
		logger.info("ui : " + ui);

		logger.info("상태정보 : " + infoVo.getState());

		return "redirect:/ehr/info?tag=2";
	}

	@RequestMapping(value = "/businesstripdelete", method = RequestMethod.GET)
	public String businesstripdelete(@RequestParam String btno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(btno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.businesstripdelete(info2Vo);

		return "redirect:/ehr/info?tag=12";
	}

	@RequestMapping(value = "/careerdelete", method = RequestMethod.GET)
	public String careerdelete(@RequestParam String careerno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(careerno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.careerdelete(info2Vo);

		return "redirect:/ehr/info?tag=5";
	}

	@RequestMapping(value = "/degreedelete", method = RequestMethod.GET)
	public String degreedelete(@RequestParam String degreeno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(degreeno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.degreedelete(info2Vo);

		return "redirect:/ehr/info?tag=13";
	}

	@RequestMapping(value = "/educationdelete", method = RequestMethod.GET)
	public String educationdelete(@RequestParam String educationno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(educationno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.educationdelete(info2Vo);

		return "redirect:/ehr/info?tag=8";
	}

	@RequestMapping(value = "/familydelete", method = RequestMethod.GET)
	public String familydelete(@RequestParam String familyno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(familyno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.familydelete(info2Vo);

		return "redirect:/ehr/info?tag=14";
	}

	@RequestMapping(value = "/issueddelete", method = RequestMethod.GET)
	public String issueddelete(@RequestParam String issuedno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(issuedno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.issueddelete(info2Vo);

		return "redirect:/ehr/info?tag=4";
	}

	@RequestMapping(value = "/jobresponsibilitiesdelete", method = RequestMethod.GET)
	public String jobresponsibilitiesdelete(@RequestParam String jrno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(jrno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.jobresponsibilitiesdelete(info2Vo);
		logger.info("뭐가 문제임?");
		logger.info("mu : " + mu);
		return "redirect:/ehr/info?tag=3";
	}

	@RequestMapping(value = "/languagestudydelete", method = RequestMethod.GET)
	public String languagestudydelete(@RequestParam String languagestudyno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(languagestudyno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.languagestudydelete(info2Vo);

		return "redirect:/ehr/info?tag=10";
	}

	@RequestMapping(value = "/militaryservicedelete", method = RequestMethod.GET)
	public String militaryservicedelete(@RequestParam String militaryno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(militaryno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.militaryservicedelete(info2Vo);

		return "redirect:/ehr/info?tag=11";
	}

	@RequestMapping(value = "/performanceevaluationdelete", method = RequestMethod.GET)
	public String performanceevaluationdelete(@RequestParam String peno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(peno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.performanceevaluationdelete(info2Vo);

		return "redirect:/ehr/info?tag=7";
	}

	@RequestMapping(value = "/qualificationdelete", method = RequestMethod.GET)
	public String qualificationdelete(@RequestParam String qualificationno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(qualificationno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.qualificationdelete(info2Vo);

		return "redirect:/ehr/info?tag=9";
	}

	@RequestMapping(value = "/rewardandpunishmentdelete", method = RequestMethod.GET)
	public String rewardandpunishmentdelete(@RequestParam String rapno, HttpServletRequest request, Info2VO info2Vo) {

		HttpSession session = request.getSession();
		String empNo = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empNo = empVo.getEmpno();
			logger.info("업데이트에서 세션값 받았나 : " + empVo.getEmpno());
			info2Vo.setEmpno(empNo);
			info2Vo.setJrno(Integer.parseInt(rapno));
		}

		logger.info("empno : " + empNo);
		logger.info("info2vo : " + info2Vo.getJrno());

		int mu = this.ehrService.rewardandpunishmentdelete(info2Vo);

		return "redirect:/ehr/info?tag=6";
	}
}
