package kr.or.ddit.ehr.vo;

public class EhrVO {
	private String empNo;
	private String tm;
	private String rcordCode;
	private String workAccmltTm;
	private String tm2;
	private String tm3;
	private String tmh;
	private String tmm;
	private String tms;
	
	public String getTm3() {
		return tm3;
	}
	public void setTm3(String tm3) {
		this.tm3 = tm3;
	}
	public String getTm2() {
		return tm2;
	}
	public void setTm2(String tm2) {
		this.tm2 = tm2;
	}
	public String getWorkAccmltTm() {
		return workAccmltTm;
	}
	public void setWorkAccmltTm(String workAccmltTm) {
		this.workAccmltTm = workAccmltTm;
	}

	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	public String getTm() {
		return tm;
	}
	public void setTm(String tm) {
		this.tm2 = tm.substring(11, 19);
		this.tm = tm;
	}
	public String getRcordCode() {
		return rcordCode;
	}
	public void setRcordCode(String rcordCode) {
		this.rcordCode = rcordCode;
	}
	public String getTmh() {
		return tmh;
	}
	public void setTmh(String tmh) {
		this.tmh = tmh;
	}
	public String getTmm() {
		return tmm;
	}
	public void setTmm(String tmm) {
		this.tmm = tmm;
	}
	
	public String getTms() {
		return tms;
	}
	public void setTms(String tms) {
		this.tms = tms;
	}
	
	@Override
	public String toString() {
		return "EhrVO [empNo=" + empNo + ", tm=" + tm + ", rcordCode=" + rcordCode + ", workAccmltTm=" + workAccmltTm
				+ ", tm2=" + tm2 + ", tm3=" + tm3 + ", tmh=" + tmh + ", tmm=" + tmm + "]";
	}
}
