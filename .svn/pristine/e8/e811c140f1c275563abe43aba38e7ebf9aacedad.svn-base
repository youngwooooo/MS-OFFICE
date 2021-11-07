package kr.or.ddit.bogo.vo;

import java.util.List;

import kr.or.ddit.file.vo.FileVO;

public class BogoVo {
	private int reprtListNo = 0;  //보고서 목록번호
	private int reprtNo = 0;  //보고서 번호
	private int reportrEmpno = 0; // 보고자 사번
	private String sj; //제목
	private String cn; //내용
	private String writngTm; //작성 시간
	private String writngTm2; //작성 시간
	private int fileNo = -1; //파일 번호
//	private MultipartFile bogoImage;	//첨부파일
//	private String bogoImageUpload;	//CUS 테이블의 CUS_IMAGE 폴더에 들어갈 서버의 이미지 경로
	private int updtEmpno = 0; //수정자 사번
	private String updtTm; // 수정 시각
	private int rnum = 0; 
	private String department;//부서 
	private int oprtrEmpno = 0;//운영자사번 
	private int rspnberEmpno = 0;
	private String reportrNm;
	private String cnfirmAt;
	private String approveSj;
	private String respntrNm;
	
	private List<FileVO> FileList;	// 첨부파일 
	
	@Override
	public String toString() {
		return "BogoVo [reprtListNo=" + reprtListNo + ", reprtNo=" + reprtNo + ", reportrEmpno=" + reportrEmpno
				+ ", sj=" + sj + ", cn=" + cn + ", writngTm=" + writngTm + ", writngTm2=" + writngTm2 + ", fileNo="
				+ fileNo + ", updtEmpno=" + updtEmpno + ", updtTm=" + updtTm + ", rnum=" + rnum + ", department="
				+ department + ", oprtrEmpno=" + oprtrEmpno + ", rspnberEmpno=" + rspnberEmpno + ", reportrNm="
				+ reportrNm + ", cnfirmAt=" + cnfirmAt + ", approveSj=" + approveSj + ", respntrNm=" + respntrNm
				+ ", FileList=" + FileList + "]";
	}

	public List<FileVO> getFileList() {
		return FileList;
	}
	public void setFileList(List<FileVO> fileList) {
		FileList = fileList;
	}
	public String getRespntrNm() {
		return respntrNm;
	}
	public void setRespntrNm(String respntrNm) {
		this.respntrNm = respntrNm;
	}
	public String getApproveSj() {
		return approveSj;
	}
	public void setApproveSj(String approveSj) {
		this.approveSj = approveSj;
	}
	public String getCnfirmAt() {
		return cnfirmAt;
	}
	public void setCnfirmAt(String cnfirmAt) {
		this.cnfirmAt = cnfirmAt;
	}
	public String getReportrNm() {
		return reportrNm;
	}
	public void setReportrNm(String reportrNm) {
		this.reportrNm = reportrNm;
	}
	public int getReprtListNo() {
		return reprtListNo;
	}
	public void setReprtListNo(int reprtListNo) {
		this.reprtListNo = reprtListNo;
	}
	public int getReprtNo() {
		return reprtNo;
	}
	public void setReprtNo(int reprtNo) {
		this.reprtNo = reprtNo;
	}
	public int getReportrEmpno() {
		return reportrEmpno;
	}
	public void setReportrEmpno(int reportrEmpno) {
		this.reportrEmpno = reportrEmpno;
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
	public String getWritngTm() {
		return writngTm;
	}
	public void setWritngTm(String writngTm) {
		this.writngTm2= writngTm.substring(0,10);
		this.writngTm = writngTm.substring(0,16);
	}
	public String getWritngTm2() {
		return writngTm2;
	}
	public void setWritngTm2(String writngTm2) {
		this.writngTm2 = writngTm2;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getUpdtEmpno() {
		return updtEmpno;
	}
	public void setUpdtEmpno(int updtEmpno) {
		this.updtEmpno = updtEmpno;
	}
	public String getUpdtTm() {
		return updtTm;
	}
	public void setUpdtTm(String updtTm) {
		this.updtTm = updtTm;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public int getOprtrEmpno() {
		return oprtrEmpno;
	}
	public void setOprtrEmpno(int oprtrEmpno) {
		this.oprtrEmpno = oprtrEmpno;
	}
	public int getRspnberEmpno() {
		return rspnberEmpno;
	}
	public void setRspnberEmpno(int rspnberEmpno) {
		this.rspnberEmpno = rspnberEmpno;
	}

}