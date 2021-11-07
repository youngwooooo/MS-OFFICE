package kr.or.ddit.file.service;

import java.util.Map;

import kr.or.ddit.file.vo.FileVO;

public interface FileService {
	// 파일 다운로드를 위한 파일 단건 조회
	public FileVO fileSelectForDownload(Map<String, Object> fileMap);
}
