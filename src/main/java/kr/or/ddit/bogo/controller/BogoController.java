package kr.or.ddit.bogo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpServerErrorException;

import kr.or.ddit.bogo.service.BogoService;
import kr.or.ddit.bogo.vo.BogoVo;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;
import kr.or.ddit.messenger.service.MessengerService;
import kr.or.ddit.notice.vo.NoticeVO;
import kr.or.ddit.util.Pagination;
import lombok.extern.slf4j.Slf4j;

@RequestMapping(value="/bogo/*")
@Slf4j
@Controller
public class BogoController {
	private static Logger logger = LoggerFactory.getLogger(BogoController.class);
	
	
	
	@Autowired
	BogoService bogoService;
	
	@RequestMapping(value = "/list", method=RequestMethod.GET)
	public String bogoList(@RequestParam(defaultValue = "1") String currentPage,
			@RequestParam Map<String,Object> map
			, Model model)
			 throws Exception{
//	
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
		
		//고객 목록
		List<BogoVo> list = this.bogoService.bogoAllselect(map);
		
		int total = this.bogoService.bogoTotal(map);
		int startNum = Integer.parseInt(currentPage) * 10 - 9 ;
		int endNum = Integer.parseInt(currentPage) * 10;
		if(endNum > total) {
			endNum = total;
		}
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 10);
		model.addAttribute("paging", pagination);
		
		
		
		
		
		model.addAttribute("list", list);
	
		return "bogo/bogoList";
	}
	@RequestMapping(value ="/ApproveMenu", method=RequestMethod.GET)
	public String bogoApproveMenu(@RequestParam(defaultValue = "1") String currentPage,@RequestParam Map<String,Object> map
			, Model model )throws Exception{
//	
		
		//고객 목록
		
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
		
		//고객 목록
		List<BogoVo> list2 = this.bogoService.bogoApproveMenu(map);
		logger.info("list2" + list2);
		
		int total = this.bogoService.bogoTotal(map);
		int startNum = Integer.parseInt(currentPage) * 10 - 9 ;
		int endNum = Integer.parseInt(currentPage) * 10;
		if(endNum > total) {
			endNum = total;
		}
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 10);
		model.addAttribute("paging", pagination);
		
		
		model.addAttribute("list2", list2);
		
		return "bogo/bogoApproveMenu";
	}
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String bogoInsert() {
		//forwarding
		return "bogo/bogoInsert";
	}
	@RequestMapping(value = "/approve", method = RequestMethod.GET)
	public String bogoApprove() {
		//forwarding
		return "bogo/bogoApprove";
	}
	@RequestMapping(value = "/bogoing", method = RequestMethod.GET)
	public String bogoIngList(@RequestParam(defaultValue = "1") String currentPage,@RequestParam Map<String,Object> map,
			@ModelAttribute BogoVo bogoVo, Model model) throws Exception {
		//forwarding
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
		
		//고객 목록
		List<BogoVo> nobogo = this.bogoService.bogoNotSelect(map);
		
		int total = this.bogoService.bogoTotal(map);
		int startNum = Integer.parseInt(currentPage) * 10 - 9 ;
		int endNum = Integer.parseInt(currentPage) * 10;
		if(endNum > total) {
			endNum = total;
		}
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 10);
		model.addAttribute("paging", pagination);
		
		
		
		model.addAttribute("nobogo" , nobogo);
		
		return "bogo/bogoIngList";
	}
	@RequestMapping(value = "/waitmenu", method = RequestMethod.GET)
	public String waitmenu(@RequestParam(defaultValue = "1") String currentPage,@RequestParam Map<String,Object> map,
			@ModelAttribute BogoVo bogoVo, Model model) throws Exception {
		//forwarding
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
		
		//고객 목록
		List<BogoVo> nobogo = this.bogoService.bogoNotSelect(map);
		
		int total = this.bogoService.bogoTotal(map);
		int startNum = Integer.parseInt(currentPage) * 10 - 9 ;
		int endNum = Integer.parseInt(currentPage) * 10;
		if(endNum > total) {
			endNum = total;
		}
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 10);
		model.addAttribute("paging", pagination);
		
		
		
		model.addAttribute("nobogo" , nobogo);
		
		return "bogo/bogowaitmenu";
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String bogoUpdate(@RequestParam Map<String,Object> map,  Model model) throws Exception {
		//forwarding
		/* logger.info("bogoDetail : " + bogoDetail); */
		
		List<BogoVo> bogoVo1 = this.bogoService.updateSelect(map);
		model.addAttribute("bogoVo1",bogoVo1);
		logger.info("bogoVo1" + bogoVo1);
		
		return "bogo/bogoUpdate";
	}
	
	// 첨부파일 조회
	// JSON 데이터 반환
	@GetMapping(value="/getFileList", produces=MediaType.APPLICATION_PROBLEM_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<FileVO>> fileSelect(int fileNo) {
		logger.info(fileNo + "");
		return new ResponseEntity<>(bogoService.fileSelect(fileNo), HttpStatus.OK);
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updatePost(@ModelAttribute BogoVo bogoVo) throws Exception {
		
		logger.info("update에 왔다, bogoVo : " + bogoVo);
		int result = this.bogoService.bogoUpdate(bogoVo);
		logger.info("result : " + result);
		
		return "redirect:/bogo/update?reprtListNo="+bogoVo.getReprtListNo();
	}
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String deletePost(@RequestParam(value="reprtListNo", required=true) int reprtListNo) {
		logger.info("reprtListNo : " + reprtListNo);
		
		int result = this.bogoService.bogoDelete(reprtListNo);
		return "redirect:/bogo/bogoing";
		
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String bogoAdd() {
		//forwarding
		return "bogo/bogoAdd";
	}
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String bogohome(@RequestParam Map<String,Object> map, Map<String,Object> map1,
			@ModelAttribute BogoVo bogoVo, Model model) throws Exception {
		
		for(Entry<String, Object> entry : map.entrySet()) {
			logger.info(entry.getKey());
			logger.info(entry.getValue() + "");
		}
		
		logger.info("home");
		
		//고객 목록
		List<BogoVo> item = this.bogoService.bogoList(map);
		List<BogoVo> menu = this.bogoService.bogoMenuList(map);
		List<BogoVo> select = this.bogoService.bogoSelect(map1);
		List<BogoVo> bogozaList = this.bogoService.bogozaSelect();
		
				
		model.addAttribute("bogozaList" , bogozaList);
		model.addAttribute("item", item);
		model.addAttribute("menu", menu);
		model.addAttribute("select", select);
			
		
		//forwarding
		return "bogo/bogoHome";
	}
	
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertPost(@RequestParam Map<String,Object> map ,@ModelAttribute BogoVo bogoVo, @ModelAttribute EmpVO empVo ,Model model) throws Exception {
//		int cusNum = this.cusService.insert(cusVo);

		logger.info("보고 파라미터 : " + bogoVo);
		int result = bogoService.bogoInsert(bogoVo);
		logger.info("보고 insert : " + result);
		List<BogoVo> menu = this.bogoService.bogoList(map);
		List<BogoVo> list = this.bogoService.bogoMenuList(map);
		
		
		model.addAttribute("list", list);
		model.addAttribute("list", menu);
        
		return "redirect:/bogo/home";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addPost(@RequestParam Map<String,Object> map , @ModelAttribute BogoVo bogoVo , Model model , HttpServletRequest request, @ModelAttribute EmpVOList empVoList) throws Exception {
		
		
		logger.info("보고 파라미터 : " + bogoVo);
		logger.info("보고 파라미터 : " + empVoList);
		
		int result1 = bogoService.bogoAdd(bogoVo, empVoList);
		
		return "redirect:/bogo/home";
	
	}
	
	//고객(CUS) 상세 정보 
	//RequestParam어노테이션의 value : 넘어오는 파라미터의 name값
	//required=false : cusNum 파라미터가 반드시 있을 필요는 없음(true가 기본. 생략 시 true)
	//defaultValue : 기본값 세팅
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String bogoDetail(@RequestParam Map<String,Object> map 
			, Model model) throws Exception {

		//고객 목록
		
		BogoVo bogoDetail = this.bogoService.bogoDetail(map);
		/* logger.info("bogoDetail : " + bogoDetail); */
		model.addAttribute("bogoDetail", bogoDetail);
		List<BogoVo> list = this.bogoService.bogoInfoList(map);
		model.addAttribute("list", list);
		
		//forwarding
		return "bogo/bogoDetail";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.POST)
	public String bogoDetailPost(@RequestParam Map<String,Object> map , @ModelAttribute BogoVo bogoVo) throws Exception {
		logger.info("bogoVo zzz : " + bogoVo.toString());
		
		
		int result = bogoService.bogoApproveAdd(bogoVo);
		return "redirect:/bogo/home";
	}
	
	@RequestMapping(value="/approveDetail",method=RequestMethod.GET)
	public String approveDetail(@RequestParam Map<String,Object> map 
			, Model model) throws Exception {
		
		//고객 목록
		
		List<BogoVo> list = this.bogoService.bogoInfoList(map);
		
		System.out.println("리스트 길이 : " + list.size()); 
		
		
		model.addAttribute("list", list);
		
		//forwarding
		return "bogo/bogoApproveDetail";
	}
	
	
}
