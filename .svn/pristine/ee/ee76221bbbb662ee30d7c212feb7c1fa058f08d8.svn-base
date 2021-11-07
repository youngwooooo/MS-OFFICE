package kr.or.ddit.common.service;

import java.util.List;

import kr.or.ddit.common.vo.CommonVO;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.notice.vo.NoticeVO;
import kr.or.ddit.survey.vo.SurveyVO;

public interface CommonService {
	// 이름, 직위명, 사진, 소속 가져오기
	public EmpVO getProfile(String empno);
	// 최근에 작성된 미참여한 설문 2건 가져오기
	public List<SurveyVO> getSurveyList(String empno);
	// 공지사항 최신 5개 조회
	public List<NoticeVO> selectNoticeList();
	// 최근 알림을 조회(전자결재, 설문, todo, 공지사항)
	public List<CommonVO> selectNewList(String empno);
	// 마이페이지 정보 조회
	public EmpVO getEmpInfo(String empno);
	// 마이페이지 수정
	public int mypageEdit(EmpVO empVO, FileVO fileVO);
}
