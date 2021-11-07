package kr.or.ddit.alarm.vo;

public class AlarmVO {
	private int newNo;
	private int newEmpno;
	private String newCn;
	private String wrtingDt;
	private String newAt;
	private int docNo;
	private String docCategory;
	
	public int getNewNo() {
		return newNo;
	}
	public void setNewNo(int newNo) {
		this.newNo = newNo;
	}
	public int getNewEmpno() {
		return newEmpno;
	}
	public void setNewEmpno(int newEmpno) {
		this.newEmpno = newEmpno;
	}
	public String getNewCn() {
		return newCn;
	}
	public void setNewCn(String newCn) {
		this.newCn = newCn;
	}
	public String getWrtingDt() {
		return wrtingDt;
	}
	public void setWrtingDt(String wrtingDt) {
		this.wrtingDt = wrtingDt;
	}
	public String getNewAt() {
		return newAt;
	}
	public void setNewAt(String newAt) {
		this.newAt = newAt;
	}
	public int getDocNo() {
		return docNo;
	}
	public void setDocNo(int docNo) {
		this.docNo = docNo;
	}
	public String getDocCategory() {
		return docCategory;
	}
	public void setDocCategory(String docCategory) {
		this.docCategory = docCategory;
	}
	
	@Override
	public String toString() {
		return "AlarmVO [newNo=" + newNo + ", newEmpno=" + newEmpno + ", newCn=" + newCn + ", wrtingDt=" + wrtingDt
				+ ", newAt=" + newAt + ", docNo=" + docNo + ", docCategory=" + docCategory + "]";
	}
	
	
	
	
	
	
	
	
	
}
