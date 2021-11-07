package kr.or.ddit.util;
//페이징 처리 전용 클래스
public class Pagination {
	private int total;	//전체 게시글의 개수(26행)
	private int currentPage;	//사용자가 요청한 페이지 번호(1페이지)
	private int totalPages;	//전체 페이지의 개수
	private int startPage;	//페이지이동 링크의 시작 번호
	private int endPage;	//페이지이동 링크의 끝 번호
	//생성자
	//size : 한 화면에 보여질 게시글 행의 개수
	public Pagination(int total, int currentPage, int size) {
		this.total = total;
		this.currentPage = currentPage;
		
		if(total==0) {//전체 게시글의 개수가 0(게시글이 없다면..)
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		}else {//게시글이 있다면
			//2(totalPages) <- 26(total) / 10(size 한 화면에 보여질 행 수)
			totalPages = total / size;
			if(total % size > 0) {
				totalPages++;	//3(totalPages)
			}
			
			//시작페이지번호 구하는 공식 : 사용자현재페이지 / 페이징크기 * 페이징크기 + 1;
			startPage = currentPage / 5 * 5 + 1;
			//만약에 (사용자현재페이지 % 페이징크기)가 0이면 결과 - 페이징크기를 해줘야 함
			int modVal = currentPage % 5;
			if(modVal == 0) startPage -= 5;
			
			//종료페이지번호 구하는 공식 : 시작페이지번호 + (페이징크기-1)
			endPage = startPage + 4;
			//종료페이지번호가 전체페이지보다 크면 종료페이지번호를 전체페이지로 보정해줘야 함
			if(endPage > totalPages) endPage = totalPages;
		}
	}//end 생성자
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	@Override
	public String toString() {
		return "Pagination [total=" + total + ", currentPage=" + currentPage + ", totalPages=" + totalPages
				+ ", startPage=" + startPage + ", endPage=" + endPage + "]";
	}
	//게시글이 없는지 체크. 없으면 true 반환
	public boolean hasNoArticles() {
		return total == 0;
	}
	///게시글이 있는지 체크. 있으면 true 반환
	public boolean hasArticles() {
		return total > 0;
	}
	
}









