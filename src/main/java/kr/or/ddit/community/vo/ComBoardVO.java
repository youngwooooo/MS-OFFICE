package kr.or.ddit.community.vo;

public class ComBoardVO {
	private int bbsNo;		// 게시판 번호(1:공지 2:황동
	private int cmmntyNo;	// 커뮤니티 번호
	private String bbsNm;	// 게시판 이름
	private String bbsTy;	// 게시판 유형(T:텍스트, I:사진)
	
	@Override
	public String toString() {
		return "ComBoard [bbsNo=" + bbsNo + ", cmmntyNo=" + cmmntyNo + ", bbsNm=" + bbsNm + ", bbsTy=" + bbsTy + "]";
	}
	public int getBbsNo() {
		return bbsNo;
	}
	public void setBbsNo(int bbsNo) {
		this.bbsNo = bbsNo;
	}
	public int getCmmntyNo() {
		return cmmntyNo;
	}
	public void setCmmntyNo(int cmmntyNo) {
		this.cmmntyNo = cmmntyNo;
	}
	public String getBbsNm() {
		return bbsNm;
	}
	public void setBbsNm(String bbsNm) {
		this.bbsNm = bbsNm;
	}
	public String getBbsTy() {
		return bbsTy;
	}
	public void setBbsTy(String bbsTy) {
		this.bbsTy = bbsTy;
	}
	
	
}
