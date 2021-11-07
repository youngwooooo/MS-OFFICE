package kr.or.ddit.notice.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.notice.service.NoticeService;
import kr.or.ddit.notice.vo.NoticeVO;
import kr.or.ddit.util.Pagination;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class NoticeController {
	private static Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	NoticeService noticeService;
	
	// 공지 목록
	@RequestMapping(value="/notice/list", method=RequestMethod.GET)
	public String noticeList(@RequestParam(defaultValue = "1") String currentPage 
			, @RequestParam Map<String,Object> map
			,Model model) throws Exception {
		//최초에 /cus/list 요청 시 map은 null이므로 null처리를 함
		if(map.get("currentPage")==null) {
			logger.info("currentPage null");
			map.put("currentPage", "1");
		}
		if(map.get("selSearch")==null) {
			logger.info("selSearch null");
			map.put("selSearch", "");
		}
		if(map.get("keyword")==null) {
			logger.info("keyword null");
			map.put("keyword", "");
		}
		
		// 공지 목록
		List<NoticeVO> list = this.noticeService.noticeList(map);
		
		// 공지게시물 수
		int total = this.noticeService.noticeTotal(map);
		int startNum = Integer.parseInt(currentPage) * 12 - 11 ;
		int endNum = Integer.parseInt(currentPage) * 12;
		if(endNum > total) {
			endNum = total;
		}
		
		model.addAttribute("list", list);
		logger.info("model : " + model);
		
		Map<String, Object> pageInfo =  new HashMap<String, Object>();
		pageInfo.put("total", total);
		pageInfo.put("startNum", startNum);
		pageInfo.put("endNum", endNum);
		model.addAttribute("pageInfo", pageInfo);
		
		Pagination pagination = new Pagination(total, Integer.parseInt(currentPage), 12);
		model.addAttribute("paging", pagination);
		
		return "notice/list";
	}
	
	// 공지 작성 화면
	@RequestMapping(value="/notice/insert",method=RequestMethod.GET)
	public String noticeInsert() {
		return "notice/insert";
	}
	
	// 공지 작성
	@RequestMapping(value="/notice/insert",method=RequestMethod.POST)
	public String noticeInsertPost(@ModelAttribute NoticeVO noticeVo) throws Exception {
		logger.info("공지 작성 시작");
		logger.info("공지작성 : " + noticeVo);
		
		int result = this.noticeService.noticeInsert(noticeVo);
		
		return "redirect:/notice/list";
	}
	
	// 공지 상세 조회
	@RequestMapping(value="/notice/detail",method=RequestMethod.GET)
	public String detail(@RequestParam(value="noticeNo", required=false) int noticeNo,
			Model model) throws Exception {
		
		logger.info("noticeNo : " + noticeNo);
		//고객의 상세 정보를 가져옴
		NoticeVO noticeVo = this.noticeService.noticeDetail(noticeNo);
		logger.info("noticeVo(detail) : " + noticeVo.toString());
		
		model.addAttribute("noticeVo", noticeVo);
		
		//forwarding
		return "notice/detail";
	}
	
	// 공지 수정 화면
	@RequestMapping(value="/notice/update",method=RequestMethod.GET)
	public String update(@RequestParam String noticeNo, Model model) throws NumberFormatException, Exception {
		//고객의 상세 정보를 가져옴
		NoticeVO noticeVo = this.noticeService.noticeDetail(Integer.parseInt(noticeNo));
		logger.info("noticeVo(detail) : " + noticeVo.toString());
		
		model.addAttribute("noticeVo", noticeVo);
		
		return "notice/update";
	}
	
	// 공지 수정
	@RequestMapping(value="/notice/update",method=RequestMethod.POST)
	public String updatePost(@ModelAttribute NoticeVO noticeVo) throws Exception {
		
		logger.info("update에 왔다, noticeVo : " + noticeVo);
		int result = this.noticeService.noticeUpdate(noticeVo);
		logger.info("result : " + result);
		
		return "redirect:/notice/detail?noticeNo="+noticeVo.getNoticeNo();
	}

	// 공지 삭제
	@RequestMapping(value="/notice/delete",method=RequestMethod.POST)
	public String deletePost(@RequestParam(value="noticeNo", required=true) int noticeNo) {
		logger.info("noticeNo : " + noticeNo);
		
		int result = this.noticeService.noticeDelete(noticeNo);
		return "redirect:/notice/list";
	}
	
	// 첨부파일 조회
	// JSON 데이터 반환
	@GetMapping(value="/notice/getFileList", produces=MediaType.APPLICATION_PROBLEM_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<FileVO>> fileSelect(int fileNo) {
		logger.info(fileNo + "");
		return new ResponseEntity<>(noticeService.fileSelect(fileNo), HttpStatus.OK);
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
}
