package kr.or.ddit.file.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.service.FileService;
import kr.or.ddit.file.vo.FileVO;
@Service("fileService")
public class FileServiceImpl implements FileService {

	@Autowired
	private FileMapper fileMapper;
	
	@Override
	public FileVO fileSelectForDownload(Map<String, Object> fileMap) {
		return this.fileMapper.fileSelectForDownload(fileMap);
	}

}
