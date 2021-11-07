package kr.or.ddit.todo.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.todo.vo.TodoVO;

@Mapper
public interface TodoMapper {
	// 보드 조회
	List<TodoVO> boardAllList(String cocnrEmpno);
	// 보드 공유자 조회
	List<TodoVO> boardCocnrAllList();
	// 보드 생성
	int createBoard(TodoVO todoVO);
	// 보드 공유자 추가
	int addBoardCocnr(TodoVO todoVO);
	// 보드 공유자 전체 삭제
	int deleteAllBoardCocnr(int boardNo);
	// 보드 즐겨찾기 여부 바꾸기
	int updateBkmk(Map<String, Object> map);
	// 보드 상세 조회(보드 정보)
	TodoVO detailBoard(int boardNo);
	// 보드 상세 조회(보드 공유자 정보)
	List<TodoVO> detailBoardCocnr(int boardNo);
	// 보드 이름 수정
	int editBoardNm(TodoVO todoVO);
	// 보드 삭제
	int deleteBoard(int boardNo);
	// 카드 메뉴 생성
	int createCardMenu(TodoVO todoVO);
	// 생성된 카드 메뉴 조회
	TodoVO createdCardMenuInfo(int cardMenuNo);
	// 전체 카드 메뉴 조회
	List<TodoVO> cardMenuList();
	// 카드 메뉴 이름 수정
	int editCardMenuNm(TodoVO todoVO);
	// 카드 메뉴 삭제
	int deleteCardMenu(TodoVO todoVO);
	// 전체 카드 조회
	List<TodoVO> cardList();
	// 카드 생성
	int createCard(TodoVO todoVO);
	// 생성된 카드 조회
	TodoVO createdCardInfo(int cardNo);
	// 카드 이름 수정
	int editCardNm(TodoVO todoVO);
	// 카드 삭제
	int deleteCard(TodoVO todoVO);
	// 파일 업로드 시 카드의 파일번호 삽입
	int editCardFileNo(TodoVO todoVO);
	// 해당 카드에 대한 파일 조회
	List<TodoVO> cardFileList(Map<String, Integer> getFileMap);
	// 첨부 파일 삭제
	int deleteFile(Map<String, Object> deleteFileMap);
	// 첨부 파일 전체 삭제
	int deleteAllFile(int fileNo);
	// 카드 설명 생성/수정/삭제
	int editCardDesc(TodoVO todoVO);
	// 기한일 생성/수정
	int editCardEndDate(TodoVO todoVO);
	// 카드 댓글 생성
	int createAnswer(TodoVO todoVO);
	// 생성된 카드 댓글 조회
	TodoVO createdAnswer(int answerNo);
	// 카드 번호에 따른 댓글의 수
	int countAnswer(int cardNo);
	// 카드 댓글 전체 조회
	List<TodoVO> countAnswerList();
	// 해당 카드의 댓글 개수 조회
	int answerCount(int cardNo);
	// 카드 댓글 삭제
	int deleteAnswer(TodoVO todoVO);
	// 카드 댓글 전체 삭제
	int deleteAllAnswer(TodoVO todoVO);
	// 카드 댓글 수정
	int editAnswer(TodoVO todoVO);
}
