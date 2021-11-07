package kr.or.ddit.notice.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.notice.vo.NoticeVO;

public interface NoticeMapper {
	// 공지 목록
	public List<NoticeVO> noticeList(Map<String, Object> map);
	
	// 공지 수
	public int noticeTotal(Map<String, Object> map);
	
	// 공지 작성
	public int noticeInsert(NoticeVO noticeVo);
	
	// 공지 상세 조회
	public NoticeVO noticeDetail(int noticeNo);
	
	// 공지 수정
	public int noticeUpdate(NoticeVO noticeVo) ;
	
	// 공지 삭제
	public int noticeDelete(int noticeNo);
	
	// 삭제 번호
	public int delFileNo(int noticeNo);
}
