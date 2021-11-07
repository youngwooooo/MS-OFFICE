package kr.or.ddit.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.common.vo.CommonVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.notice.vo.NoticeVO;
import kr.or.ddit.survey.vo.SurveyVO;

@Mapper
public interface CommonMapper {
	// 이름, 직위명, 사진, 소속 가져오기
	EmpVO getProfile(String empno);
	// 최근에 작성된 미참여한 설문 2건 가져오기
	List<SurveyVO> getSurveyList(String empno);
	// 공지사항 최신 5개 조회
	List<NoticeVO> selectNoticeList();
	// 최근 알림을 조회(전자결재, 설문, todo, 공지사항)
	List<CommonVO> selectNewList(String empno);
	// 마이페이지 정보 조회
	EmpVO getEmpInfo(String empno);
	// 마이페이지 수정(사진 제외)
	int eidtEmpInfo(EmpVO empVO);
	// 마이페이지 수정(사진 포함)
	int editEmpInfoAndProfile(EmpVO empVO);
}
