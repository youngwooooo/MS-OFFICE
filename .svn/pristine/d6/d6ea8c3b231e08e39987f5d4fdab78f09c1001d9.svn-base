package kr.or.ddit.todo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.todo.mapper.TodoMapper;
import kr.or.ddit.todo.service.TodoService;
import kr.or.ddit.todo.vo.TodoVO;

@Service
public class TodoServiceImpl implements TodoService{
	
	@Autowired
	TodoMapper tm;
	
	@Autowired
	FileMapper fm;
	
	// 보드 조회
	@Override
	public List<TodoVO> boardAllList(String cocnrEmpno) {
		return tm.boardAllList(cocnrEmpno);
	}
	
	// 보드 공유자 조회
	@Override
	public List<TodoVO> boardCocnrAllList() {
		return tm.boardCocnrAllList();
	}
	
	// 보드 생성
	@Override
	public int createBoard(TodoVO todoVO) {
		int result = tm.createBoard(todoVO);
		// 보드 생성이 성공하면
		if(result > 0) {
			if(todoVO.getCocnrEmpnoArr() != null) {
				// 보드 공유자를 추가
				for(int i=0; i<todoVO.getCocnrEmpnoArr().size(); i++) {
					int cocnrEmpno = todoVO.getCocnrEmpnoArr().get(i);
					todoVO.setCocnrEmpno(cocnrEmpno);
					tm.addBoardCocnr(todoVO);
				}
				
			}
			
		}
		return result;
	}
	
	// 보드 공유자 추가
	@Override
	public int addBoardCocnr(TodoVO todoVO) {
		return tm.addBoardCocnr(todoVO);
	}
	
	// 보드 공유자 전체 삭제
	@Override
	public int deleteAllBoardCocnr(int boardNo) {
		return tm.deleteAllBoardCocnr(boardNo);
	}
	
	// 즐겨찾기 여부 업데이트
	@Override
	public int updateBkmk(Map<String, Object> map) {
		return tm.updateBkmk(map);
	}
	
	// 보드 상세 조회(보드 정보)
	@Override
	public TodoVO detailBoard(int boardNo) {
		return tm.detailBoard(boardNo);
	}

	// 보드 상세 조회(보드 공유자 정보)
	@Override
	public List<TodoVO> detailBoardCocnr(int boardNo) {
		return tm.detailBoardCocnr(boardNo);
	}
	
	// 보드 이름 수정
	@Override
	public int editBoardNm(TodoVO todoVO) {
		return tm.editBoardNm(todoVO);
	}
	
	// 보드 삭제
	@Override
	public int deleteBoard(int boardNo) {
		return tm.deleteBoard(boardNo);
	}
	
	// 카드 메뉴 생성
	@Override
	public int createCardMenu(TodoVO todoVO) {
		int result = tm.createCardMenu(todoVO);
		if(result > 0) {
			int CreatedCardMenuNo = todoVO.getCardMenuNo();
			return CreatedCardMenuNo;
		}
		return 0;
	}
	
	// 생성된 카드 메뉴 조회
	@Override
	public TodoVO createdCardMenuInfo(int cardMenuNo) {
		return tm.createdCardMenuInfo(cardMenuNo);
	}
	
	// 전체 카드 메뉴 조회
	@Override
	public List<TodoVO> cardMenuList() {
		return tm.cardMenuList();
	}
	
	// 카드 메뉴 이름 수정
	@Override
	public int editCardMenuNm(TodoVO todoVO) {
		return tm.editCardMenuNm(todoVO);
	}
	
	// 카드 메뉴 삭제
	@Override
	public int deleteCardMenu(TodoVO todoVO) {
		return tm.deleteCardMenu(todoVO);
	}
	
	// 전체 카드 조회
	@Override
	public List<TodoVO> cardList() {
		List<TodoVO> list = tm.cardList();
		// 해당카드의 댓글 개수도 함께 조회하기 위한 로직
		for(int i=0; i<list.size(); i++) {
			int cardNo = list.get(i).getCardNo();
			int answerCount = tm.answerCount(cardNo);
			list.get(i).setAnswerCount(answerCount);
		}
		return list;
	}
	
	// 카드 생성
	@Override
	public int createCard(TodoVO todoVO) {
		int result = tm.createCard(todoVO);
		if(result > 0) {
			int createdCardNo = todoVO.getCardNo();
			return createdCardNo;
		}
		return 0;
	}
	
	// 생성된 카드 조회
	@Override
	public TodoVO createdCardInfo(int cardNo) {
		return tm.createdCardInfo(cardNo);
	}
	
	// 카드 이름 수정
	@Override
	public int editCardNm(TodoVO todoVO) {
		return tm.editCardNm(todoVO);
	}
	
	// 카드 삭제
	@Override
	public int deleteCard(TodoVO todoVO) {
		return tm.deleteCard(todoVO);
	}
	
	// 파일 업로드 시 카드의 파일 번호 삽입
	@Override
	public int editCardFileNo(TodoVO todoVO) {
		return tm.editCardFileNo(todoVO);
	}
	
	// 해당 카드에 대한 파일 조회
	@Override
	public List<TodoVO> cardFileList(Map<String, Integer> getFileMap) {
		return tm.cardFileList(getFileMap);
	}
	
	// 첨부 파일 삭제
	@Override
	public int deleteFile(Map<String, Object> deleteFileMap) {
		return tm.deleteFile(deleteFileMap);
	}
	
	// 첨부파일 전체 삭제
	@Override
	public int deleteAllFile(int fileNo) {
		return tm.deleteAllFile(fileNo);
	}

	// 카드 설명 생성/수정/삭제
	@Override
	public int editCardDesc(TodoVO todoVO) {
		return tm.editCardDesc(todoVO);
	}
	
	// 카드 기한일 생성/수정
	@Override
	public int editCardEndDate(TodoVO todoVO) {
		return tm.editCardEndDate(todoVO);
	}

	// 카드 댓글 생성
	@Override
	public int createAnswer(TodoVO todoVO) {
		int result = tm.createAnswer(todoVO);
		if(result > 0) {
			int answerNo = todoVO.getAnswerNo();
			return answerNo;
		}
		
		return 0;
	}
	
	// 생성된 카드 댓글
	@Override
	public TodoVO createdAnswer(int answerNo) {
		return tm.createdAnswer(answerNo);
	}

	// 카드 번호에 따른 댓글의 수
	@Override
	public int countAnswer(int cardNo) {
		return tm.countAnswer(cardNo);
	}
	
	// 카드 댓글 전체 조회
	@Override
	public List<TodoVO> countAnswerList() {
		return tm.countAnswerList();
	}
	
	// 해당 카드의 댓글 개수 조회
	@Override
	public int answerCount(int cardNo) {
		return tm.answerCount(cardNo);
	}
	
	// 카드 댓글 삭제
	@Override
	public int deleteAnswer(TodoVO todoVO) {
		return tm.deleteAnswer(todoVO);
	}
	
	// 카드 댓글 전체 삭제
	@Override
	public int deleteAllAnswer(TodoVO todoVO) {
		return tm.deleteAllAnswer(todoVO);
	}
		
	// 카드 댓글 수정
	@Override
	public int editAnswer(TodoVO todoVO) {
		int result = tm.editAnswer(todoVO);
		if(result > 0) {
			int answerNo = todoVO.getAnswerNo();
			return answerNo;
		}
		return 0;
	}

	
	
	



	
	

	
	
	
	
}
