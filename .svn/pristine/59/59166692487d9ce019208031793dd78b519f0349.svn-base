package kr.or.ddit.organization.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.organization.service.OrganizationService;
import kr.or.ddit.organization.vo.OrganizationVO;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("/organization")
@Slf4j
@Controller
public class OrganizationController {
	private static final Logger logger = LoggerFactory.getLogger(OrganizationController.class);
	
	@Autowired
	OrganizationService os;
	
	@ResponseBody
	@GetMapping("/empList")
	public List<OrganizationVO> organizationEmpList(){
		List<OrganizationVO> empList = os.organizationEmpList();
		logger.info("empList : " + empList);
		return empList;
	}
	
	@ResponseBody
	@GetMapping("/deptList")
	public List<OrganizationVO> organizationDeptList(){
		List<OrganizationVO> deptList = os.organizationDeptList();
		logger.info("deptList : " + deptList);
		return deptList;
	}
	
}
