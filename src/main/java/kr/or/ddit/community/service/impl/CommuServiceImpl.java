package kr.or.ddit.community.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.community.mapper.CommuMapper;
import kr.or.ddit.community.service.CommuService;
import kr.or.ddit.community.vo.ComBBVO;
import kr.or.ddit.community.vo.ComBoardVO;
import kr.or.ddit.community.vo.ComJoinVO;
import kr.or.ddit.community.vo.ComLikeVO;
import kr.or.ddit.community.vo.CommuVO;
import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;

@Service
public class CommuServiceImpl implements CommuService {
	@Autowired
	private CommuMapper commuMapper;
	@Autowired
	private FileMapper fileMapper;
	// 커뮤니티 만들기
	@Override
	public int comInsert(CommuVO commuVo) throws Exception{
		return this.commuMapper.comInsert(commuVo);
	}
	// 공지사항 만들기
	@Override
	public int comNoticeB(int cmmntyNo) throws Exception {
		return this.commuMapper.comNoticeB(cmmntyNo);
	}
	// 활동게시판 만들기
	@Override
	public int comActiveB(int cmmntyNo) throws Exception {
		return this.commuMapper.comActiveB(cmmntyNo);
	}
	// 커뮤니티  목록
	@Override
	public List<CommuVO> comList(Map<String, Object> map) throws Exception{
		return this.commuMapper.comList(map);
	}
	// 커뮤니티 수
	@Override
	public int comTotal(Map<String, Object> map) {
		return this.commuMapper.comTotal(map);
	}
	// 커뮤니티 모달 조회
	@Override
	public CommuVO comModal(int cmmntyNo) throws Exception {
		return this.commuMapper.comModal(cmmntyNo);
	}
	// 나의 커뮤니티 조회
	@Override
	public List<CommuVO> comMy (int estblEmpno) throws Exception {
		return this.commuMapper.comMy(estblEmpno);
	}
	// 커뮤니티 가입
	@Override
	public int comJoin(ComJoinVO comJoinVo) throws Exception {
		return this.commuMapper.comJoin(comJoinVo);
	}
	// 가입자 - 가입한 커뮤니티 (가입대기)
	@Override
	public List<ComJoinVO> comStand(int sbscrberEmpno) throws Exception {
		return this.commuMapper.comStand(sbscrberEmpno);
	}
	// 가입자 - 가입한 커뮤니티 (가입승인)
	@Override
	public List<ComJoinVO> comAccept(Map<String, Object> map) throws Exception {
		return this.commuMapper.comAccept(map);
	}
	// 개설자 - 가입한 회원 리스트 (승인 / 취소)
	@Override
	public List<ComJoinVO> comAllMem(Map<String, Object> map) throws Exception {
		return this.commuMapper.comAllMem(map);
	}
	// 가입자 - 가입한 커뮤니티(가입승인) 수
	@Override
	public int comAcceptCount (int sbscrberEmpno) throws Exception{
		return this.commuMapper.comAcceptCount(sbscrberEmpno);
	}
	// 개설자 - 가입한 회원 리스트 (승인 / 취소) 수
	@Override
	public int comAllMemCount (Map<String, Object> map) throws Exception{
		return this.commuMapper.comAllMemCount(map);
	}
	// 해당 커뮤니티 가입대기 회원 리스트
	@Override
	public List<ComJoinVO> comWaitList(int cmmntyNo){
		return this.commuMapper.comWaitList(cmmntyNo);
	}
	// 개설자 - 가입한 회원 변경
	@Override
	public int comAtUpdate(ComJoinVO comJoinVo) throws Exception {
		return this.commuMapper.comAtUpdate(comJoinVo);
	}
	// 개설자 - 가입한 회원 취소
	@Override
	public int comAtCancel(ComJoinVO comJoinVo) throws Exception {
		return this.commuMapper.comAtCancel(comJoinVo);
	}
	// 해당 커뮤니티 상세 정보
	@Override
	public CommuVO comDetail(int cmmntyNo) throws Exception {
		return this.commuMapper.comDetail(cmmntyNo);
	}
	// 해당 커뮤니티 회원 리스트
	@Override
	public List<ComJoinVO> comMemList(int cmmntyNo) throws Exception {
		return this.commuMapper.comMemList(cmmntyNo);
	}
	// 해당 커뮤니티 게시판 리스트
	@Override
	public List<ComBoardVO> comBoard(int cmmntyNo) throws Exception {
		return this.commuMapper.comBoard(cmmntyNo);
	}
	// 해당 커뮤니티 공지게시판 게시물 조회리스트
	@Override
	public List<ComBBVO> comNoticeList(int cmmntyNo) throws Exception {
		return this.commuMapper.comNoticeList(cmmntyNo);
	}
	// 해당 커뮤니티 활동게시판 게시물 조회리스트
	@Override
	public List<ComBBVO> comActiveList(Map<String, Object> map) throws Exception {
		return this.commuMapper.comActiveList(map);
	}
	// 해당 커뮤니티 활동게시판 게시물 수
	@Override
	public int comActiveCount(int cmmntyNo){
		return this.commuMapper.comActiveCount(cmmntyNo);
	}
	// 공지 게시물 작성하기
	@Transactional
	@Override
	public int comNotiInsert(ComBBVO comBBVO) {
		System.out.println("공지 작성");
		// 첨부파일 없으면 종료
		int result = 0;
		if(comBBVO.getFileList()==null || comBBVO.getFileList().size() <= 0) {
			result = this.commuMapper.comNotiInsert(comBBVO);
			return result;
		}else {
			int fileNo = fileMapper.fileNo();
			comBBVO.setFileNo(fileNo);
			result = this.commuMapper.comNotiInsert(comBBVO);
			for(FileVO fileVo : comBBVO.getFileList()) {
				fileVo.setFileNo(fileNo);
				System.out.println(fileVo.getFileOrginlNm());
				fileMapper.fileInsert(fileVo);
			}
			return result;
		}
	}
	// 활동 게시물 작성하기
	@Override
	public int comActInsert(ComBBVO comBBVO) {
		int fileNo = fileMapper.fileNo();
		comBBVO.setFileNo(fileNo);
		int result = this.commuMapper.comActInsert(comBBVO);
		
		for(FileVO fileVo : comBBVO.getFileList()) {
			fileVo.setFileNo(fileNo);
			System.out.println(fileVo);
			fileMapper.fileInsert(fileVo);
		}
		return result;
	}
	// 첨부파일 조회
	@Override
	public List<FileVO> fileSelect(int fileNo) {
		System.out.println(fileNo);
		return fileMapper.fileSelect(fileNo);
	}
	// 해당 커뮤니티 공지게시판 게시물 상세
	@Override
	public ComBBVO comNoticeDetail(ComBBVO comBBVO) {
		return this.commuMapper.comNoticeDetail(comBBVO);
	}
	// 해당 커뮤니티 활동게시판 게시물 상세
	@Override
	public ComBBVO comActiveDetail(ComBBVO comBBVO) {
		return this.commuMapper.comActiveDetail(comBBVO);
	}
	// 해당 커뮤니티의 게시물 조회수
	@Override
	public int comRdcnt(ComBBVO comBBVO) {
		return this.commuMapper.comRdcnt(comBBVO);
	}
	// 해당 커뮤니티 수정
	@Override
	public int comUpdate(CommuVO commuVo) {
		return this.commuMapper.comUpdate(commuVo);
	}
	// 공지 게시물 수정
	@Override
	public int comNoticeUpdate(ComBBVO comBBVO) {
		int delFileNo = commuMapper.delFileNo(comBBVO);
		fileMapper.fileAllDelete(delFileNo);
		System.out.println("delFileNo" + delFileNo);
		
		int updateResult = commuMapper.comNoticeUpdate(comBBVO);
		int result = 0;
		
		if(updateResult == 1 && comBBVO.getFileList() != null && comBBVO.getFileList().size() > 0) {
			int fileNo = fileMapper.fileNo();
			comBBVO.setFileNo(fileNo);
			result = this.commuMapper.comNoticeUpdate(comBBVO);
			for(FileVO fileVo : comBBVO.getFileList()) {
				fileVo.setFileNo(fileNo);
				System.out.println(fileVo.getFileOrginlNm());
				fileMapper.fileInsert(fileVo);
			}
			return result;
		}else {
			result = this.commuMapper.comNoticeUpdate(comBBVO);
			return result;
		}
	}
	// 공지 게시물 삭제
	@Override
	public int comNoticeDelete(ComBBVO comBBVO) {
		// 공지 게시판에 해당하는 파일 삭제
		int delFileNo = commuMapper.delFileNo(comBBVO);
		fileMapper.fileAllDelete(delFileNo);
		System.out.println("delFileNo : " + delFileNo);
		
		return this.commuMapper.comNoticeDelete(comBBVO);
	}
	// 활동 게시물 수정
	@Override
	public int comActUpdate(ComBBVO comBBVO) {
		return this.commuMapper.comActUpdate(comBBVO);
	}
	// 해당 커뮤니티 공지게시판 전체 리스트 (더보기)
	@Override
	public List<ComBBVO> noticeListAdd(Map<String, Object> map) {
		return this.commuMapper.noticeListAdd(map);
	}
	// 해당 커뮤니티 공지게시물 수
	@Override
	public int noticeTotal(Map<String, Object> map) {
		return this.commuMapper.noticeTotal(map);
	}
	// 활동 게시물 삭제
	@Override
	public int comActDelete(ComBBVO comBBVO) {
		// 공지 게시판에 해당하는 파일 삭제
		int delFileNo = commuMapper.delActFileNo(comBBVO);
		fileMapper.fileAllDelete(delFileNo);
		System.out.println("delFileNo : " + delFileNo);
		
		return this.commuMapper.comActDelete(comBBVO);
	}
	
	// 활동 댓글 등록        
	@Override
	public int createActiveAnswer(ComBBVO comBBVO) {
		return this.commuMapper.createActiveAnswer(comBBVO);
	}
	// 활동 댓글 수정 
	@Override
	public int editActiveAnswer(ComBBVO comBBVO) {
		return this.commuMapper.editActiveAnswer(comBBVO);
	}
	// 활동 댓글 삭제
	@Override
	public int deleteActiveAnswer(Map<String, Object> deleteAnswerMap) {
		return this.commuMapper.deleteActiveAnswer(deleteAnswerMap);
	}
	// 해당 활동에 대한 전체 댓글 조회
	@Override
	public List<ComBBVO> activeAnswerList(ComBBVO comBBVO) {
		return this.commuMapper.activeAnswerList(comBBVO);
	}
	
	// 해당 활동에 대한 댓글 조회                                       
	@Override
	public ComBBVO activedAnswer(ComBBVO comBBVO) {
		return this.commuMapper.activedAnswer(comBBVO);
	}
	
	// 좋아요 조회
	@Override
	public ComLikeVO comActiveLike(ComLikeVO comLikeVO) {
		return this.commuMapper.comActiveLike(comLikeVO);
	}
	// 좋아요 수정 Y
	@Override
	public int comActiveLikeY(ComLikeVO comLikeVO) {
		return this.commuMapper.comActiveLikeY(comLikeVO);
	}
	// 좋아요 수정 N
	@Override
	public int comActiveLikeN(ComLikeVO comLikeVO) {
		return this.commuMapper.comActiveLikeN(comLikeVO);
	}
	
}
