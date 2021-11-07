package kr.or.ddit.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.login.mapper.LoginMapper;
import kr.or.ddit.login.service.LoginService;
import kr.or.ddit.login.vo.EmpVO;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginMapper loginMapper;
	
	@Override
	public EmpVO login(EmpVO empVo) {
		try {
			int empno = Integer.parseInt(empVo.getEmpno());
		}catch(NumberFormatException ex) {
			return null;
		}
		EmpVO empVo2 = this.loginMapper.login(empVo);
		return empVo2;
	}

}
