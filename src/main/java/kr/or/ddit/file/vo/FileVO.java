package kr.or.ddit.file.vo;

import java.util.Date;

public class FileVO {
	private int fileNo;			// 파일 번호
	private int fileOrdr;		// 파일 순서
	private String fileNm;		// 파일 이름
	private String extsn;		// 확장자
	private String fileCours;	// 파일 경로
	private String fileOrginlNm;// 파일 원본 이름
	private String streTm;		// 저장 시각
	
	private Boolean image;		// 이미지 여부
	private String fileSize;	// 파일 사이즈
	

	@Override
	public String toString() {
		return "FileVO [fileNo=" + fileNo + ", fileOrdr=" + fileOrdr + ", fileNm=" + fileNm + ", extsn=" + extsn
				+ ", fileCours=" + fileCours + ", fileOrginlNm=" + fileOrginlNm + ", streTm=" + streTm + ", image="
				+ image + ", fileSize=" + fileSize + "]";
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public Boolean getImage() {
		return image;
	}

	public void setImage(Boolean image) {
		this.image = image;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public int getFileOrdr() {
		return fileOrdr;
	}

	public void setFileOrdr(int fileOrdr) {
		this.fileOrdr = fileOrdr;
	}

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getExtsn() {
		return extsn;
	}

	public void setExtsn(String extsn) {
		this.extsn = extsn;
	}

	public String getFileCours() {
		return fileCours;
	}

	public void setFileCours(String fileCours) {
		this.fileCours = fileCours;
	}

	public String getFileOrginlNm() {
		return fileOrginlNm;
	}

	public void setFileOrginlNm(String fileOrginlNm) {
		this.fileOrginlNm = fileOrginlNm;
	}

	public String getStreTm() {
		return streTm;
	}

	public void setStreTm(String streTm) {
		this.streTm = streTm;
	}
	
}
