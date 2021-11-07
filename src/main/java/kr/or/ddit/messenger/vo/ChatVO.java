package kr.or.ddit.messenger.vo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ChatVO {
	
	public enum MessageType {
	    ENTER,CHAT,LEAVE,CONTACT,NOREAD
	}
	
	private String chttNo;
	private String chttRoomNo;
	private String prtcpntEmpno;
	private String nm;
	private String emtcnNo;
	private String cn;
	private String writngTm;
	private String fileNo;
	private String updtEmpno;
	private String updtTm;
	private MessageType type;
	
	@Override
	public String toString() {
		return "ChatVO [chttNo=" + chttNo + ", chttRoomNo=" + chttRoomNo + ", prtcpntEmpno=" + prtcpntEmpno
				+ ", emtcnNo=" + emtcnNo + ", cn=" + cn + ", writngTm=" + writngTm + ", fileNo=" + fileNo
				+ ", updtEmpno=" + updtEmpno + ", updtTm=" + updtTm + ", type=" + type + "]";
	}
	
	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public MessageType getType() {
		return type;
	}
	public void setType(MessageType type) {
		this.type = type;
	}
	public String getChttNo() {
		return chttNo;
	}
	public void setChttNo(String chttNo) {
		this.chttNo = chttNo;
	}
	public String getChttRoomNo() {
		return chttRoomNo;
	}
	public void setChttRoomNo(String chttRoomNo) {
		this.chttRoomNo = chttRoomNo;
	}
	public String getPrtcpntEmpno() {
		return prtcpntEmpno;
	}
	public void setPrtcpntEmpno(String prtcpntEmpno) {
		this.prtcpntEmpno = prtcpntEmpno;
	}
	public String getEmtcnNo() {
		return emtcnNo;
	}
	public void setEmtcnNo(String emtcnNo) {
		this.emtcnNo = emtcnNo;
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
		this.writngTm = writngTm;
	}
	public String getFileNo() {
		return fileNo;
	}
	public void setFileNo(String fileNo) {
		this.fileNo = fileNo;
	}
	public String getUpdtEmpno() {
		return updtEmpno;
	}
	public void setUpdtEmpno(String updtEmpno) {
		this.updtEmpno = updtEmpno;
	}
	public String getUpdtTm() {
		return updtTm;
	}
	public void setUpdtTm(String updtTm) {
		this.updtTm = updtTm;
	}
	
}


