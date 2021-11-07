package kr.or.ddit.file.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.service.FileService;
import kr.or.ddit.file.vo.FileVO;



@Controller
public class FileController {
	private static Logger logger = LoggerFactory.getLogger(FileController.class);
	
	@Autowired
	FileMapper fm;

	@Autowired
	private FileService fileService;
	
	@GetMapping("/file/fileForm")
	public void fileFrom() {
		logger.info("upload ajax");
	}
	
	// 특정한 파일 이름 받아서 이미지 데이터 전송
	@GetMapping("/showImg")
	@ResponseBody
	public ResponseEntity<byte[]> showFile(String fileName) {
	
		logger.info("fileName", fileName);
		
//		String rootPath = "C:\\eGovFrameDev-3.10.0-64bit\\workspace\\Groupware\\src\\main\\webapp\\resources\\upload\\";
		String rootPath = "Z:\\";
		
		
		
		File file = new File(rootPath+ fileName);
		logger.info("File", file);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),header,HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 특정한 파일 이름 받아서 이미지 데이터 전송
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName, @RequestParam HashMap<String, Object> fileMap) {
	
		logger.info("fileName", fileName);
		
//		String rootPath = "C:\\eGovFrameDev-3.10.0-64bit\\workspace\\Groupware\\src\\main\\webapp\\resources\\upload\\";
		String rootPath = "Z:\\";
		
		
		FileVO fileVo = fileService.fileSelectForDownload(fileMap);
		
		File file = new File(rootPath + fileVo.getFileCours(), fileVo.getFileNm());
		
//		File file = new File("C:\\eGovFrameDev-3.10.0-64bit\\workspace\\Groupware\\src\\main\\webapp\\resources\\upload\\"+ fileName);
		logger.info("File", file);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),header,HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 첨부 파일 다운로드
	// APPLICATION_OCTET_STREAM_VALUE : MIME 타입의 파일로 요청이 옴
	// chrome브라우저와 달리 IE에서는 한글이름이 제대로 다운로드 X -> 인코딩방식이 다르기 때문
	//  - @RequestHeader("User-Agent") : HTTP 헤더 메시지 중 디바이스의 정보를 알 수 있는 헤더 
	@GetMapping(value = "/download", produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestHeader("User-Agent")String userAgent, @RequestParam Map<String, Object> fileMap) {
		FileVO selectFile = fm.fileSelectForDownload(fileMap);	// 다운로드할 파일 객체
		logger.info("selectFile : " + selectFile);
		
		String fileCours = selectFile.getFileCours() + "\\";	// 파일 경로
		String fileNm = selectFile.getFileNm();					// 파일 저장 이름
		String fileOrginlNm = selectFile.getFileOrginlNm();		// 파일 원본 이름
		
//		Resource resource = new FileSystemResource("C:\\eGovFrameDev-3.10.0-64bit\\workspace\\Groupware\\src\\main\\webapp\\resources\\upload\\" +  fileCours + fileNm);
		Resource resource = new FileSystemResource("Z:\\" +  fileCours + fileNm);
		logger.info("resource : " + resource);
		
		if(resource.exists() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		
		// HttpHeaders 객체를 이용해서 다운로드 시 파일의 이름을 처리
		HttpHeaders headers = new HttpHeaders();
		
		try {
			headers.add("Content-Disposition", "attachment; filename=\"" + new String(fileOrginlNm.getBytes("UTF-8"), "ISO-8859-1") + "\"");
		}catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
		
	}
	
	// 파일 업로드
	@ResponseBody
	@RequestMapping(value="/file/fileAjaxAction",method=RequestMethod.POST)
	public ResponseEntity<List<FileVO>> fileAjaxPost(MultipartFile[] uploadFile) {
		List<FileVO> list = new ArrayList<>();
		logger.info("업로드 파일 : " + uploadFile);
		
		// 폴더에 파일 저장 -> web.xml 설정 
		String fileFolder="Z:\\";
		
		// 폴더 경로 -> getFolder()함수로 오늘 날짜의 경로를 문자열로 생성
		String fileFolderPath = getFolder();

		// 생성된 경로는 폴더 경로로 수정된 뒤 반환
		File fileCours = new File(fileFolder, fileFolderPath);
		
		// upload 폴더 생성
		if(fileCours.exists() == false) { // 폴더가 존재하지 않으면
			fileCours.mkdirs(); // mkdirs()로 여러 폴더 생성
		}
		
		for (MultipartFile multipartFile : uploadFile) {
			logger.info("------------------------------------------");
			logger.info("Upload File Name : " + multipartFile.getOriginalFilename());
			
			FileVO fileVO = new FileVO();
			
			long size = multipartFile.getSize();
			String fileSize = size + "";
			// C:\\users\\test.jsp
			String uploadfileName = multipartFile.getOriginalFilename();
			logger.info("uploadfileName1 : " + uploadfileName);
			
			// test.jsp -> 전체 파일 경로가 전송되므로 마지막\\를 기준으로 잘라낸 문자열
			uploadfileName = uploadfileName.substring(uploadfileName.lastIndexOf("\\")+1);
			logger.info("uploadfileName2 : " + uploadfileName);
			// 확장자
			String extsn = uploadfileName.substring(uploadfileName.lastIndexOf(".")+1);
			
			
			fileVO.setFileSize(fileSize);
			fileVO.setFileOrginlNm(uploadfileName);
			fileVO.setExtsn(extsn);
			
			// 중복 방지를 위한 UUID 적용
			UUID fileNm = UUID.randomUUID();
			uploadfileName = fileNm.toString(); 
			logger.info("uploadfileName3 : " + uploadfileName);
			
			
			
			try {
				// 업로드 되는 원래 파일의 이름으로  C드라이브 upload폴더에 원래 이름으로 저장
				File saveFile = new File(fileCours, uploadfileName);
				
				// 업로드 되는 파일 저장하는 방법 transferTo() 이용
				multipartFile.transferTo(saveFile);
				fileVO.setFileNm(fileNm.toString());
				fileVO.setFileCours(fileFolderPath);
									
				list.add(fileVO);
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	
	// 첨부파일 삭제
	@RequestMapping(value="/file/deleteFile",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileOrginlNm, String type) {
		logger.info("deleteFile:" + fileOrginlNm);
		File file;
		
		try {
			file = new File("Z:\\" + URLDecoder.decode(fileOrginlNm, "UTF-8"));
			file.delete();
			if(type.contentEquals("image")) {
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				file = new File(largeFileName);
				
				file.delete();
			}
		}catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<String>("deleted",HttpStatus.OK);
	}
	
	
	// 파일업로드 연도 월 일 폴더 처리
	// /upload/2021/08/13/
	public String getFolder() {
		//날짜 포맷 객체
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//오늘 날짜 객체(java.util)
		Date date = new Date();
		//오늘 날짜를 yyyy-MM-dd 형식으로 처리
		String str = sdf.format(date);
		//연/월/일 단위의 폴더를 생성
		return str.replace("-", File.separator);		
	}
	
	// 이미지 파일 판단 
	private boolean checkImageType(File file) {
		
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		}catch(IOException e){
			e.printStackTrace();
		}
		return false;
	}
	
	// 파일 번호만 가져오기
	@ResponseBody
	@GetMapping("/file/getFileNo")
	public int getFileNo() {
		return fm.fileNo();
	}
	
	// 파일 생성 후 파일 정보 조회
	@ResponseBody
	@PostMapping("/file/createdFileInfo")
	public List<FileVO> createdFileInfo(@ModelAttribute FileVO fileVO) {
		logger.info("파일 생성 파라미터 : " + fileVO);
		int result = fm.fileInsert(fileVO);
		if(result == 1) {
			List<FileVO> createdFile = fm.fileSelect(fileVO.getFileNo());
			return createdFile;
		}
		return null;
	}
	
	// 최대 파일 번호 구하기
	@ResponseBody
	@PostMapping("/file/getMaxFileOrdr")
	public int getMaxFileOrdr(@RequestParam int fileNo) {
		return fm.getMaxFileOrdr(fileNo);
	}
	
	// 첨부 파일 전체 삭제
	@ResponseBody
	@PostMapping("/file/deleteAllFile")
	public int deleteFile(@RequestParam int fileNo) {
		return fm.fileAllDelete(fileNo);
	}
	
	// 하나의 첨부파일 삭제
	@ResponseBody
	@PostMapping("/file/deleteFileOne")
	public int deleteFileOne(@RequestParam Map<String, Integer> deleteFileOne) {
		return fm.deleteFileOne(deleteFileOne);
	}
}
