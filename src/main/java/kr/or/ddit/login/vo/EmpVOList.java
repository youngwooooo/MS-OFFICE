package kr.or.ddit.login.vo;

import java.util.List;

public class EmpVOList {
	private List<EmpVO> empVoList;
	private List<EmpVO> empVoList2;
	
	private String chttRoomNo;
	public List<EmpVO> getEmpVoList() {
		return empVoList;
	}

	public void setEmpVoList(List<EmpVO> empVoList) {
		this.empVoList = empVoList;
	}

	public String getChttRoomNo() {
		return chttRoomNo;
	}

	public void setChttRoomNo(String chttRoomNo) {
		this.chttRoomNo = chttRoomNo;
	}

	public List<EmpVO> getEmpVoList2() {
		return empVoList2;
	}

	public void setEmpVoList2(List<EmpVO> empVoList2) {
		this.empVoList2 = empVoList2;
	}
	
	
}
