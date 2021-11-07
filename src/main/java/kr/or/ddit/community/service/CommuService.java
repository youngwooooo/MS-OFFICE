package kr.or.ddit.community.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.community.vo.ComBBVO;
import kr.or.ddit.community.vo.ComBoardVO;
import kr.or.ddit.community.vo.ComJoinVO;
import kr.or.ddit.community.vo.ComLikeVO;
import kr.or.ddit.community.vo.CommuVO;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.survey.vo.SurveyVO;

public interface CommuService {
	// 커뮤니티 만들기
	public int comInsert(CommuVO commuVo) throws Exception;
	// 공지사항 만들기
	public int comNoticeB(int cmmntyNo) throws Exception;
	// 활동게시판 만들기
	public int comActiveB(int cmmntyNo) throws Exception;
	// 커뮤니티  목록
	public List<CommuVO> comList(Map<String, Object> map) throws Exception;
	// 커뮤니티 수
	public int comTotal(Map<String, Object> map);
	// 커뮤니티 모달 조회
	public CommuVO comModal(int cmmntyNo) throws Exception;
	// 나의 커뮤니티 조회
	public List<CommuVO> comMy(int empno) throws Exception;
	// 커뮤니티 가입
	public int comJoin (ComJoinVO comJoinVo) throws Exception;
	// 가입한 커뮤니티(가입대기)
	public List<ComJoinVO> comStand (int sbscrberEmpno) throws Exception;
	// 가입한 커뮤니티(가입승인)
	public List<ComJoinVO> comAccept (Map<String, Object> map) throws Exception;
	// 가입한 회원 리스트 (승인 / 취소)
	public List<ComJoinVO> comAllMem (Map<String, Object> map) throws Exception;
	// 가입자 - 가입한 커뮤니티(가입승인) 수
	public int comAcceptCount (int sbscrberEmpno) throws Exception;
	// 개설자 - 가입한 회원 리스트 (승인 / 취소) 수
	public int comAllMemCount (Map<String, Object> map) throws Exception;
	// 가입한 회원 변경
	public int comAtUpdate (ComJoinVO comJoinVo) throws Exception;
	// 가입한 회원 취소
	public int comAtCancel (ComJoinVO comJoinVo) throws Exception;
	// 해당 커뮤니티 상세 정보
	public CommuVO comDetail(int cmmntyNo) throws Exception;
	// 해당 커뮤니티 회원 리스트
	public List<ComJoinVO> comMemList(int cmmntyNo) throws Exception;
	// 해당 커뮤니티 가입대기 회원 리스트
	public List<ComJoinVO> comWaitList(int cmmntyNo);
	// 해당 커뮤니티 게시판 리스트
	public List<ComBoardVO> comBoard(int cmmntyNo) throws Exception;
	// 해당 커뮤니티 공지게시판 게시물 조회리스트
	public List<ComBBVO> comNoticeList(int cmmntyNo) throws Exception;
	// 해당 커뮤니티 공지게시판 전체 리스트 (더보기)
	public List<ComBBVO> noticeListAdd(Map<String, Object> map);
	// 해당 커뮤니티 공지게시물 수
	public int noticeTotal(Map<String, Object> map);
	// 해당 커뮤니티 활동게시판 게시물 조회리스트
	public List<ComBBVO> comActiveList(Map<String, Object> map) throws Exception;
	// 해당 커뮤니티 활동게시판 게시물 수
	public int comActiveCount(int cmmntyNo);
	// 공지 게시물 작성하기
	public int comNotiInsert(ComBBVO comBBVO);
	// 활동 게시물 작성하기
	public int comActInsert(ComBBVO comBBVO);
	// 첨부파일 조회
	public List<FileVO> fileSelect(int fileNo);
	// 해당 커뮤니티 공지게시판 게시물 상세
	public ComBBVO comNoticeDetail(ComBBVO comBBVO);
	// 해당 커뮤니티 활동게시판 게시물 상세
	public ComBBVO comActiveDetail(ComBBVO comBBVO);
	// 해당 커뮤니티의 게시물 조회수
	public int comRdcnt(ComBBVO comBBVO);
	// 해당 커뮤니티 수정
	public int comUpdate(CommuVO commuVo);
	// 공지 게시물 수정
	public int comNoticeUpdate(ComBBVO comBBVO);
	// 공지 게시물 삭제
	public int comNoticeDelete(ComBBVO comBBVO);
	// 활동 게시물 수정
	public int comActUpdate(ComBBVO comBBVO);
	// 활동 게시물 삭제
	public int comActDelete(ComBBVO comBBVO);
	
	// 활동 댓글 등록
	public int createActiveAnswer(ComBBVO comBBVO);
	// 활동 댓글 수정
	public int editActiveAnswer(ComBBVO comBBVO);
	// 활동 댓글 삭제
	public int deleteActiveAnswer(Map<String, Object> deleteAnswerMap);
	// 해당 활동에 대한 댓글 전체 조회
	public List<ComBBVO> activeAnswerList(ComBBVO comBBVO);
	// 해당 활동에 대한 댓글 조회                                       
	public ComBBVO activedAnswer(ComBBVO comBBVO); 
	
	// 좋아요 조회
	public ComLikeVO comActiveLike(ComLikeVO comLikeVO);
	// 좋아요 수정 Y
	public int comActiveLikeY(ComLikeVO comLikeVO);
	// 좋아요 수정 N
	public int comActiveLikeN(ComLikeVO comLikeVO);
	
}