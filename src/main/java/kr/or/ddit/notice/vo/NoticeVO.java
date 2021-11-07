package kr.or.ddit.notice.vo;

import java.util.Date;
import java.util.List;

import kr.or.ddit.file.vo.FileVO;

public class NoticeVO {
	private int noticeNo;			// 공지 번호
	private int wrterEmpno;			// 작성자 사번
	private String sj;				// 제목
	private String cn;				// 내용
	private Date writngTm;			// 작성 시각
	private String imprtncAt;		// 중요 여부 -> 파일여부
	private int updtEmpno;			// 수정자 사번
	private String updtTm;			// 수정 시각
	private int fileNo = -1;		// 파일 번호
	private int rnum;				// 행번호
	private int drnum;
	private String nm;				// 작성자 사번의 이름
	private String updtNm;			// 수정자 사번의 이름
	
	private List<FileVO> FileList;	// 첨부파일 

	
	
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", wrterEmpno=" + wrterEmpno + ", sj=" + sj + ", cn=" + cn
				+ ", writngTm=" + writngTm + ", imprtncAt=" + imprtncAt + ", updtEmpno=" + updtEmpno + ", updtTm="
				+ updtTm + ", fileNo=" + fileNo + ", rnum=" + rnum + ", drnum=" + drnum + ", nm=" + nm + ", updtNm="
				+ updtNm + ", FileList=" + FileList + "]";
	}

	
	public int getDrnum() {
		return drnum;
	}


	public void setDrnum(int drnum) {
		this.drnum = drnum;
	}


	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public int getWrterEmpno() {
		return wrterEmpno;
	}

	public void setWrterEmpno(int wrterEmpno) {
		this.wrterEmpno = wrterEmpno;
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

	public Date getWritngTm() {
		return writngTm;
	}

	public void setWritngTm(Date writngTm) {
		this.writngTm = writngTm;
	}

	public String getImprtncAt() {
		return imprtncAt;
	}

	public void setImprtncAt(String imprtncAt) {
		this.imprtncAt = imprtncAt;
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

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public String getUpdtNm() {
		return updtNm;
	}

	public void setUpdtNm(String updtNm) {
		this.updtNm = updtNm;
	}

	public List<FileVO> getFileList() {
		return FileList;
	}

	public void setFileList(List<FileVO> fileList) {
		FileList = fileList;
	}

}
