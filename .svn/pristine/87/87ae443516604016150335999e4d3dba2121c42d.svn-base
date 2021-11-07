package kr.or.ddit.EA.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.EA.service.EAService;
import kr.or.ddit.EA.vo.DrftVO;
import kr.or.ddit.EA.vo.LineVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;
import kr.or.ddit.util.Pagination;

@RequestMapping(value="/EA")
@Controller
public class EAController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private EAService eaService;

	@RequestMapping(value="/home")
	public String home(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}
		
		List<DrftVO> myDrftList = eaService.myDrftList(empno); //내가 신청한 문서 4개까지
		List<DrftVO> procDrftList = eaService.procDrftList(); //지금 진행중인 문서 5개까지
		List<DrftVO> complDrftList = eaService.complDrftList(); //완료된 문서 5개까지
		
		model.addAttribute("myDrftList", myDrftList);
		model.addAttribute("procDrftList", procDrftList);
		model.addAttribute("complDrftList", complDrftList);
		
		return "EA/home";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String insert() {
		return "EA/insert";
	}
	
	@RequestMapping(value="/insertDrft" ,method=RequestMethod.POST)
	public String insertDrft(@ModelAttribute EmpVOList empVoList, DrftVO drftVo) {
		
		int result = eaService.insert(empVoList, drftVo);
		if(result > 0) {
			logger.info("기안서 등록 성공");
		}else {
			logger.info("기안서 등록 실패");
		}
		
		return "redirect:/EA/home";
	}
	
	@RequestMapping(value="/document", method=RequestMethod.GET)
	public String document(@RequestParam(defaultValue = "1") String currentPage, @RequestParam Map<String,Object> map, Model model) {
		
		if(map.get("currentPage")==null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		if(map.get("selSearch")==null) {
			logger.info("selSearch null");
			map.put("selSearch", "");
		}
		if(map.get("keyword")==null) {
			logger.info("keyword null");
			map.put("keyword", "");
		}
		if(map.get("drftProgrsNm")==null) {
			map.put("drftProgrsNm", "");
		}else {
			logger.info(map.get("drftProgrsNm") + "");
		}
		
		List<DrftVO> list = eaService.selectAll(map);
		model.addAttribute("list", list);
		
		int total = eaService.selectCount(map);
		int startNum = Integer.parseInt(currentPage) * 12 - 11 ;
		int endNum = Integer.parseInt(currentPage) * 12;
		if(endNum > total) {
			endNum = total;
		}
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 12);
		model.addAttribute("paging", pagination);
		
		return "EA/document";
	}
	
	@RequestMapping(value="/document/detail", method=RequestMethod.GET)
	public String documentDetail(@RequestParam String drftNo, Model model) {
		
		DrftVO drftVo = eaService.selectOne(drftNo);
		model.addAttribute("drftVo", drftVo);
		
		String sanctnNo = drftVo.getSanctnNo();
		List<LineVO> lineVolist = eaService.selectLine(sanctnNo);
		model.addAttribute("lineVolist", lineVolist);
		
		return "EA/selectDetail";
	}
	
	@RequestMapping(value="/documentWait", method=RequestMethod.GET)
	public String doucmentWait(@RequestParam(defaultValue = "1") String currentPage, @RequestParam Map<String,Object> map, Model model, HttpServletRequest request) {
		
		if(map.get("currentPage")==null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		if(map.get("selSearch")==null) {
			logger.info("selSearch null");
			map.put("selSearch", "");
		}
		if(map.get("keyword")==null) {
			logger.info("keyword null");
			map.put("keyword", "");
		}
		if(map.get("drftProgrsNm")==null) {
			map.put("drftProgrsNm", "");
		}
		
		HttpSession session = request.getSession();
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO)session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}
		
		map.put("empno", empno);
		
		List<DrftVO> list = eaService.selectAllWait(map);
		model.addAttribute("list", list);
		
		int total = eaService.selectWaitCount(map);
		int startNum = Integer.parseInt(currentPage) * 12 - 11 ;
		int endNum = Integer.parseInt(currentPage) * 12;
		if(endNum > total) {
			endNum = total;
		}
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 12);
		model.addAttribute("paging", pagination);
		
		
		return "EA/documentWait";
	}
	
	@RequestMapping(value="/documentWait/detail", method=RequestMethod.GET)
	public String documentDetailWait(@RequestParam String drftNo, Model model) {
		
		DrftVO drftVo = eaService.selectOne(drftNo);
		model.addAttribute("drftVo", drftVo);
		
		String sanctnNo = drftVo.getSanctnNo();
		List<LineVO> lineVolist = eaService.selectLine(sanctnNo);
		model.addAttribute("lineVolist", lineVolist);
		
		return "EA/selectDetailWait";
	}
	
	@RequestMapping(value="/documentDept", method=RequestMethod.GET)
	public String documentDept(@RequestParam(defaultValue = "1") String currentPage, @RequestParam Map<String,Object> map, Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String empno = "";
		String coDeptNm = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO)session.getAttribute("empVo");
			empno = empVo.getEmpno();
			coDeptNm = empVo.getDeptNm();
			map.put("coDeptNm", coDeptNm);
		}
		
		if(map.get("currentPage")==null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		if(map.get("selSearch")==null) {
			logger.info("selSearch null");
			map.put("selSearch", "");
		}
		if(map.get("keyword")==null) {
			logger.info("keyword null");
			map.put("keyword", "");
		}
		if(map.get("drftProgrsNm")==null) {
			map.put("drftProgrsNm", "");
		}else {
			logger.info(map.get("drftProgrsNm") + "");
		}
		
		List<DrftVO> list = eaService.selectAll(map);
		model.addAttribute("list", list);
		
		int total = eaService.selectCount(map);
		int startNum = Integer.parseInt(currentPage) * 12 - 11 ;
		int endNum = Integer.parseInt(currentPage) * 12;
		if(endNum > total) {
			endNum = total;
		}
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 12);
		model.addAttribute("paging", pagination);
		
		return "EA/documentDept";
	}
	
	@RequestMapping(value="/drftUpdate", method=RequestMethod.GET)
	public String documentDept(@RequestParam String drftNo, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}
		Map<String, Object> map = new HashMap<>();
		map.put("empno", empno);
		map.put("drftNo", drftNo);
		
		int result = eaService.drftUpdate(map);
		if(result > 0) {
			logger.info("승인 성공");
		}else{
			logger.info("승인 실패");
		}
		
		return "redirect:/EA/documentWait?drftProgrsNm=&currentPage=1&selSearch=&keyword=";
	}
	
	@RequestMapping(value="/drftReject", method=RequestMethod.GET)
	public String drftReject(@RequestParam String drftNo, Model model, HttpServletRequest request, Map<String, Object> map) {
		
		HttpSession session = request.getSession();
		
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}
		
		map.put("empno", empno);
		map.put("drftNo", drftNo);
		
		int result = eaService.drftReject(map);
		
		return "redirect:/EA/documentWait?drftProgrsNm=&currentPage=1&selSearch=&keyword=";
	}
	
	@RequestMapping(value="/insertVacation", method=RequestMethod.GET)
	public String insertVacation() {
		
		return "EA/insertVacation";
	}
	@RequestMapping(value="/insertVacation", method=RequestMethod.POST)
	public String insertVacationPost(@ModelAttribute EmpVOList empVoList, DrftVO drftVo) {
		logger.info(drftVo.getBeginDe());
		logger.info(drftVo.getEndDe());
		logger.info(drftVo.getVcatnDe());
		
		int result = eaService.insertVacation(empVoList, drftVo);
		if(result > 0) {
			logger.info("기안서 등록 성공");
		}else {
			logger.info("기안서 등록 실패");
		}
		
		return "redirect:/EA/home";
	}
	
	@ResponseBody
	@PostMapping("/getEACount")
	public int getRspnsAtIsNCount(@RequestParam String empno) {
		return eaService.getEACount(empno);
	}
}
