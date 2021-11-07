package kr.or.ddit.todo.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.todo.vo.TodoVO;

public interface TodoService {
	// 보드 조회
	public List<TodoVO> boardAllList(String cocnrEmpno);
	// 보드 공유자 조회
	public List<TodoVO> boardCocnrAllList();
	// 보드 생성
	public int createBoard(TodoVO todoVO);
	// 보드 공유자 추가
	public int addBoardCocnr(TodoVO todoVO);
	// 보드 공유자 전체 삭제
	public int deleteAllBoardCocnr(int boardNo);
	// 보드 즐겨찾기 여부 바꾸기
	public int updateBkmk(Map<String, Object> map);
	// 보드 상세 조회(보드 정보)
	public TodoVO detailBoard(int boardNo);
	// 보드 상세 조회(보드 공유자 정보)
	public List<TodoVO> detailBoardCocnr(int boardNo);
	// 보드 이름 수정
	public int editBoardNm(TodoVO todoVO);
	// 보드 삭제
	public int deleteBoard(int boardNo);
	// 카드 메뉴 생성
	public int createCardMenu(TodoVO todoVO);
	// 생성된 카드 메뉴 조회
	public TodoVO createdCardMenuInfo(int cardMenuNo);
	// 전체 카드 메뉴 조회
	public List<TodoVO> cardMenuList();
	// 카드 메뉴 이름 수정
	public int editCardMenuNm(TodoVO todoVO);
	// 카드 메뉴 삭제
	public int deleteCardMenu(TodoVO todoVO);
	// 전체 카드 조회
	public List<TodoVO> cardList();
	// 카드 생성
	public int createCard(TodoVO todoVO);
	// 생성된 카드 조회
	public TodoVO createdCardInfo(int cardNo);
	// 카드 이름 수정
	public int editCardNm(TodoVO todoVO);
	// 카드 삭제
	public int deleteCard(TodoVO todoVO);
	// 파일 업로드 시 카드의 파일 번호 삽입
	public int editCardFileNo(TodoVO todoVO);
	// 해당 카드에 대한 파일 조회
	public List<TodoVO> cardFileList(Map<String, Integer> getFileMap);
	// 첨부 파일 삭제
	public int deleteFile(Map<String, Object> deleteFileMap);
	// 첨부 파일 전체 삭제
	public int deleteAllFile(int fileNo);
	// 카드 설명 생성/수정/삭제
	public int editCardDesc(TodoVO todoVO);
	// 카드 기한일 생성/수정
	public int editCardEndDate(TodoVO todoVO);
	// 카드 댓글 생성
	public int createAnswer(TodoVO todoVO);
	// 생성된 카드 댓글 조회
	public TodoVO createdAnswer(int answerNo);
	// 카드 번호에 따른 댓글의 수
	public int countAnswer(int cardNo);
	// 카드 댓글 전체 조회
	public List<TodoVO> countAnswerList();
	// 해당 카드의 댓글 개수 조회
	public int answerCount(int cardNo);
	// 카드 댓글 삭제
	public int deleteAnswer(TodoVO todoVO);
	// 카드 댓글 전체 삭제
	public int deleteAllAnswer(TodoVO todoVO);
	// 카드 댓글 수정
	public int editAnswer(TodoVO todoVO);
	
}
