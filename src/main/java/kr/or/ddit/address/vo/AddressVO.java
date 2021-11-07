package kr.or.ddit.address.vo;

public class AddressVO {
	private int adresNo;
	private String forDel;
	private String empno;
	private String nm;                                                    
	private String middleNm;                                              
	private String ncnm;                                                  
	private String cmpny;                                                 
	private String ofcps;                                                 
	private String adres;                                                 
	private String adresDetail;                                           
	private String email;                                                 
	private String telno;                                                 
	private String cmpnyTelno;                                            
	private String cmpnyAdres;                                           
	private String fileNm;
	private String fileCours;
	private String fileOrginlNm;
	
	
	public String getCmpnyAdres() {
		return cmpnyAdres;
	}
	public void setCmpnyAdres(String cmpnyAdres) {
		this.cmpnyAdres = cmpnyAdres;
	}
	public int getAdresNo() {
		return adresNo;
	}
	public void setAdresNo(int adresNo) {
		this.adresNo = adresNo;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getMiddleNm() {
		return middleNm;
	}
	public void setMiddleNm(String middleNm) {
		this.middleNm = middleNm;
	}
	public String getNcnm() {
		return ncnm;
	}
	public void setNcnm(String ncnm) {
		this.ncnm = ncnm;
	}
	public String getCmpny() {
		return cmpny;
	}
	public void setCmpny(String cmpny) {
		this.cmpny = cmpny;
	}
	public String getOfcps() {
		return ofcps;
	}
	public void setOfcps(String ofcps) {
		this.ofcps = ofcps;
	}
	public String getAdres() {
		return adres;
	}
	public void setAdres(String adres) {
		this.adres = adres;
	}
	public String getAdresDetail() {
		return adresDetail;
	}
	public void setAdresDetail(String adresDetail) {
		this.adresDetail = adresDetail;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelno() {
		return telno;
	}
	public void setTelno(String telno) {
		this.telno = telno;
	}
	public String getCmpnyTelno() {
		return cmpnyTelno;
	}
	public void setCmpnyTelno(String cmpnyTelno) {
		this.cmpnyTelno = cmpnyTelno;
	}
	public String getFileNm() {
		return fileNm;
	}
	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
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
	
	public String getForDel() {
		return forDel;
	}
	
	public void setForDel(String forDel) {
		this.forDel = forDel;
	}
	@Override
	public String toString() {
		return "AddressVO [adresNo=" + adresNo + ", forDel=" + forDel + ", empno=" + empno + ", nm=" + nm
				+ ", middleNm=" + middleNm + ", ncnm=" + ncnm + ", cmpny=" + cmpny + ", ofcps=" + ofcps + ", adres="
				+ adres + ", adresDetail=" + adresDetail + ", email=" + email + ", telno=" + telno + ", cmpnyTelno="
				+ cmpnyTelno + ", cmpnyAdres=" + cmpnyAdres + ", fileNm=" + fileNm + ", fileCours=" + fileCours
				+ ", fileOrginlNm=" + fileOrginlNm + "]";
	}
	
	
}
