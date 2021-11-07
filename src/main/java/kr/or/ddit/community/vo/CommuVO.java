package kr.or.ddit.community.vo;

import java.util.Date;

public class CommuVO {
	private int cmmntyNo;	// 커뮤니티 번호
	private int estblEmpno;	// 개설자 사번
	private String sj;		// 커뮤니티 제목
	private String cn;		// 커뮤니티 내용
	private String rcritAt;	// 모집 여부
	private String estblTm;	// 개설 일자
	
	private String nm;		// 개설자 사번의 이름
	private int boardNum;	// 게시물 수
	private int joinNum;	// 회원 수
	private String deptNm;	// 개설자 부서
	
	private int fileNo;		// 프로필 사진가지고 오기 위한 파일넘버
	
	

	@Override
	public String toString() {
		return "CommuVO [cmmntyNo=" + cmmntyNo + ", estblEmpno=" + estblEmpno + ", sj=" + sj + ", cn=" + cn
				+ ", rcritAt=" + rcritAt + ", estblTm=" + estblTm + ", nm=" + nm + ", boardNum=" + boardNum
				+ ", joinNum=" + joinNum + ", deptNm=" + deptNm + ", fileNo=" + fileNo + "]";
	}

	public String getDeptNm() {
		return deptNm;
	}

	public void setDeptNm(String deptNm) {
		this.deptNm = deptNm;
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
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public int getCmmntyNo() {
		return cmmntyNo;
	}
	public String getEstblTm() {
		return estblTm;
	}
	public void setEstblTm(String estblTm) {
		this.estblTm = estblTm;
	}
	public void setCmmntyNo(int cmmntyNo) {
		this.cmmntyNo = cmmntyNo;
	}
	public int getEstblEmpno() {
		return estblEmpno;
	}
	public void setEstblEmpno(int estblEmpno) {
		this.estblEmpno = estblEmpno;
	}
	public String getSj() {
		return sj;
	}
	public void setSj(String sj) {
		this.sj = sj;
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
	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	
}
