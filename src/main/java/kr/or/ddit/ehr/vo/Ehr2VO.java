package kr.or.ddit.ehr.vo;

public class Ehr2VO {
	private String fileNo;
	private String empNo;
	private String nm;
	private String startTm;
	private String endTm;
	private String rcordCode;
	private String workAccmltTm;
	public String getFileNo() {
		return fileNo;
	}
	public void setFileNo(String fileNo) {
		this.fileNo = fileNo;
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getStartTm() {
		return startTm;
	}
	public void setStartTm(String startTm) {
		this.startTm = startTm;
	}
	public String getEndTm() {
		return endTm;
	}
	public void setEndTm(String endTm) {
		this.endTm = endTm;
	}
	public String getRcordCode() {
		return rcordCode;
	}
	public void setRcordCode(String rcordCode) {
		this.rcordCode = rcordCode;
	}
	public String getWorkAccmltTm() {
		return workAccmltTm;
	}
	public void setWorkAccmltTm(String workAccmltTm) {
		this.workAccmltTm = workAccmltTm;
	}
	@Override
	public String toString() {
		return "Ehr2VO [fileNo=" + fileNo + ", empNo=" + empNo + ", nm=" + nm + ", startTm=" + startTm + ", endTm=" + endTm + ", rcordCode=" + rcordCode + ", workAccmltTm=" + workAccmltTm + "]";
	}
}
