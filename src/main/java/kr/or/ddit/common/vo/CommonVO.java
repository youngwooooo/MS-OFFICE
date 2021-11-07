package kr.or.ddit.common.vo;

public class CommonVO {
	private int no;
	private int wrterEmpno;
	private String nm;
	private String ofcpsNm;
	private String sj;
	private String wrtingTm;
	private String fileCours;
	private String fileNm;
	private String type;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getWrterEmpno() {
		return wrterEmpno;
	}
	public void setWrterEmpno(int wrterEmpno) {
		this.wrterEmpno = wrterEmpno;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getOfcpsNm() {
		return ofcpsNm;
	}
	public void setOfcpsNm(String ofcpsNm) {
		this.ofcpsNm = ofcpsNm;
	}
	public String getSj() {
		return sj;
	}
	public void setSj(String sj) {
		this.sj = sj;
	}
	public String getWrtingTm() {
		return wrtingTm;
	}
	public void setWrtingTm(String wrtingTm) {
		this.wrtingTm = wrtingTm;
	}
	public String getFileCours() {
		return fileCours;
	}
	public void setFileCours(String fileCours) {
		this.fileCours = fileCours;
	}
	public String getFileNm() {
		return fileNm;
	}
	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "CommonVO [no=" + no + ", wrterEmpno=" + wrterEmpno + ", nm=" + nm + ", ofcpsNm=" + ofcpsNm + ", sj="
				+ sj + ", wrtingTm=" + wrtingTm + ", fileCours=" + fileCours + ", fileNm=" + fileNm + ", type=" + type
				+ "]";
	}
	
	
	
}
