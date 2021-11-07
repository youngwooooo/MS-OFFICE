package kr.or.ddit.todo.vo;

import java.util.List;

import kr.or.ddit.file.vo.FileVO;

public class TodoVO extends FileVO{
	private int boardNo;					// 보드 번호
	private int esterEmpno;					// 보드생성자 사번
	private String boardNm;					// 보드 이름
	private List<Integer> cocnrEmpnoArr;	// 보드공유자 사번 배열
	private int cocnrEmpno;					// 보드공유자 사번
	private String cocnrNm;					// 보드공유자 이름
	private String cocnrOfcpsNm;			// 보드공유자 직위
	private String bkmk;					// 즐겨찾기 여부
	private String wrtingDe;				// 보드 작성일자		
	private int cardMenuNo;					// 카드 메뉴 번호
	private String cardSj;					// 카드 제목
	private int cardOrdr;					// 카드 순서
	private int cardNo;						// 카드 번호
	private String cardNm;					// 카드 이름
	private int wrterEmpno;					// 카드생성자 사번
	private String cardCn;					// 카드 내용
	private int fileNo;						// 카드 첨부파일 번호
	private String cardEndDt;				// 카드 기한일
	private String writngTm;				// 작성 시각
	private int updtEmpno;					// 수정자 사번
	private String updtTm;					// 수정 시각
	private int answerCount;				// 카드 댓글 수
	private int answerNo;					// 카드 댓글 번호
	private String answerCn;				// 카드 댓글 내용
	private int photoNo;					// 카드 댓글 작성자 파일 번호(프로필 사진)
	private String photoCours;				// 카드 댓글 작성자 파일 경로(프로필 사진)
	private String photoNm;					// 카드 댓글 작성자 파일 이름(프로필 사진)
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getEsterEmpno() {
		return esterEmpno;
	}
	public void setEsterEmpno(int esterEmpno) {
		this.esterEmpno = esterEmpno;
	}
	public String getBoardNm() {
		return boardNm;
	}
	public void setBoardNm(String boardNm) {
		this.boardNm = boardNm;
	}
	public List<Integer> getCocnrEmpnoArr() {
		return cocnrEmpnoArr;
	}
	public void setCocnrEmpnoArr(List<Integer> cocnrEmpnoArr) {
		this.cocnrEmpnoArr = cocnrEmpnoArr;
	}
	public int getCocnrEmpno() {
		return cocnrEmpno;
	}
	public void setCocnrEmpno(int cocnrEmpno) {
		this.cocnrEmpno = cocnrEmpno;
	}
	public String getCocnrNm() {
		return cocnrNm;
	}
	public void setCocnrNm(String cocnrNm) {
		this.cocnrNm = cocnrNm;
	}
	public String getCocnrOfcpsNm() {
		return cocnrOfcpsNm;
	}
	public void setCocnrOfcpsNm(String cocnrOfcpsNm) {
		this.cocnrOfcpsNm = cocnrOfcpsNm;
	}
	public String getBkmk() {
		return bkmk;
	}
	public void setBkmk(String bkmk) {
		this.bkmk = bkmk;
	}
	public String getWrtingDe() {
		return wrtingDe;
	}
	public void setWrtingDe(String wrtingDe) {
		this.wrtingDe = wrtingDe;
	}
	public int getCardMenuNo() {
		return cardMenuNo;
	}
	public void setCardMenuNo(int cardMenuNo) {
		this.cardMenuNo = cardMenuNo;
	}
	public String getCardSj() {
		return cardSj;
	}
	public void setCardSj(String cardSj) {
		this.cardSj = cardSj;
	}
	public int getCardOrdr() {
		return cardOrdr;
	}
	public void setCardOrdr(int cardOrdr) {
		this.cardOrdr = cardOrdr;
	}
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	public String getCardNm() {
		return cardNm;
	}
	public void setCardNm(String cardNm) {
		this.cardNm = cardNm;
	}
	public int getWrterEmpno() {
		return wrterEmpno;
	}
	public void setWrterEmpno(int wrterEmpno) {
		this.wrterEmpno = wrterEmpno;
	}
	public String getCardCn() {
		return cardCn;
	}
	public void setCardCn(String cardCn) {
		this.cardCn = cardCn;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public String getCardEndDt() {
		return cardEndDt;
	}
	public void setCardEndDt(String cardEndDt) {
		this.cardEndDt = cardEndDt;
	}
	public String getWritngTm() {
		return writngTm;
	}
	public void setWritngTm(String writngTm) {
		this.writngTm = writngTm;
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
	public int getAnswerCount() {
		return answerCount;
	}
	public void setAnswerCount(int answerCount) {
		this.answerCount = answerCount;
	}
	public int getAnswerNo() {
		return answerNo;
	}
	public void setAnswerNo(int answerNo) {
		this.answerNo = answerNo;
	}
	public String getAnswerCn() {
		return answerCn;
	}
	public void setAnswerCn(String answerCn) {
		this.answerCn = answerCn;
	}
	public int getPhotoNo() {
		return photoNo;
	}
	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
	}
	public String getPhotoCours() {
		return photoCours;
	}
	public void setPhotoCours(String photoCours) {
		this.photoCours = photoCours;
	}
	public String getPhotoNm() {
		return photoNm;
	}
	public void setPhotoNm(String photoNm) {
		this.photoNm = photoNm;
	}
	
	@Override
	public String toString() {
		return "TodoVO [boardNo=" + boardNo + ", esterEmpno=" + esterEmpno + ", boardNm=" + boardNm + ", cocnrEmpnoArr="
				+ cocnrEmpnoArr + ", cocnrEmpno=" + cocnrEmpno + ", cocnrNm=" + cocnrNm + ", cocnrOfcpsNm="
				+ cocnrOfcpsNm + ", bkmk=" + bkmk + ", wrtingDe=" + wrtingDe + ", cardMenuNo=" + cardMenuNo
				+ ", cardSj=" + cardSj + ", cardOrdr=" + cardOrdr + ", cardNo=" + cardNo + ", cardNm=" + cardNm
				+ ", wrterEmpno=" + wrterEmpno + ", cardCn=" + cardCn + ", fileNo=" + fileNo + ", cardEndDt="
				+ cardEndDt + ", writngTm=" + writngTm + ", updtEmpno=" + updtEmpno + ", updtTm=" + updtTm
				+ ", answerCount=" + answerCount + ", answerNo=" + answerNo + ", answerCn=" + answerCn + ", photoNo="
				+ photoNo + ", photoCours=" + photoCours + ", photoNm=" + photoNm + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
