package kr.or.ddit.file.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.notice.vo.NoticeVO;

public interface FileMapper {
	// 첨부파일 등록
	public int fileInsert(FileVO vo);
	
	// 첨부파일 번호
	public int fileNo();
	
	// 첨부파일 조회
	public List<FileVO> fileSelect(int fileNo);
	
	// 파일 다운로드를 위한 파일 단건 조회
	public FileVO fileSelectForDownload(Map<String, Object> fileMap);
	
	// 첨부파일 삭제
	public int fileDelete(String fileNm);
	
	// 첨부파일 삭제
	public int fileAllDelete(int fileNo);
	
	// 최대 파일 순서 조회
	public int getMaxFileOrdr(int fileNo);
	
	// 하나의 파일 삭제
	public int deleteFileOne(Map<String, Integer> deleteFileMap);

	public List<FileVO> fileSelectByEmpno(String empno);
}
