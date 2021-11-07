package kr.or.ddit.mail.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.bogo.controller.BogoController;
import kr.or.ddit.bogo.service.BogoService;
import kr.or.ddit.bogo.vo.BogoVo;
import kr.or.ddit.common.controller.CommonController;
import kr.or.ddit.community.vo.CommuVO;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;
import kr.or.ddit.mail.service.MailService;
import kr.or.ddit.mail.vo.MailVo;
import kr.or.ddit.util.Pagination;
import lombok.extern.slf4j.Slf4j;

@RequestMapping(value="/mail/*")
@Slf4j
@Controller
public class MailController {
	private static Logger logger = LoggerFactory.getLogger(MailController.class);
	
	@Autowired
	MailService mailService;
	

	@GetMapping("/home")
	public String indexLTE(@RequestParam(defaultValue = "1") String currentPage,@RequestParam Map<String,Object> map, @ModelAttribute MailVo mailVo, Model model , HttpServletRequest request) throws Exception {
		
		if(request.getSession().getAttribute("empVo") != null) {
			String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno();
			int estblEmpno = Integer.parseInt(empno);
			
			map.put("empno" , estblEmpno);
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
			List<MailVo> item = this.mailService.receiveMaillist(map);
			logger.info("item : " + item.toString());
			int total = this.mailService.mailTotal(map);
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
			model.addAttribute("item", item);
		}
		
		return "mail/home";
		
	}
	@GetMapping("/sendlist")
	public String sendlist(@RequestParam(defaultValue = "1") String currentPage,@RequestParam Map<String,Object> map, @ModelAttribute MailVo mailVo, Model model , HttpServletRequest request) throws Exception {
		
		
		  if(request.getSession().getAttribute("empVo") != null) { 
			  String empno = ((EmpVO) request.getSession().getAttribute("empVo")).getEmpno(); 
			  int estblEmpno = Integer.parseInt(empno);
			  map.put("empno" , estblEmpno); 
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
			  List<MailVo> item = this.mailService.decpthMailList(map); 
			  logger.info("item : " + item.toString()); 
			  logger.info("item : " + item.toString());
				int total = this.mailService.mailTotal(map);
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
			  model.addAttribute("item", item); 
		  }
		 
		
		return "mail/sendlist";
		
	}
	@RequestMapping(value = "/mailSend", method = RequestMethod.POST)
	public String addPost(@RequestParam Map<String,Object> map , @ModelAttribute MailVo mailVo , Model model , HttpServletRequest request, @ModelAttribute EmpVOList empVoList) throws Exception {
		
		
		logger.info("보고 파라미터 : " + mailVo);
		logger.info("보고 파라미터 : " + empVoList);
		int result1 = mailService.emailinsert(mailVo, empVoList);
		return "redirect:/mail/home";
	
	}
	
	@GetMapping(value="/mail/getFileList", produces=MediaType.APPLICATION_PROBLEM_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<FileVO>> fileSelect(int fileNo) {
		logger.info(fileNo + "");
		return new ResponseEntity<>(mailService.fileSelect(fileNo), HttpStatus.OK);
	}
	@GetMapping("/mailSend")
	public String mailSend() {
		return "mail/mailSend";
	}
	
	//메일 상세 화면
	/*@RequestMapping(value="/mailDetail", method=RequestMethod.POST)
	public String mailDetail(@RequestParam Map<String,Object> map , @ModelAttribute MailVo mailVo , Model model) {
		
		MailVo result = mailService.detail(map);
		
		model.addAttribute("result" , result);
		
		return "mail/mailDetail";
	}*/
	
	//메일 상세 화면
	@RequestMapping(value="/mailDetail", method=RequestMethod.GET)
	public String mailDetail(MailVo mailVo , Model model) throws Exception {
		int am =this.mailService.updateForReadProcessing(mailVo.getEmailNo());
		logger.info("am :" +am);
		List<MailVo> detail = this.mailService.detail(mailVo.getEmailNo());
		
		model.addAttribute("detail", detail);
		
		return "mail/mailDetail";
	}
	
	//메일 삭제를 위한 메소드
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String deletePost(ModelAndView mav, MailVo mailVo) {
		  String str = mailVo.getEmailNo();
		  
		  String[] resultEmailNo = str.split(",");
		  logger.info(">> str : " + str);
		  
		  for(int i=0; i<resultEmailNo.length; i++) {
		     logger.info(">> delete(update) operation check point\n");
		     mailVo.setEmailNo((resultEmailNo[i]));
		     mailService.emaildelete(resultEmailNo[i]);
		  }	  
		  
		return "redirect:/mail/home";		
	}	
	
	@ResponseBody
	@PostMapping("/getCnfirmAtIsNCount")
	public int getCnfirmAtIsNCount(String empno) {
		return mailService.getCnfirmAtIsNCount(empno);
	}
	
	
}
