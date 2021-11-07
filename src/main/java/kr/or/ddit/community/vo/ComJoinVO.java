package kr.or.ddit.community.vo;

public class ComJoinVO {
	private int cmmntyNo;		// 커뮤니티 번호
	private int sbscrberEmpno;	// 가입자 사번
	private int approveEmpno;	// 개설자 사번
	private String approveTm;	// 가입 시각
	private String approveAt;	// 승인 여부
	
	private String nm;			// 가입자 사번 이름
	private String sj;			// 커뮤니티 제목
	private String cn;			// 커뮤니티 내용
	private String rcritAt;		// 모집 여부
	private String estblTm;		// 개설 일자
	private int boardNum;		// 게시물 수
	private int joinNum;		// 회원 수
	private String deptNm;		// 가입자 부서
	
	private int rnum;						
	
	@Override
	public String toString() {
		return "ComJoinVO [cmmntyNo=" + cmmntyNo + ", sbscrberEmpno=" + sbscrberEmpno + ", approveEmpno=" + approveEmpno
				+ ", approveTm=" + approveTm + ", approveAt=" + approveAt + ", nm=" + nm + ", sj=" + sj + ", cn=" + cn
				+ ", rcritAt=" + rcritAt + ", estblTm=" + estblTm + ", boardNum=" + boardNum + ", joinNum=" + joinNum
				+ ", deptNm=" + deptNm + ", rnum=" + rnum + "]";
	}


	public String getDeptNm() {
		return deptNm;
	}


	public void setDeptNm(String deptNm) {
		this.deptNm = deptNm;
	}


	public int getRnum() {
		return rnum;
	}


	public void setRnum(int rnum) {
		this.rnum = rnum;
	}


	public String getDept() {
		return deptNm;
	}

	public void setDept(String deptNm) {
		this.deptNm = deptNm;
	}

	public String getCn() {
		return cn;
	}
	public void setCn(String cn) {
		this.cn = cn;
	}
	public String getRcritAt() {
		return rcritAt;
	}
	public void setRcritAt(String rcritAt) {
		this.rcritAt = rcritAt;
	}
	public String getEstblTm() {
		return estblTm;
	}
	public void setEstblTm(String estblTm) {
		this.estblTm = estblTm;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public int getJoinNum() {
		return joinNum;
	}
	public void setJoinNum(int joinNum) {
		this.joinNum = joinNum;
	}
	public String getSj() {
		return sj;
	}
	public void setSj(String sj) {
		this.sj = sj;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public int getCmmntyNo() {
		return cmmntyNo;
	}
	public void setCmmntyNo(int cmmntyNo) {
		this.cmmntyNo = cmmntyNo;
	}
	public int getSbscrberEmpno() {
		return sbscrberEmpno;
	}
	public void setSbscrberEmpno(int sbscrberEmpno) {
		this.sbscrberEmpno = sbscrberEmpno;
	}
	public int getApproveEmpno() {
		return approveEmpno;
	}
	public void setApproveEmpno(int approveEmpno) {
		this.approveEmpno = approveEmpno;
	}
	public String getApproveTm() {
		return approveTm;
	}
	public void setApproveTm(String approveTm) {
		this.approveTm = approveTm;
	}
	public String getApproveAt() {
		return approveAt;
	}
	public void setApproveAt(String approveAt) {
		this.approveAt = approveAt;
	}
	
}
