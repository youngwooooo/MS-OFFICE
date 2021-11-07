package kr.or.ddit.todo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.todo.service.TodoService;
import kr.or.ddit.todo.vo.TodoVO;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("/todo")
@Slf4j
@Controller
public class TodoController {
	private static final Logger logger = LoggerFactory.getLogger(TodoController.class);
	
	@Autowired
	TodoService ts;
	
	
	// todo 홈 내 보드 출력
	@GetMapping("/home")
	public String todoHome(Model model, HttpSession session) {
		String cocnrEmpno = "";
		if(session.getAttribute("empVo") != null) {
			EmpVO empVO = (EmpVO) session.getAttribute("empVo");
			cocnrEmpno = empVO.getEmpno();
		}
		logger.info("cocnrEmpno : " + cocnrEmpno);
		List<TodoVO> boardAllList = ts.boardAllList(cocnrEmpno);
		logger.info("boardAllList : " + boardAllList);
		List<TodoVO> boardCocnrAllList = ts.boardCocnrAllList();
		
		model.addAttribute("boardAllList", boardAllList);
		model.addAttribute("boardCocnrAllList", boardCocnrAllList);
		
		return "todo/todoHome";
	}
	
	// 보드 만들기
	@PostMapping("/createBoard")
	public String createBoard(@ModelAttribute TodoVO todoVO) {
		logger.info("보드만들기 todoVO : " + todoVO);
		ts.createBoard(todoVO);
		
		return "redirect:/todo/home";
	}
	
	// 즐겨찾기 여부 업데이트
	@ResponseBody
	@PostMapping("/updateBkmk")
	public String[] updateBkmk(@RequestParam Map<String, Object> map) {
		String[] result = new String[2];
		if(map.get("bkmk").equals("N")) {
			map.put("bkmk", "Y");
			int cnt = ts.updateBkmk(map);
			if(cnt > 0) {
				result[0] = (String) map.get("boardNo");
				result[1] = (String) map.get("bkmk");
			}
			
		}else if(map.get("bkmk").equals("Y")) {
			map.put("bkmk", "N");
			int cnt = ts.updateBkmk(map);
			if(cnt > 0) {
				result[0] = (String) map.get("boardNo");
				result[1] = (String) map.get("bkmk");
			}
		}
		
		return result;
	}
	
	// 보드 상세 조회
	@GetMapping("/board/{boardNo}")
	public String todoDetail(@PathVariable("boardNo") int boardNo, Model model) {
		TodoVO detailBoard = ts.detailBoard(boardNo);
		List<TodoVO> detailBoardCocnr = ts.detailBoardCocnr(boardNo);
		
		model.addAttribute("detailBoard", detailBoard);
		model.addAttribute("detailBoardCocnr", detailBoardCocnr);
		
		return "todo/todoDetail";
	}
	
	// 보드 이름 수정
	@ResponseBody
	@PostMapping("/board/editBoardNm")
	public int editBoardNm(@ModelAttribute TodoVO todoVO) {
		return ts.editBoardNm(todoVO);
	}
	
	
	// 보드 공유자 수정
	@PostMapping("/board/editBoardCocnr")
	public String editBoardCocnr(@ModelAttribute TodoVO todoVO) {
		logger.info("보드 공유자 수정 파라미터 : " + todoVO);
		// 해당 보드 공유자 전체 삭제
		int deleteBoardCocnrResult = ts.deleteAllBoardCocnr(todoVO.getBoardNo());
		logger.info("보드 공유자 삭제 성공 여부 : " + deleteBoardCocnrResult);
		// 삭제에 성공하면
		if(deleteBoardCocnrResult > 0) {
			// 보드 공유자가 있을 때
			if(todoVO.getCocnrEmpnoArr() != null) {
				logger.info("보드 공유자 배열 : " + todoVO.getCocnrEmpnoArr());
				for(int i=0; i<todoVO.getCocnrEmpnoArr().size(); i++) {
					// 보드 공유자 배열에서 하나씩 보드 공유자를 꺼냄
					int cocnrEmpno = todoVO.getCocnrEmpnoArr().get(i);
					logger.info("보드 공유자 : " + cocnrEmpno);
					// 꺼낸 보드 공유자 세팅
					todoVO.setCocnrEmpno(cocnrEmpno);
					logger.info("보드 공유자 세팅한 todoVO : " + todoVO);
					// 보드 공유자 추가(수정)
					int editBoardCocnrResult = ts.addBoardCocnr(todoVO);
					logger.info("보드 공유자 추가 성공 여부 : " + editBoardCocnrResult);
				}
				
			}
		}
		
		return "redirect:/todo/board/"+ todoVO.getBoardNo() +"";
	}
	
	// 보드 삭제
	@GetMapping("/board/deleteBoard")
	public String deleteBoard(@RequestParam int boardNo) {
		int result = ts.deleteBoard(boardNo);
		if(result == 1) {
			return "redirect:/todo/home";
		}
		return null;
	}
	
	// 카드 메뉴 생성 ajax
	@ResponseBody
	@PostMapping("/board/createCardMenu")
	public int createCardMenu(@ModelAttribute TodoVO todoVO){
//		logger.info("카드 메뉴 생성 파라미터 : " + todoVO);
		return ts.createCardMenu(todoVO);
	}
	
	// 생성된 카드 메뉴 조회
	@ResponseBody
	@PostMapping("/board/createdCardMenuInfo")
	public TodoVO createdCardMenuInfo(@RequestParam int cardMenuNo) {
		return ts.createdCardMenuInfo(cardMenuNo);
	}
	
	// 전체 카드 메뉴 조회
	@ResponseBody
	@GetMapping("/board/cardMenuList")
	public List<TodoVO> cardMenuList(){
		return ts.cardMenuList();
	}
	
	// 카드 메뉴 이름 수정
	@ResponseBody
	@PostMapping("/cardMenu/editCardMenuNm")
	public int editCardMenuNm(@ModelAttribute TodoVO todoVO) {
		return ts.editCardMenuNm(todoVO);
	}
	
	// 카드 메뉴 삭제
	@ResponseBody
	@PostMapping("/cardMenu/deleteCardMenu")
	public int deleteCardMenu(@ModelAttribute TodoVO todoVO) {
		logger.info("카드메뉴삭제 파라미터 : " + todoVO);
		return ts.deleteCardMenu(todoVO);
	}
	
	// 카드 생성
	@ResponseBody
	@PostMapping("/board/createCard")
	public int createCard(@ModelAttribute TodoVO todoVO) {
		return ts.createCard(todoVO);
	}
	
	// 전체 카드 조회
	@ResponseBody
	@GetMapping("/board/cardList")
	public List<TodoVO> cardList(){
		return ts.cardList();
	}
	
	// 생성된 카드 조회
	@ResponseBody
	@PostMapping("/board/createdCardInfo")
	public TodoVO createdCardInfo(@RequestParam int cardNo) {
		return ts.createdCardInfo(cardNo);
	}
	
	// 카드 이름 수정
	@ResponseBody
	@PostMapping("/card/editCardNm")
	public int editCardNm(@ModelAttribute TodoVO todoVO) {
		return ts.editCardNm(todoVO);
	}
	
	// 카드 삭제
	@ResponseBody
	@PostMapping("/card/deleteCard")
	public int deleteCard(@ModelAttribute TodoVO todoVO) {
		logger.info("카드 삭제 파라미터 : " + todoVO);
		return ts.deleteCard(todoVO);
	}
	
	// 파일 업로드 시, 해당 파일 번호를 해당 카드에 삽입
	@ResponseBody
	@PostMapping("/card/editCardFileNo")
	public int editCardFileNo(@ModelAttribute TodoVO todoVO) {
		return ts.editCardFileNo(todoVO);
	}
	
	// 해당 카드에 대한 파일 조회
	@ResponseBody
	@PostMapping("/card/cardFileList")
	public List<TodoVO> cardFileList(@RequestParam Map<String, Integer> getFileMap){
		return ts.cardFileList(getFileMap);
	}
	
	// 첨부 파일 삭제
	@ResponseBody
	@PostMapping("/card/deleteFile")
	public int deleteFile(@RequestParam Map<String, Object> deleteFileMap) {
		logger.info("파일 삭제 파라미터 : " + deleteFileMap);
		return ts.deleteFile(deleteFileMap);
	}
	
	// 카드 설명 생성/수정/삭제
	@ResponseBody
	@PostMapping("/card/editCardDesc")
	public int editCardDesc(@ModelAttribute TodoVO todoVO) {
		return ts.editCardDesc(todoVO);
	}
	
	// 카드 기한일 생성/수정
	@ResponseBody
	@PostMapping("/card/editCardEndDate")
	public int editCardEndDate(@ModelAttribute TodoVO todoVO) {
		logger.info("기한일 파라미터 : " + todoVO);
		return ts.editCardEndDate(todoVO);
	}
	
	// 카드 댓글 생성
	@ResponseBody
	@PostMapping("/card/createAnswer")
	public int createAnswer(@ModelAttribute TodoVO todoVO) {
		logger.info("카드댓글파라미터 : " + todoVO);
		return ts.createAnswer(todoVO);
	}
	
	// 생성된 카드 댓글 조회
	@ResponseBody
	@PostMapping("/card/createdAnswer")
	public TodoVO createdAnswer(@RequestParam int answerNo) {
		return ts.createdAnswer(answerNo);
	}
	
	// 카드 번호에 따른 댓글의 수
	@ResponseBody
	@PostMapping("/card/countAnswer")
	public int countAnswer(@RequestParam int cardNo) {
		return ts.countAnswer(cardNo);
	}
	
	// 카드 댓글 전체 조회
	@ResponseBody
	@GetMapping("/card/countAnswerList")
	public List<TodoVO> countAnswerList(){
		List<TodoVO> list = ts.countAnswerList();
		for(int i=0; i<list.size(); i++) {
			String beforeFileCours = list.get(i).getPhotoCours().replaceAll("\\\\", "/");
			String url = "/resources/upload/";
			String fileCours = url + beforeFileCours;
			
			list.get(i).setPhotoCours(fileCours);
		}
		return list;
	}
	
	// 카드 댓글 삭제
	@ResponseBody
	@PostMapping("/card/deleteAnswer")
	public int deleteAnswer(@ModelAttribute TodoVO todoVO) {
		return ts.deleteAnswer(todoVO);
	}
	
	// 카드 댓글 수정
	@ResponseBody
	@PostMapping("/card/editAnswer")
	public int editAnswer(@ModelAttribute TodoVO todoVO) {
		logger.info("댓글 수정 파라미터 : " + todoVO);
		return ts.editAnswer(todoVO);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
