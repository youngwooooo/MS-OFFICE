package kr.or.ddit.mail.vo;

import java.util.List;

import kr.or.ddit.file.vo.FileVO;

public class MailVo {
	public String emailNo; //메일번호
	public String dsptchEmpno; //발신자 사번
	public String sj; //제목
	public String cn; //내용
	public String dsptchTm; //발신 시각
	public String recptnTm; //수신 시각
	public int fileNo= -1; //파일번호
	public String recptnEmpno;// 수신자 사번
	public String tag;//태그
	public String imprtncAt;//중요메일 여부
	public String cnfirmTm;//확인 시각
	private List<FileVO> FileList;
	private String receiverNm;
	private String  dsptchNm;
	//읽음 처리를 추가한 것
	private String cnfirmAt;
	private int rnum;
	
	// 확인하지 않은 메일의 개수
	private int count;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getDsptchNm() {
		return dsptchNm;
	}
	public void setDsptchNm(String dsptchNm) {
		this.dsptchNm = dsptchNm;
	}

	//삭제를 위해 emailNo 값들을 담아주는 필드
	private String emailNoList;
	
	public String getReceiverNm() {
		return receiverNm;
	}
	public void setReceiverNm(String receiverNm) {
		this.receiverNm = receiverNm;
	}
	public List<FileVO> getFileList() {
		return FileList;
	}
	public void setFileList(List<FileVO> fileList) {
		FileList = fileList;
	}
	public String getEmailNo() {
		return emailNo;
	}
	public void setEmailNo(String emailNo) {
		this.emailNo = emailNo;
	}
	public String getDsptchEmpno() {
		return dsptchEmpno;
	}
	public void setDsptchEmpno(String dsptchEmpno) {
		this.dsptchEmpno = dsptchEmpno;
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
	public String getDsptchTm() {
		return dsptchTm;
	}
	public void setDsptchTm(String dsptchTm) {
		this.dsptchTm = dsptchTm.substring(0,16);
	}
	public String getRecptnTm() {
		return recptnTm;
	}
	public void setRecptnTm(String recptnTm) {
		this.recptnTm = recptnTm.substring(0,16);
		
	}

	public String getRecptnEmpno() {
		return recptnEmpno;
	}
	public void setRecptnEmpno(String recptnEmpno) {
		this.recptnEmpno = recptnEmpno;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getImprtncAt() {
		return imprtncAt;
	}
	public void setImprtncAt(String imprtncAt) {
		this.imprtncAt = imprtncAt;
	}
	public String getCnfirmTm() {
		return cnfirmTm;
	}
	public void setCnfirmTm(String cnfirmTm) {
		this.cnfirmTm = cnfirmTm.substring(0,16);
	}
	
	//추가한 것
	public String getCnfirmAt() {
		return cnfirmAt;
	}
	public void setCnfirmAt(String cnfirmAt) {
		this.cnfirmAt = cnfirmAt;
	}
	
	public String getEmailNoList() {
		return emailNoList;
	}
	public void setEmailNoList(String emailNoList) {
		this.emailNoList = emailNoList;
	}
	@Override
	public String toString() {
		return "MailVo [emailNo=" + emailNo + ", dsptchEmpno=" + dsptchEmpno + ", sj=" + sj + ", cn=" + cn
				+ ", dsptchTm=" + dsptchTm + ", recptnTm=" + recptnTm + ", fileNo=" + fileNo + ", recptnEmpno="
				+ recptnEmpno + ", tag=" + tag + ", imprtncAt=" + imprtncAt + ", cnfirmTm=" + cnfirmTm + ", FileList="
				+ FileList + ", receiverNm=" + receiverNm + ", dsptchNm=" + dsptchNm + ", cnfirmAt=" + cnfirmAt
				+ ", rnum=" + rnum + ", count=" + count + ", emailNoList=" + emailNoList + "]";
	}
	
	
	

	
	
}
