package kr.or.ddit.notice.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.notice.vo.NoticeVO;

public interface NoticeService {
	// 공지 목록
	public List<NoticeVO> noticeList(Map<String, Object> map) throws Exception;
	
	// 공지 수
	public int noticeTotal(Map<String, Object> map);
	
	// 공지게시판 글쓰기
	public int noticeInsert(NoticeVO noticeVo) throws Exception;

	// 공지 상세 조회
	public NoticeVO noticeDetail(int noticeNo) throws Exception;
		
	// 공지 수정
	public int noticeUpdate(NoticeVO noticeVo) throws Exception;
		
	// 공지 삭제
	public int noticeDelete(int noticeNo);

	// 첨부파일 조회
	public List<FileVO> fileSelect(int noticeNo);

}
