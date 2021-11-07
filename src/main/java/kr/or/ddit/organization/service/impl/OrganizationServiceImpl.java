package kr.or.ddit.organization.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.organization.mapper.OrganizationMapper;
import kr.or.ddit.organization.service.OrganizationService;
import kr.or.ddit.organization.vo.OrganizationVO;

@Service
public class OrganizationServiceImpl implements OrganizationService{
	
	@Autowired
	OrganizationMapper om;
	
	@Override
	public List<OrganizationVO> organizationEmpList() {
		return om.organizationEmpList();
	}

	@Override
	public List<OrganizationVO> organizationDeptList() {
		return om.organizationDeptList();
	}

}
