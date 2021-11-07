package kr.or.ddit.survey.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.survey.vo.SurveyChartVO;
import kr.or.ddit.survey.vo.SurveyVO;

@Mapper
public interface SurveyMapper {
	// 설문 작성
	int createQustnr(SurveyVO surveyVO);
	// 설문 수정
	int surveyEdit(SurveyVO surveyVO);
	// 설문 삭제
	int deleteSurvey(int qustnrNo);
	// 설문 대상자 등록
	int createTrgterEmpno(SurveyVO surveyVO);
	// 설문 대상자 전체 삭제
	int deleteAllTrgterEmpno(int qustnrNo);
	// 문항 번호만 생성하여 문항 등록
	int createQesitmNo(SurveyVO surveyVO);
	// 문항 제목, 문항 타입 정보 추가
	int addQesitmInfo(SurveyVO surveyVO);
	// 보기 등록
	int createEx(SurveyVO surveyVO);
	// 미참여한 모든 설문을 최신순으로 조회(4개)
	List<SurveyVO> AllsurveyListRspnsN(String empno);
	// 작성된 설문을 최신순으로 조회(15개)
	List<SurveyVO> surveyLatelyList(String empno);
	// 진행중인 설문 조회
	List<SurveyVO> runSurveyList(Map<String, Object> map);
	// 마감된 설문 조회
	List<SurveyVO> doneSurveyList(Map<String, Object> map);
	// 내가 만든 설문 조회
	List<SurveyVO> mineSurveyList(Map<String, Object> map);
	/* 설문 상세 조회 시작 */
	
	// 설문 + 파일 조회
	List<SurveyVO> detailSurveyList(int qustnrNo);
	// 설문 대상자 조회
	List<SurveyVO> detailSurveyTrgter(int qustnrNo);
	// 설문 문항 조회
	List<SurveyVO> detailSurveyQesitm(int qustnrNo);
	// 설문 보기 조회
	List<SurveyVO> detailSurveyEx(int qustnrNo);
	// 세션에 따른 응답 여부 조회
	SurveyVO getRspnsAt(Map<String, Object> rspnsMap);
	// 세션에 따른 응답 결과 전체 조회
	List<SurveyVO> rspnsResultList(Map<String, Object> rspnsResultMap);
	// 설문 창여한 사람만 조회
	List<SurveyVO> rspnsEmpnoList(int qustnrNo);
	// 평균 점수를 구하기 위한 문항별 점수의 합
	List<SurveyVO> getSumScore(int qustnrNo);
	/* 설문 상세 조회 끝*/
	
	// 응답 결과 등록
	int createRspns(SurveyVO surveyVO);
	// 응답 결과 삭제
	int deleteRspns(SurveyVO surveyVO);
	// 응답 결과 차트를 위한 정보 조회
	List<SurveyChartVO> selectChartInfo(int qustnrNo);
	
	/* 설문 상태 수정 시작*/
	// 설문 진행으로 수정
	int surveyStatusEditRun(int qustnrNo);
	// 설문 완료(마감)로 수정
	int surveyStatusEditDone(int qustnrNo);
	// 설문 중지로 수정
	int surveyStatusEditStop(int qustnrNo);
	/* 설문 상태 수정 끝*/
	
	// 설문 댓글 등록
	int createSurveyAnswer(SurveyVO surveyVO);
	// 설문 댓글 수정
	int editSurveyAnswer(SurveyVO surveyVO);
	// 설문 댓글 삭제
	int deleteSurveyAnswer(Map<String, Object> deleteAnswerMap);
	// 해당 설문에 대한 전체 댓글 조회
	List<SurveyVO> surveyAnswerList(int qustnrNo);
	
	/* 페이징 처리 시작 */
	// 진행중인 설문 개수
	int runSurveyCount(Map<String, Object> map);
	// 마감된 설문 개수
	int doneSurveyCount(Map<String, Object> map);
	// 내가 만든 설문 개수
	int mineSurveyCount(Map<String, Object> map);
	/* 페이징 처리 끝 */
	
	/* 알람 시작 */
	// 설문이 진행중이고 응답을 하지 않은 설문의 개수 조회
	int getRspnsAtIsNCount(String empno);
	// 응답한 사람들 조회
	List<SurveyVO> getRspnsEmpno(int qustnrNo);
	// 설문 대상자 조회
	List<SurveyVO> getTrgterEmpno(int qustnrNo);
	// 해당 설문 작성자, 설문명 조회
	SurveyVO getWrterEmpnoAndSj(int qustnrNo);
	
	/* 알람 끝 */
}
