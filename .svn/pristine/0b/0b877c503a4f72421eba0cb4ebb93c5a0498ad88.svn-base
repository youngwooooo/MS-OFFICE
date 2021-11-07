package kr.or.ddit.notice.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sun.media.jfxmedia.logging.Logger;

import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.notice.mapper.NoticeMapper;
import kr.or.ddit.notice.service.NoticeService;
import kr.or.ddit.notice.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	@Autowired
	private FileMapper fileMapper;
	
	// 공지 목록
	@Override
	public List<NoticeVO> noticeList(Map<String, Object> map) throws Exception {
		return this.noticeMapper.noticeList(map);
	}
	
	// 공지 작성
	@Transactional
	@Override
	public int noticeInsert(NoticeVO noticeVo) throws Exception {
		System.out.println("공지 작성");
		System.out.println("파일리스트 : " + noticeVo.getFileList());
		// 첨부파일 없으면 종료
		int result = 0;
		if(noticeVo.getFileList()==null || noticeVo.getFileList().size() <= 0) {
			result = this.noticeMapper.noticeInsert(noticeVo);
			return result;
		}else {
			int fileNo = fileMapper.fileNo();
			noticeVo.setFileNo(fileNo);
			result = this.noticeMapper.noticeInsert(noticeVo);
			for(FileVO fileVo : noticeVo.getFileList()) {
				fileVo.setFileNo(fileNo);
				System.out.println("서비스 임플 : " + fileVo.getFileSize());
				System.out.println(fileVo.getFileOrginlNm());
				fileMapper.fileInsert(fileVo);
			}
			return result;
		}
		
	}
	
	// 공지 수
	@Override
	public int noticeTotal(Map<String, Object> map) {
		return this.noticeMapper.noticeTotal(map);
	}
	
	// 공지 상세 조회
	@Override
	public NoticeVO noticeDetail(int noticeNo) throws Exception {
		return this.noticeMapper.noticeDetail(noticeNo);
	}

	// 공지 수정
	@Override
	public int noticeUpdate(NoticeVO noticeVo) throws Exception {	
		int boardNo = noticeVo.getNoticeNo();
		System.out.println("boardNo" + boardNo);
		int delFileNo = noticeMapper.delFileNo(boardNo);
		fileMapper.fileAllDelete(delFileNo);
		System.out.println("delFileNo" + delFileNo);
		
		int updateResult = noticeMapper.noticeUpdate(noticeVo);
		int result = 0;
		
		if(updateResult == 1 && noticeVo.getFileList() != null && noticeVo.getFileList().size() > 0) {
			int fileNo = fileMapper.fileNo();
			noticeVo.setFileNo(fileNo);
			result = this.noticeMapper.noticeUpdate(noticeVo);
			for(FileVO fileVo : noticeVo.getFileList()) {
				fileVo.setFileNo(fileNo);
				System.out.println(fileVo.getFileOrginlNm());
				fileMapper.fileInsert(fileVo);
			}
			return result;
		}else {
			result = this.noticeMapper.noticeUpdate(noticeVo);
			return result;
		}
	}

	// 공지 삭제
	@Override
	public int noticeDelete(int noticeNo) {
		// 공지 게시판에 해당하는 파일 삭제
		int delFileNo = noticeMapper.delFileNo(noticeNo);
		fileMapper.fileAllDelete(delFileNo);
		System.out.println("delFileNo : " + delFileNo);
		
		return this.noticeMapper.noticeDelete(noticeNo);
	}

	// 첨부파일 조회
	@Override
	public List<FileVO> fileSelect(int fileNo) {
		System.out.println(fileNo);
		return fileMapper.fileSelect(fileNo);
	}

}
