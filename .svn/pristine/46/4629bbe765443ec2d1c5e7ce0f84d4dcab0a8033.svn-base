package kr.or.ddit.survey.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.survey.service.SurveyService;
import kr.or.ddit.survey.vo.SurveyChartVO;
import kr.or.ddit.survey.vo.SurveyVO;
import kr.or.ddit.todo.vo.TodoVO;
import kr.or.ddit.util.Pagination;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("/survey")
@Slf4j
@Controller
public class SurveyController {
	private static final Logger logger = LoggerFactory.getLogger(SurveyController.class);
	
	@Autowired
	SurveyService ss;
	
	@Autowired
	FileMapper fm;
	
	// 설문 홈
	@GetMapping("/home")
	public String surveyHome(Model model, HttpSession session) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
		}
		
		List<SurveyVO> AllsurveyListRspnsN = ss.AllsurveyListRspnsN(empno);
		List<SurveyVO> surveyLatelyList = ss.surveyLatelyList(empno);
		
		model.addAttribute("surveyListRspnsN", AllsurveyListRspnsN);
		model.addAttribute("surveyLatelyList", surveyLatelyList);
		
		return "survey/surveyHome";
	}
	
	// 설문 작성 화면
	@GetMapping("/create")
	public String surveyCreate() {
		return "survey/surveyCreate";
	}
	
	// 설문 작성
	@PostMapping("/create")
	public String surveyCreatePost(@ModelAttribute SurveyVO surveyVO) {
		// textarea 줄바꿈 해주기
		String guidanceSntenc = surveyVO.getGuidanceSntenc().replace("\r\n", "<br>");
		surveyVO.setGuidanceSntenc(guidanceSntenc);
		
		logger.info("설문 작성 vo : " + surveyVO);
		
		int result = ss.createQustnr(surveyVO);
		
		if(result > 0) {
			return "redirect:/survey/home";
		}else {
			return "redirect:/survey/create";
		}
	}
	
	// 설문 수정 화면
	@GetMapping("/surveyEdit/{qustnrNo}")
	public String surveyEdit(@PathVariable("qustnrNo") int qustnrNo, Model model) {
		// 설문 중지로 변경
		ss.surveyStatusEditStop(qustnrNo);
		// 해당 설문에 대한 정보
		List<SurveyVO> detailSurveyList = ss.detailSurveyList(qustnrNo);
		// 설문 대상자 조회
		List<SurveyVO> detailSurveyTrgter = ss.detailSurveyTrgter(qustnrNo);
		
		model.addAttribute("detailSurveyList", detailSurveyList);
		model.addAttribute("detailSurveyTrgter", detailSurveyTrgter);
		
		return "survey/surveyEdit";
	}
	
	// 설문 수정
	@PostMapping("/surveyEdit/{qustnrNo}")
	public String surveyEditPost(@ModelAttribute SurveyVO surveyVO) {
		logger.info("설문수정 vo : " + surveyVO);
		int result = ss.surveyEdit(surveyVO);
		if(result > 0) {
			return "redirect:/survey/detail/" + surveyVO.getQustnrNo();
		}else {
			return "redirect:/survey/surveyEdit/" + surveyVO.getQustnrNo();
		}
		
	}
	
	
	// 설문 삭제
	@PostMapping("/delete")
	public String deleteSurvey(@ModelAttribute SurveyVO surveyVO, @RequestParam int flag) {		
		// 설문 상세 페이지에서 수정할 때..
		if(flag == 0) {
			int qustnrNo = surveyVO.getQustnrNo();
			int fileNo = surveyVO.getFileNo();
			// 설문에 첨부파일이 존재할 때..
			if(fileNo > 0) {
				int fileDeleteResult = fm.fileAllDelete(fileNo);
				if(fileDeleteResult > 0) {
					ss.deleteSurvey(qustnrNo);
				}
			}else {
				ss.deleteSurvey(qustnrNo);
			}
			
			return "redirect:/survey/home";
			
		// 내가 만든 설문 페이지에서 수정할 때..
		}else {
			List<Integer> qustnrNoArr = surveyVO.getQustnrNoArr();
			List<Integer> fileNoArr = surveyVO.getFileNoArr();
			
			ss.deleteMineSurvey(qustnrNoArr, fileNoArr);
			
			return "redirect:/survey/mine";
		}
		
	}
	
	// 설문 상세 조회
	@GetMapping("/detail/{qustnrNo}")
	public String surveyDetail(@PathVariable("qustnrNo") int qustnrNo, HttpSession session, Model model) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
		}
		
		Map<String, Object> rspnsMap = new HashMap<String, Object>();
		rspnsMap.put("qustnrNo", qustnrNo);
		rspnsMap.put("empno", empno);
		
		// 설문 + 파일 조회 
		List<SurveyVO> detailSurveyList = ss.detailSurveyList(qustnrNo);
		logger.info("detailSurveyList : " + detailSurveyList);
		// 설문 대상자 조회
		List<SurveyVO> detailSurveyTrgter = ss.detailSurveyTrgter(qustnrNo);
		// 설문 문항 조회
		List<SurveyVO> detailSurveyQesitm = ss.detailSurveyQesitm(qustnrNo);
		// 설문 보기 조회
		List<SurveyVO> detailSurveyEx = ss.detailSurveyEx(qustnrNo);
		// 세션에 따른 응답 여부 조회
		SurveyVO getRspnsAt = ss.getRspnsAt(rspnsMap);
		// 설문 참여한 사람만 조회
		List<SurveyVO> rspnsEmpnoList = ss.rspnsEmpnoList(qustnrNo);
		// 해당 설문에 대한 댓글 전체 조회
		List<SurveyVO> surveyAnswerList = ss.surveyAnswerList(qustnrNo);
		// 평균 점수를 구하기 위한 문항별 점수의 합
		List<SurveyVO> getSumScore = ss.getSumScore(qustnrNo);
		
		model.addAttribute("detailSurveyList", detailSurveyList);
		model.addAttribute("detailSurveyTrgter", detailSurveyTrgter);
		model.addAttribute("detailSurveyQesitm", detailSurveyQesitm);
		model.addAttribute("detailSurveyEx", detailSurveyEx);
		model.addAttribute("getRspnsAt", getRspnsAt);
		model.addAttribute("rspnsEmpnoList", rspnsEmpnoList);
		model.addAttribute("surveyAnswerList", surveyAnswerList);
		model.addAttribute("getSumScore", getSumScore);
		
		return "survey/surveyDetail";
	}
	
	// 설문 상세 조회 수정 화면
	@GetMapping("/detailEdit/{qustnrNo}")
	public String surveyDetailEdit(@PathVariable("qustnrNo") int qustnrNo, HttpSession session, Model model) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
		}
		
		Map<String, Object> rspnsResultMap = new HashMap<String, Object>();
		rspnsResultMap.put("qustnrNo", qustnrNo);
		rspnsResultMap.put("empno", empno);
		
		// 설문 + 파일 조회 
		List<SurveyVO> detailSurveyList = ss.detailSurveyList(qustnrNo);
		// 설문 대상자 조회
		List<SurveyVO> detailSurveyTrgter = ss.detailSurveyTrgter(qustnrNo);
		// 설문 문항 조회
		List<SurveyVO> detailSurveyQesitm = ss.detailSurveyQesitm(qustnrNo);
		// 설문 보기 조회
		List<SurveyVO> detailSurveyEx = ss.detailSurveyEx(qustnrNo);
		// 세션에 따른 응답 전체 결과 조회
		List<SurveyVO> rspnsResultList = ss.rspnsResultList(rspnsResultMap);
		// 해당 설문에 대한 댓글 전체 조회
		List<SurveyVO> surveyAnswerList = ss.surveyAnswerList(qustnrNo);
		// 평균 점수를 구하기 위한 문항별 점수의 합
		List<SurveyVO> getSumScore = ss.getSumScore(qustnrNo);
		
		model.addAttribute("detailSurveyList", detailSurveyList);
		model.addAttribute("detailSurveyTrgter", detailSurveyTrgter);
		model.addAttribute("detailSurveyQesitm", detailSurveyQesitm);
		model.addAttribute("detailSurveyEx", detailSurveyEx);
		model.addAttribute("rspnsResultList", rspnsResultList);
		model.addAttribute("surveyAnswerList", surveyAnswerList);
		model.addAttribute("getSumScore", getSumScore);
		
		
		return "survey/surveyDetailEdit";
	}
	
	// 진행중인 설문 화면
	@GetMapping("/run")
	public String surveyRun(Model model, HttpSession session, @RequestParam(defaultValue = "1") String currentPage, @RequestParam Map<String,Object> map) {
		// 세션 확인
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
			map.put("empno", empno);
		}
		
		if(map.get("currentPage") == null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		if(map.get("selSearch") == null) {
			logger.info("selSearch null");
			map.put("selSearch", "");
		}
		if(map.get("keyword") == null) {
			logger.info("keyword null");
			map.put("keyword", "");
		}
		
		// 진행중인 설문 목록
		List<SurveyVO> runSurveyList = ss.runSurveyList(map);
//		logger.info("진행중인 설문 : " + runSurveyList);
				
		// 페이징 처리
		int total = ss.runSurveyCount(map);
		int startNum =  Integer.parseInt(currentPage)*10 - 9;
		int endNum = Integer.parseInt(currentPage)*10;
		// endNum 보정 작업
		if(endNum > total) {
			endNum = total;
		}
		
//		Map<String, Object> pageInfo =  new HashMap<String, Object>();
//		pageInfo.put("total", total);
//		pageInfo.put("startNum", startNum);
//		pageInfo.put("endNum", endNum);
		
		Pagination paging = new Pagination(total, Integer.parseInt(currentPage), 10);
		
		
		
		model.addAttribute("runSurveyList", runSurveyList);
//		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("paging", paging);
		
		return "survey/surveyRun";
	}
	
	// 마감된 설문 화면
	@GetMapping("/done")
	public String surveyDone(Model model, HttpSession session, @RequestParam(defaultValue = "1") String currentPage, @RequestParam Map<String,Object> map) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
			map.put("empno", empno);
			
		}
		
		if(map.get("currentPage") == null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		if(map.get("selSearch") == null) {
			logger.info("selSearch null");
			map.put("selSearch", "");
		}
		if(map.get("keyword") == null) {
			logger.info("keyword null");
			map.put("keyword", "");
		}
		
		List<SurveyVO> doneSurveyList = ss.doneSurveyList(map);
//		logger.info("마감된 설문 : " + doneSurveyList);
		
		// 페이징 처리
		int total = ss.doneSurveyCount(map);
		int startNum =  Integer.parseInt(currentPage)*10 - 9;
		int endNum = Integer.parseInt(currentPage)*10;
		// endNum 보정 작업
		if(endNum > total) {
			endNum = total;
		}
		
		Pagination paging = new Pagination(total, Integer.parseInt(currentPage), 10);
		
		model.addAttribute("doneSurveyList", doneSurveyList);
		model.addAttribute("paging", paging);
		
		return "survey/surveyDone";
	}
	
	// 내가 만든 설문 화면
	@GetMapping("/mine")
	public String surveyMine(Model model, HttpSession session, @RequestParam(defaultValue = "1") String currentPage, @RequestParam Map<String,Object> map) {
		String empno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			empno = empVO.getEmpno();
			map.put("empno", empno);
		}
		
		if(map.get("currentPage") == null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		if(map.get("selSearch") == null) {
			logger.info("selSearch null");
			map.put("selSearch", "");
		}
		if(map.get("keyword") == null) {
			logger.info("keyword null");
			map.put("keyword", "");
		}
		
		List<SurveyVO> mineSurveyList = ss.mineSurveyList(map);
//		logger.info("내가만든 설문 : " + mineSurveyList);
		
		// 페이징 처리
		int total = ss.mineSurveyCount(map);
		int startNum =  Integer.parseInt(currentPage)*10 - 9;
		int endNum = Integer.parseInt(currentPage)*10;
		// endNum 보정 작업
		if(endNum > total) {
			endNum = total;
		}
		
		Pagination paging = new Pagination(total, Integer.parseInt(currentPage), 10);
		
		model.addAttribute("mineSurveyList", mineSurveyList);
		model.addAttribute("paging", paging);
		
		return "survey/surveyMine";
	}
	
	// 응답 결과 제출
	@PostMapping("/surveySubmit")
	public String surveySubmit(@ModelAttribute SurveyVO surveyVO) {
		logger.info("응답결과 : " + surveyVO);
		int result = ss.createRspns(surveyVO);
		
		if(result > 0) {
			return "redirect:/survey/detail/" + surveyVO.getQustnrNo();
		}else {
			return "redirect:/survey/home";
		}
	}
	
	
	// 응답 결과 차트 정보 조회
	@ResponseBody
	@PostMapping("/resultChart")
	public List<SurveyChartVO> resultChart(@RequestParam int qustnrNo) {
		return ss.selectChartInfo(qustnrNo);
	}
	
	
	// 응답 결과 수정
	@PostMapping("/surveyResultEdit")
	public String surveyResultEdit(@ModelAttribute SurveyVO surveyVO) {
		logger.info("응답수정 : " + surveyVO);
		int result = ss.editRspns(surveyVO);
		
		if(result > 0) {
			return "redirect:/survey/detail/" + surveyVO.getQustnrNo();
		}else {
			return "redirect:/survey/home";
		}
	}
	
	/* 설문 상태 수정  시작*/
	// 설문 진행으로 수정
	@PostMapping("/surveyStatusEditRun")
	public String surveyStatusEditRun(@ModelAttribute SurveyVO surveyVO, @RequestParam int flag) {
		// 설문 상세 페이지에서 수정 시
		if(flag == 0) {
			int qustnrNo = surveyVO.getQustnrNo();
			int result = ss.surveyStatusEditRun(qustnrNo);
			return "redirect:/survey/detail/" + qustnrNo;
		// 내가 만든 설문 페이지에서 수정 시	
		}else {
			List<Integer> qustnrNoArr = surveyVO.getQustnrNoArr();
			int result = ss.runMineSurvey(qustnrNoArr);
			return "redirect:/survey/mine";
		}
	}
	
	// 설문 완료(마감)로 수정
	@PostMapping("/surveyStatusEditDone")
	public String surveyStatusEditDone(@ModelAttribute SurveyVO surveyVO, @RequestParam int flag) {
		// 설문 상세 페이지에서 수정 시
		if(flag == 0) {
			int qustnrNo = surveyVO.getQustnrNo();
			int result = ss.surveyStatusEditDone(qustnrNo);
			return "redirect:/survey/detail/" + qustnrNo;
		// 내가 만든 설문 페이지에서 수정 시	
		}else {
			List<Integer> qustnrNoArr = surveyVO.getQustnrNoArr();
			int result = ss.doneMineSurvey(qustnrNoArr);
			return "redirect:/survey/mine";
		}
	}
	
	// 설문 중지로 수정
	@PostMapping("/surveyStatusEditStop")
	public String surveyStatusEditStop(@ModelAttribute SurveyVO surveyVO, @RequestParam int flag) {
		// 설문 상세 페이지에서 수정 시
		if(flag == 0) {
			int qustnrNo = surveyVO.getQustnrNo();
			int result = ss.surveyStatusEditStop(qustnrNo);
			return "redirect:/survey/detail/" + qustnrNo;
		// 내가 만든 설문 페이지에서 수정 시	
		}else {
			List<Integer> qustnrNoArr = surveyVO.getQustnrNoArr();
			int result = ss.stopMineSurvey(qustnrNoArr);
			return "redirect:/survey/mine";
		}
	}
	/* 설문 상태 수정  끝*/
	
	
	// 설문 댓글 등록
	@ResponseBody
	@PostMapping("/createSurveyAnswer")
	public int createSurveyAnswer(@ModelAttribute SurveyVO surveyVO) {
		logger.info("댓글 등록 vo : " + surveyVO);
		int result = ss.createSurveyAnswer(surveyVO);
		if(result > 0) {
			int answerNo = surveyVO.getAnswerNo();
			logger.info("댓글 번호 : " + answerNo);
			return answerNo;
		}
		return 0;
	}
	
	// 설문 댓글 수정
	@ResponseBody
	@PostMapping("/editSurveyAnswer")
	public int editSurveyAnswer(@ModelAttribute SurveyVO surveyVO) {
		logger.info("댓글 수정 vo : " + surveyVO);
		int result = ss.editSurveyAnswer(surveyVO);
		if(result > 0) {
			return result;
		}
		return 0;
	}
	
	// 설문 댓글 삭제
	@ResponseBody
	@PostMapping("/deleteSurveyAnswer")
	public int deleteSurveyAnswer(@RequestParam Map<String, Object> deleteAnswerMap) {
		logger.info("댓글 삭제 map : " + deleteAnswerMap);
		int result = ss.deleteSurveyAnswer(deleteAnswerMap);
		if(result > 0) {
			return result;
		}
		return 0;
	}
	
	
	// 설문이 진행중이고 응답을 하지 않은 설문의 개수 조회
	@ResponseBody
	@PostMapping("/getRspnsAtIsNCount")
	public int getRspnsAtIsNCount(@RequestParam String empno) {
		return ss.getRspnsAtIsNCount(empno);
	}
	
	
	
	
	
	
	
	
	
	
}
