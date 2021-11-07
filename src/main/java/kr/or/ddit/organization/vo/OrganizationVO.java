package kr.or.ddit.organization.vo;

import kr.or.ddit.login.vo.EmpVO;

public class OrganizationVO extends EmpVO{
	private int lvl;
	private String suprrDeptCode;
	
	public int getLvl() {
		return lvl;
	}
	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
	public String getSuprrDeptCode() {
		return suprrDeptCode;
	}
	public void setSuprrDeptCode(String suprrDeptCode) {
		this.suprrDeptCode = suprrDeptCode;
	}
	
	@Override
	public String toString() {
		return "OrganizationVO [lvl=" + lvl + ", suprrDeptCode=" + suprrDeptCode + "]";
	}
	
	
	
	
	
	
	
}
