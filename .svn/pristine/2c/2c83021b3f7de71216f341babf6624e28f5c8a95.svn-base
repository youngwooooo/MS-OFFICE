package kr.or.ddit.address.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.address.service.service.AddressService;
import kr.or.ddit.address.vo.AddressVO;
import kr.or.ddit.login.vo.EmpVO;

@Controller
public class AddressController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

@Autowired
	AddressService as;
	
	@RequestMapping(value="/address/address")
	public String addressbook(Model model, HttpServletRequest request, @ModelAttribute AddressVO addressvo) {
		
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}

		addressvo = new AddressVO();
		addressvo.setEmpno(empno);
		
		List<AddressVO> av = this.as.addressList(addressvo);
		
		model.addAttribute("av", av);

		return "address/address";
	}
	@RequestMapping(value="/address/alladdress")
	public String addressShareList(Model model, HttpServletRequest request, @ModelAttribute EmpVO empvo) {
		
		HttpSession session = request.getSession();
		
		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}
		
		empvo.setEmpno(empno);
		
		List<AddressVO> aa = this.as.addressShareList(empvo);
		
		model.addAttribute("aa", aa);
		
		return "address/alladdress";
	}
	
	@RequestMapping(value="/address/fastinsert", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView addressfastinsert(Model model, HttpServletRequest request,@ModelAttribute AddressVO addressvo, ModelAndView mav) {
		HttpSession session = request.getSession();
		logger.info("addressvozzzzzzzzzz :" + addressvo);
		System.out.println("왔다!");
		
		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}

		addressvo.setEmpno(empno);
		
		System.out.println("왔다!2");
		logger.info("addressvo :" + addressvo);
		int result = this.as.addressinsert(addressvo);
		System.out.println("왔다!3");
		
		
		mav.setViewName("redirect:/address/address");
		
		return mav;
		
	}
	
	@RequestMapping(value="/address/insert")
	public String addressinsert() {
		
		return "address/insert";
	}
	
	@ResponseBody
	@RequestMapping(value="/address/insertCheck", method = RequestMethod.POST)
	public ModelAndView insert2(Model model, HttpServletRequest request, @ModelAttribute AddressVO addressvo, ModelAndView mav) {
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}

		addressvo.setEmpno(empno);
		
		System.out.println("왔다!2");
		logger.info("addressvo :" + addressvo);
		int result = this.as.addressinsert(addressvo);
		System.out.println("왔다!3");		
		
		mav.setViewName("redirect:/address/address");
		
		return mav;		
	}
	
	@RequestMapping(value ="/address/delete", method = RequestMethod.GET)
	public String delete(Model model, HttpServletRequest request,@ModelAttribute AddressVO addressvo) {
		
		String forDel = addressvo.getForDel();
		logger.info("getForDel : " + forDel);
		
		String[] str =	forDel.split(","); 
		
		logger.info(">> check point");
		
		for(int i=0; i<str.length; i++) {
			addressvo.setAdresNo(Integer.parseInt(str[i]));
			logger.info("forDel : " + forDel);
			this.as.addressdelete(addressvo);
		}		
		
		HttpSession session = request.getSession();

		String empno = "0";
		if (session.getAttribute("empVo") != null) {
			EmpVO empVo = (EmpVO) session.getAttribute("empVo");
			empno = empVo.getEmpno();
		}

		addressvo = new AddressVO();
		addressvo.setEmpno(empno);
		
		List<AddressVO> av = this.as.addressList(addressvo);
		
		model.addAttribute("av", av);
		
		return "address/address";
	}
	
	@RequestMapping(value="/address/update", method=RequestMethod.GET)
	public String updateselect(Model model, HttpServletRequest request,@ModelAttribute AddressVO addressvo) throws NumberFormatException, Exception {
		
		List<AddressVO> au = this.as.addressupdateselect(addressvo);
		
		model.addAttribute("au", au);
		
		return "address/update";
	}

	@RequestMapping(value="/address/update", method=RequestMethod.POST)
	public ModelAndView update(Model model, HttpServletRequest request,@ModelAttribute AddressVO addressvo, ModelAndView mav) throws NumberFormatException, Exception {
		
		int ud = this.as.addressupdate(addressvo);
		
		mav.setViewName("redirect:/address/address");
		
		return mav;	
	}
	
	
}
