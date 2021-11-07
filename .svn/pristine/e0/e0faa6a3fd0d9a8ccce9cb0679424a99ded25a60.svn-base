package kr.or.ddit.community.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.community.service.CommuService;
import kr.or.ddit.community.vo.ComBBVO;
import kr.or.ddit.community.vo.ComBoardVO;
import kr.or.ddit.community.vo.ComJoinVO;
import kr.or.ddit.community.vo.ComLikeVO;
import kr.or.ddit.community.vo.CommuVO;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.notice.vo.NoticeVO;
import kr.or.ddit.survey.vo.SurveyVO;
import kr.or.ddit.util.Pagination;


@Controller
public class CommuController {
private static Logger logger = LoggerFactory.getLogger(CommuController.class);
	
	@Autowired
	CommuService comService;
	
	// 커뮤니티 작성 화면
	@RequestMapping(value="/com/insert",method=RequestMethod.GET)
	public String comInsert(HttpServletRequest request, Model model) throws Exception {
		
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			List<CommuVO> myList = this.comService.comMy(estblEmpno);
			logger.info("myList : " + myList.toString());
			model.addAttribute("myList", myList);
		}
		return "community/comInsert";
	}
	
	// 커뮤니티 작성
	@RequestMapping(value="/com/insert",method=RequestMethod.POST)
	public String comInsertPost(@ModelAttribute CommuVO commuVo) throws Exception {
		logger.info("커뮤니티 만들기");
		// 나의 커뮤니티
		int result = this.comService.comInsert(commuVo);
		this.comService.comNoticeB(commuVo.getCmmntyNo());
		this.comService.comActiveB(commuVo.getCmmntyNo());
		return "redirect:/com/list";
	}

	// 커뮤니티 목록
	@RequestMapping(value="/com/list", method=RequestMethod.GET)
	public String comList(@RequestParam(defaultValue = "1") String currentPage 
			, @RequestParam Map<String,Object> map
			, HttpServletRequest request
			, Model model) throws Exception {
		// 나의 커뮤니티
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			List<CommuVO> myList = this.comService.comMy(estblEmpno);
			logger.info("myList : " + myList.toString());
			model.addAttribute("myList", myList);
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
		
		List<CommuVO> list = this.comService.comList(map);
		
		// 커뮤니티 인원수
		int total = this.comService.comTotal(map);
		int startNum = Integer.parseInt(currentPage) * 10 - 9 ;
		int endNum = Integer.parseInt(currentPage) * 10;
		if(endNum > total) {
			endNum = total;
		}
		model.addAttribute("list", list);
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 10);
		model.addAttribute("paging", pagination);
		
		return "community/comList";
	}
	
	// 가입한 회원인가?
	@ResponseBody
	@RequestMapping(value="/com/comMemList",method=RequestMethod.POST)
	public List<ComJoinVO> comMemList(@RequestBody int cmmntyNo) throws Exception {
		return this.comService.comMemList(cmmntyNo);
		
	}
	
	// 가입대기 중인 회원인가?
	@ResponseBody
	@RequestMapping(value="/com/comWaitList",method=RequestMethod.POST)
	public List<ComJoinVO> comWaitList(@RequestBody int cmmntyNo) throws Exception {
		return this.comService.comWaitList(cmmntyNo);
		
	}
	
	// 커뮤니티 수정
	@ResponseBody
	@RequestMapping(value="/com/comUpdate",method=RequestMethod.POST)
	public int comUpdate(@ModelAttribute CommuVO commuVo) throws Exception {
		return this.comService.comUpdate(commuVo);
		
	}
	
	// 커뮤니티 모달 조회
	@ResponseBody
	@RequestMapping(value="/com/modalAjax",method=RequestMethod.POST)
	public CommuVO comModal(@RequestBody int cmmntyNo, Model model) throws Exception {
		logger.info("cmmntyNo : " + cmmntyNo);
		
		CommuVO commuVO = this.comService.comModal(cmmntyNo);
		logger.info("commuVO(detail) : " + commuVO.toString());
		
		model.addAttribute("commuVO", commuVO);
		
		return commuVO;
		
	}

	// 커뮤니티 수정후 리스트
	@ResponseBody
	@RequestMapping(value="/com/comSelect",method=RequestMethod.POST)
	public CommuVO comSelect(@RequestParam int cmmntyNo) throws Exception {
		return this.comService.comDetail(cmmntyNo);
		
	}

	
	// 커뮤니티 가입하기
	@RequestMapping(value="/com/inJoin",method=RequestMethod.POST)
	public String comJoin(@ModelAttribute ComJoinVO comJoinVo) throws Exception {
		int result = this.comService.comJoin(comJoinVo);
		return "redirect:/com/list";
	}

	// 커뮤니티 가입한 모든 회원
	// 커뮤니티 목록
	@RequestMapping(value="/com/comJoinMem", method=RequestMethod.GET)
	public String comAllMem(@RequestParam(defaultValue = "1") String currentPage 
			, @RequestParam Map<String,Object> map
			,HttpServletRequest request, Model model) throws Exception {
		
		// 나의 커뮤니티
		String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
		int empnoLogin = Integer.parseInt(empno);
		List<CommuVO> myList = this.comService.comMy(empnoLogin);
		logger.info("myList : " + myList.toString());
		model.addAttribute("myList", myList);
		
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
		
		map.put("approveEmpno", empnoLogin);
		logger.info("mapddddddddddd : "+map);
		
		// 나의 커뮤니티에 가입한 회원
		List<ComJoinVO> joinList = this.comService.comAllMem(map);
		
		// 나의 커뮤니티에 가입한 회원
		int total = this.comService.comAllMemCount(map);
		int startNum = Integer.parseInt(currentPage) * 12 - 11 ;
		int endNum = Integer.parseInt(currentPage) * 12;
		if(endNum > total) {
			endNum = total;
		}
		
		model.addAttribute("joinList", joinList);
		logger.info("model : " + model);
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 12);
		model.addAttribute("paging", pagination);
		
		return "community/comJoinMem";
		
	}
	
	// 커뮤니티 가입한 모든 회원
	// 커뮤니티 목록
	@RequestMapping(value="/com/comMyJoin", method=RequestMethod.GET)
	public String comMyJoin(@RequestParam(defaultValue = "1") String currentPage 
			, @RequestParam Map<String,Object> map
			,HttpServletRequest request, Model model) throws Exception {
		// 나의 커뮤니티
		String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
		int empnoLogin = Integer.parseInt(empno);
		List<CommuVO> myList = this.comService.comMy(empnoLogin);
		List<ComJoinVO> standList = this.comService.comStand(empnoLogin);
		int total = this.comService.comAcceptCount(empnoLogin);
		model.addAttribute("myList", myList);
		model.addAttribute("standList", standList);
		
		if(map.get("currentPage")==null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		map.put("sbscrberEmpno", empnoLogin);
		logger.info("mapddddddddddd2 : "+map);
		
		List<ComJoinVO> acceptList = this.comService.comAccept(map);
		
		// 나의 커뮤니티에 가입한 회원
		int startNum = Integer.parseInt(currentPage) * 3 - 2 ;
		int endNum = Integer.parseInt(currentPage) * 3;
		if(endNum > total) {
			endNum = total;
		}
		
		model.addAttribute("acceptList", acceptList);
				
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 3);
		model.addAttribute("paging", pagination);
				
		return "community/comMyJoin";
		
	}

	// 공지 상세 조회
	@RequestMapping(value="/com/noticeSelect",method=RequestMethod.GET)
	public String detail(@ModelAttribute ComBBVO comBBVO, HttpServletRequest request, Model model) throws Exception {
		// 나의 커뮤니티
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			List<CommuVO> myList = this.comService.comMy(estblEmpno);
			logger.info("myList : " + myList.toString());
			model.addAttribute("myList", myList);
		}
		
		int cmmntyNo = comBBVO.getCmmntyNo();
		// 커뮤니티 상세
		CommuVO commuVo = this.comService.comDetail(cmmntyNo);
		model.addAttribute("commuVo", commuVo);
		// 회원 리스트
		List<ComJoinVO> memList = this.comService.comMemList(cmmntyNo);
		model.addAttribute("memList", memList);
		//고객의 상세 정보를 가져옴
		ComBBVO comNoticeDetail = this.comService.comNoticeDetail(comBBVO);
		model.addAttribute("comNoticeDetail", comNoticeDetail);
		
		
		//forwarding
		return "community/noticeSelect";
	}
	
	// 커뮤니티 가입 승인
	@RequestMapping(value="/com/Atupdate", method=RequestMethod.POST)
	public String comAtAccept(@ModelAttribute ComJoinVO comJoinVo) throws Exception {
		
		int result = this.comService.comAtUpdate(comJoinVo);
		return "redirect:/com/comJoinMem";
		
	}
	
	// 커뮤니티 가입 취소
	@RequestMapping(value="/com/memCancel",method=RequestMethod.POST)
	public String cancelPost(@ModelAttribute ComJoinVO comJoinVo) throws Exception {
		
		int result = this.comService.comAtCancel(comJoinVo);
		return "redirect:/com/comJoinMem";
	}
	
	// 커뮤니티 회원 삭제
	@ResponseBody
	@RequestMapping(value="/com/memDelete",method=RequestMethod.POST)
	public int deletePost(@ModelAttribute ComJoinVO comJoinVo) throws Exception {
		
		int result = this.comService.comAtCancel(comJoinVo);
		return result;
	}
	
	// 커뮤니티 정보
	@RequestMapping(value="/com/detail", method=RequestMethod.GET)
	public String comAtAccept(@RequestParam(defaultValue = "1") String currentPage 
			, @RequestParam Map<String,Object> map
			, @RequestParam(value="cmmntyNo", required=false) int cmmntyNo
			, HttpServletRequest request
			, Model model) throws Exception {
		// 나의 커뮤니티
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			List<CommuVO> myList = this.comService.comMy(estblEmpno);
			logger.info("myList : " + myList.toString());
			model.addAttribute("myList", myList);
		}
		
		if(map.get("currentPage")==null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		map.put("cmmntyNo", cmmntyNo);
		logger.info("mapddddddddddd : "+map);
		
		//커뮤니티 상세 정보를 가져옴
		CommuVO commuVo = this.comService.comDetail(cmmntyNo);
		model.addAttribute("commuVo", commuVo);
		List<ComJoinVO> memList = this.comService.comMemList(cmmntyNo);
		model.addAttribute("memList", memList);
		//커뮤니티 공지 게시물 가져옴
		List<ComBBVO> comNoticeVO = this.comService.comNoticeList(cmmntyNo);
		model.addAttribute("comNoticeVO", comNoticeVO);
		//커뮤니티 활동 게시물 가져옴
		int total = this.comService.comActiveCount(cmmntyNo);
		List<ComBBVO> comActiveVO = this.comService.comActiveList(map);
		logger.info("comActiveVO : " +comActiveVO);
		
		// 공지게시물 수
		int startNum = Integer.parseInt(currentPage) * 3 - 2 ;
		int endNum = Integer.parseInt(currentPage) * 3;
		if(endNum > total) {
			endNum = total;
		}
		
		model.addAttribute("comActiveVO", comActiveVO);
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 3);
		model.addAttribute("paging", pagination);
		
		//forwarding
		return "community/comDetail";
	}
	
	// **고칠것- 공지사항 더보기 전체리스트
	@RequestMapping(value="/com/noticeListAdd", method=RequestMethod.GET)
	public String noticeListAdd(@RequestParam(defaultValue = "1") String currentPage 
			, @RequestParam Map<String,Object> map
			, @RequestParam(value="cmmntyNo", required=false) int cmmntyNo
			, HttpServletRequest request
			, Model model) throws Exception {
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
		map.put("cmmntyNo", cmmntyNo);
		logger.info("mapddddddddddd : "+map);
		
		
		// 나의 커뮤니티
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			List<CommuVO> myList = this.comService.comMy(estblEmpno);
			logger.info("myList : " + myList.toString());
			model.addAttribute("myList", myList);
		}
		//커뮤니티 상세 정보를 가져옴
		CommuVO commuVo = this.comService.comDetail(cmmntyNo);
		model.addAttribute("commuVo", commuVo);
		List<ComJoinVO> memList = this.comService.comMemList(cmmntyNo);
		model.addAttribute("memList", memList);
		//커뮤니티 공지 게시물 가져옴
		List<ComBBVO> comNoticeVO = this.comService.noticeListAdd(map);
		
		// 공지게시물 수
		int total = this.comService.noticeTotal(map);
		int startNum = Integer.parseInt(currentPage) * 12 - 11 ;
		int endNum = Integer.parseInt(currentPage) * 12;
		if(endNum > total) {
			endNum = total;
		}
		
		model.addAttribute("comNoticeVO", comNoticeVO);
		logger.info("model : " + model);
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 12);
		model.addAttribute("paging", pagination);
		
		//forwarding
		return "community/noticeListAdd";
	}
	
	// 커뮤니티 좋아요 조회
	@ResponseBody
	@RequestMapping(value="/com/comLikeSelect",method=RequestMethod.POST)
	public ComLikeVO comLikeSelect(@RequestBody Map<String, Object> param, HttpServletRequest request, ComLikeVO comLikeVo, Model model) throws Exception {
		logger.info("param 돼돼돼???? " + param);
		String cmmNo = param.get("cmmntyNo").toString();
		int cmmNoInt = Integer.parseInt(cmmNo);
		comLikeVo.setCmmntyNo(cmmNoInt);
		
		String bcttNo = param.get("bbscttNo").toString();
		int bcttNoInt = Integer.parseInt(bcttNo);
		comLikeVo.setBbscttNo(bcttNoInt);
		
		String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
		int empnoLogin = Integer.parseInt(empno);
		comLikeVo.setSbscrberEmpno(empnoLogin);
		logger.info("comLikeVo " + comLikeVo);
		
		//커뮤니티 활동 상세조회
		ComLikeVO comLikeSelect = this.comService.comActiveLike(comLikeVo);
		logger.info("comLikeSelect " + comLikeSelect);
		return comLikeSelect;
	}
	
	// 커뮤니티 좋아요 변경 Y
	@ResponseBody
	@RequestMapping(value="/com/comLikeUpdateY",method=RequestMethod.POST)
	public int comLikeUpdateY(@RequestBody Map<String, Object> param, HttpServletRequest request, ComLikeVO comLikeVo, Model model) throws Exception {
		logger.info("param 돼돼돼???? " + param);
		String cmmNo = param.get("cmmntyNo").toString();
		int cmmNoInt = Integer.parseInt(cmmNo);
		comLikeVo.setCmmntyNo(cmmNoInt);
		
		String bcttNo = param.get("bbscttNo").toString();
		int bcttNoInt = Integer.parseInt(bcttNo);
		comLikeVo.setBbscttNo(bcttNoInt);
		
		String likeAt = param.get("likeAt").toString();
		comLikeVo.setLikeAt(likeAt);
		
		String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
		int empnoLogin = Integer.parseInt(empno);
		comLikeVo.setSbscrberEmpno(empnoLogin);
		logger.info("comLikeVo " + comLikeVo);
		
		int result = this.comService.comActiveLikeY(comLikeVo);
		return result;
	}
	
	// 커뮤니티 공지 모달 조회
	@ResponseBody
	@RequestMapping(value="/com/noticeAjax",method=RequestMethod.POST)
	public ComBBVO comNoticeModal(@RequestBody Map<String, Object> param, ComBBVO comBBVO, Model model) throws Exception {
		logger.info("param " + param);
		String cmmNo = param.get("cmmntyNo").toString();
		int cmmNoInt = Integer.parseInt(cmmNo);
		comBBVO.setCmmntyNo(cmmNoInt);
		
		String bcttNo = param.get("bbscttNo").toString();
		int bcttNoInt = Integer.parseInt(bcttNo);
		comBBVO.setBbscttNo(bcttNoInt);
		logger.info("comBBVO " + comBBVO);
		
		
		int updateasd = this.comService.comRdcnt(comBBVO);
		
		//커뮤니티 공지 상세조회
		ComBBVO comNoticeDetail = this.comService.comNoticeDetail(comBBVO);
		model.addAttribute("comNoticeDetail", comNoticeDetail);
		logger.info("comNoticeDetail " + comNoticeDetail);
		return comNoticeDetail;
	}
	
	// 커뮤니티 활동 모달 조회
	@ResponseBody
	@RequestMapping(value="/com/activeAjax",method=RequestMethod.POST)
	public ComBBVO comActiveDetail(@RequestBody Map<String, Object> param, ComBBVO comBBVO, Model model) throws Exception {
		logger.info("param " + param);
		String cmmNo = param.get("cmmntyNo").toString();
		int cmmNoInt = Integer.parseInt(cmmNo);
		comBBVO.setCmmntyNo(cmmNoInt);
		
		String bcttNo = param.get("bbscttNo").toString();
		int bcttNoInt = Integer.parseInt(bcttNo);
		comBBVO.setBbscttNo(bcttNoInt);
		logger.info("comBBVO " + comBBVO);
		
		//커뮤니티 활동 상세조회
		ComBBVO comActiveDetail = this.comService.comActiveDetail(comBBVO);
		model.addAttribute("comActiveDetail", comActiveDetail);

		return comActiveDetail;
	}
	
	// 커뮤니티 활동 댓글 조회
	@ResponseBody
	@RequestMapping(value="/com/activeAnswerList",method=RequestMethod.POST)
	public List<ComBBVO> activeAnswerList(@RequestBody Map<String, Object> param, ComBBVO comBBVO, Model model) throws Exception {
		logger.info("param " + param);
		String cmmNo = param.get("cmmntyNo").toString();
		int cmmNoInt = Integer.parseInt(cmmNo);
		comBBVO.setCmmntyNo(cmmNoInt);
		
		String bcttNo = param.get("bbscttNo").toString();
		int bcttNoInt = Integer.parseInt(bcttNo);
		comBBVO.setBbscttNo(bcttNoInt);
		logger.info("comBBVO " + comBBVO);
		
		// 해당 활동에 대한 댓글 전체 조회
		List<ComBBVO> activeAnswerList = this.comService.activeAnswerList(comBBVO);
		model.addAttribute("activeAnswerList", activeAnswerList);

		return activeAnswerList;
	}
	
	// 커뮤니티 공지 작성 화면
	@RequestMapping("/com/noticeinsert")
	public String noticeInsert(@RequestParam(value="cmmntyNo", required=false) int cmmntyNo,HttpServletRequest request, Model model) throws Exception {
		// 나의 커뮤니티
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			List<CommuVO> myList = this.comService.comMy(estblEmpno);
			logger.info("myList : " + myList.toString());
			model.addAttribute("myList", myList);
		}
		//커뮤니티 상세 정보를 가져옴
		CommuVO commuVo = this.comService.comDetail(cmmntyNo);
		model.addAttribute("commuVo", commuVo);
		List<ComJoinVO> memList = this.comService.comMemList(cmmntyNo);
		model.addAttribute("memList", memList);
		
		return "community/noticeInsert";
	}
	
	// 커뮤니티 공지 작성
	@RequestMapping(value="/com/noticeinsert",method=RequestMethod.POST)
	public String noticeInsertPost(@ModelAttribute ComBBVO comBBVO, HttpServletRequest request) throws Exception {
		logger.info("공지작성완료");
		
		String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
		int empnoLogin = Integer.parseInt(empno);
		comBBVO.setWrterEmpno(empnoLogin);
		logger.info("공지작성완료" + comBBVO);
		int result = this.comService.comNotiInsert(comBBVO);
		return "redirect:/com/noticeListAdd?cmmntyNo="+ comBBVO.getCmmntyNo();
	}

	// 커뮤니티 활동 작성
	@RequestMapping(value="/com/activeinsert",method=RequestMethod.POST)
	public String activeInsertPost(@ModelAttribute ComBBVO comBBVO, HttpServletRequest request) throws Exception {
		logger.info("활동");
		String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
		int empnoLogin = Integer.parseInt(empno);
		comBBVO.setWrterEmpno(empnoLogin);
		logger.info("활동작성완료" + comBBVO);
		int result = this.comService.comActInsert(comBBVO);
		return "redirect:/com/detail?cmmntyNo="+ comBBVO.getCmmntyNo();
	}
	// 커뮤니티 활동 수정
	@RequestMapping(value="/com/comActUpdate",method=RequestMethod.POST)
	public String comActUpdate(@ModelAttribute ComBBVO comBBVO, HttpServletRequest request) throws Exception {
		logger.info("공지작성완료");
		
		this.comService.comActUpdate(comBBVO);
		return "redirect:/com/detail?cmmntyNo="+ comBBVO.getCmmntyNo();
	}
	
	// 커뮤니티 공지 수정 화면
	@RequestMapping("/com/noticeupdate")
	public String noticeUpdate(@ModelAttribute ComBBVO comBBVO, Model model, HttpServletRequest request) throws Exception {
		// 나의 커뮤니티
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			List<CommuVO> myList = this.comService.comMy(estblEmpno);
			logger.info("myList : " + myList.toString());
			model.addAttribute("myList", myList);
		}
		
		int cmmntyNo = comBBVO.getCmmntyNo();
		// 커뮤니티 상세
		CommuVO commuVo = this.comService.comDetail(cmmntyNo);
		model.addAttribute("commuVo", commuVo);
		// 회원 리스트
		List<ComJoinVO> memList = this.comService.comMemList(cmmntyNo);
		model.addAttribute("memList", memList);
		
		//커뮤니티 공지 상세조회
		ComBBVO comNoticeDetail = this.comService.comNoticeDetail(comBBVO);
		model.addAttribute("comNoticeDetail", comNoticeDetail);
		logger.info("comNoticeDetail " + comNoticeDetail);
		
		return "community/noticeupdate";
	}
	
	// 커뮤니티 공지 수정
	@RequestMapping(value="/com/noticeupdate",method=RequestMethod.POST)
	public String noticeUpdatePost(@ModelAttribute ComBBVO comBBVO, HttpServletRequest request) throws Exception {
		logger.info("공지작성완료");
		
		this.comService.comNoticeUpdate(comBBVO);
		return "redirect:/com/noticeListAdd?cmmntyNo="+ comBBVO.getCmmntyNo();
	}
	
	// 공지 삭제
	@RequestMapping(value="/com/delete",method=RequestMethod.POST)
	public String deletePost(@ModelAttribute ComBBVO comBBVO) {
		
		int result = this.comService.comNoticeDelete(comBBVO);
		return "redirect:/com/noticeListAdd?cmmntyNo="+ comBBVO.getCmmntyNo();
	}
	
	// 활동 삭제
	@RequestMapping(value="/com/comActDelete",method=RequestMethod.POST)
	public String comActDelete(@ModelAttribute ComBBVO comBBVO) {
		int result = this.comService.comActDelete(comBBVO);
		return "redirect:/com/detail?cmmntyNo="+ comBBVO.getCmmntyNo();
	}
	
	// 활동 댓글 등록
	@ResponseBody
	@RequestMapping(value="/com/createAnswer", method=RequestMethod.POST)
	public int createAnswer(@ModelAttribute ComBBVO comBBVO) {
		logger.info("댓글 등록 vo : " + comBBVO);
		int result = this.comService.createActiveAnswer(comBBVO);
		if(result > 0) {
			int answerNo = comBBVO.getAnswerNo();
			logger.info("댓글 번호 : " + answerNo);
			return answerNo;
		}
		return 0;
	}
	
	// 활동 댓글 등록
	@ResponseBody
	@RequestMapping(value="/com/createdAnswer", method=RequestMethod.POST)
	public ComBBVO createdAnswer(@ModelAttribute ComBBVO comBBVO) {
		logger.info("댓글 등록 gett : " + comBBVO.getBbscttNo());
		logger.info("댓글 등록 vo : " + comBBVO);
	
		return this.comService.activedAnswer(comBBVO);
	}
	
	// 활동 댓글 수정
	@ResponseBody
	@RequestMapping(value="/com/editAnswer", method=RequestMethod.POST)
	public int editAnswer(@ModelAttribute ComBBVO comBBVO) {
		logger.info("댓글 수정 vo : " + comBBVO);
		int result = this.comService.editActiveAnswer(comBBVO);
		if(result > 0) {
			return result;
		}
		return 0;
	}
	
	
	// 활동 댓글 삭제
	@ResponseBody
	@RequestMapping(value="/com/deleteAnswer", method=RequestMethod.POST)
	public int deleteAnswer(@RequestParam Map<String, Object> deleteAnswerMap) {
		logger.info("댓글 삭제 map : " + deleteAnswerMap);
		int result = this.comService.deleteActiveAnswer(deleteAnswerMap);
		if(result > 0) {
			return result;
		}
		return 0;
	}
	
	// 첨부파일 조회
	// JSON 데이터 반환
	@GetMapping(value="/community/getFileList", produces=MediaType.APPLICATION_PROBLEM_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<FileVO>> fileSelect(int fileNo) {
		logger.info(fileNo + "");
		return new ResponseEntity<>(comService.fileSelect(fileNo), HttpStatus.OK);
	}
		
	// 파일업로드 연도 월 일 폴더 처리
	// /upload/2021/08/13/
	public String getFolder() {
		//날짜 포맷 객체
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//오늘 날짜 객체(java.util)
		Date date = new Date();
		//오늘 날짜를 yyyy-MM-dd 형식으로 처리
		String str = sdf.format(date);
		//연/월/일 단위의 폴더를 생성
		return str.replace("-", File.separator);		
	}
	
	// 이미지 파일 판단 
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		}catch(IOException e){
			e.printStackTrace();
		}
		return false;
	}
	
}
