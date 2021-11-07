package kr.or.ddit.survey.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.survey.vo.SurveyChartVO;
import kr.or.ddit.survey.vo.SurveyVO;

public interface SurveyService {
	// 설문 작성
	public int createQustnr(SurveyVO surveyVO);
	// 설문 수정
	public int surveyEdit(SurveyVO surveyVO);
	// 설문 삭제
	public int deleteSurvey(int qustnrNo);
	// 설문 대상자 등록
	public int createTrgterEmpno(SurveyVO surveyVO);
	// 설문 대상자 전체 삭제
	public int deleteAllTrgterEmpno(int qustnrNo);
	// 문항 번호만 생성하여 문항 등록
	public int createQesitmNo(SurveyVO surveyVO);
	// 문항 제목, 문항 타입 정보 추가
	public int addQesitmInfo(SurveyVO surveyVO);
	// 보기 등록
	public int createEx(SurveyVO surveyVO);
	// 미참여한 모든 설문을 최신순으로 조회(4개)
	public List<SurveyVO> AllsurveyListRspnsN(String empno);
	// 작성된 설문을 최신순으로 조회(15개)
	public List<SurveyVO> surveyLatelyList(String empno);
	// 진행중인 설문 조회
	public List<SurveyVO> runSurveyList(Map<String, Object> map);
	// 마감된 설문 조회
	public List<SurveyVO> doneSurveyList(Map<String, Object> map);
	// 내가 만든 설문 조회
	public List<SurveyVO> mineSurveyList(Map<String, Object> map);
	
	/* 설문 상세 조회 시작 */
	// 설문 + 파일 조회
	public List<SurveyVO> detailSurveyList(int qustnrNo);
	// 설문 대상자 조회
	public List<SurveyVO> detailSurveyTrgter(int qustnrNo);
	// 설문 문항 조회
	public List<SurveyVO> detailSurveyQesitm(int qustnrNo);
	// 설문 보기 조회
	public List<SurveyVO> detailSurveyEx(int qustnrNo);
	// 세션에 따른 응답 여부 조회
	public SurveyVO getRspnsAt(Map<String, Object> rspnsMap);
	// 세션에 따른 응답 결과 전체 조회
	public List<SurveyVO> rspnsResultList(Map<String, Object> rspnsResultMap);
	// 설문 창여한 사람만 조회
	public List<SurveyVO> rspnsEmpnoList(int qustnrNo);
	// 평균 점수를 구하기 위한 문항별 점수의 합
	public List<SurveyVO> getSumScore(int qustnrNo);
	/* 설문 상세 조회 끝*/
	
	// 응답 결과 등록
	public int createRspns(SurveyVO surveyVO);
	// 응답 결과 수정
	public int editRspns(SurveyVO surveyVO);
	// 응답 결과 삭제
	public int deleteRspns(SurveyVO surveyVO);
	// 응답 결과 차트를 위한 정보 조회
	public List<SurveyChartVO> selectChartInfo(int qustnrNo);
	
	/* 설문 상태 수정 시작*/
	// 설문 진행으로 수정
	public int surveyStatusEditRun(int qustnrNo);
	// 설문 완료(마감)로 수정
	public int surveyStatusEditDone(int qustnrNo);
	// 설문 중지로 수정
	public int surveyStatusEditStop(int qustnrNo);
	/* 설문 상태 수정 끝*/
	
	// 설문 댓글 등록
	public int createSurveyAnswer(SurveyVO surveyVO);
	// 설문 댓글 수정
	public int editSurveyAnswer(SurveyVO surveyVO);
	// 설문 댓글 삭제
	public int deleteSurveyAnswer(Map<String, Object> deleteAnswerMap);
	// 해당 설문에 대한 댓글 전체 조회
	public List<SurveyVO> surveyAnswerList(int qustnrNo);
	
	/* 내가 만든 설문 로직 시작*/
	// 설문 삭제
	public int deleteMineSurvey(List<Integer> qustnrNoArr, List<Integer> fileNoArr);
	public int stopMineSurvey(List<Integer> qustnrNoArr);
	public int runMineSurvey(List<Integer> qustnrNoArr);
	public int doneMineSurvey(List<Integer> qustnrNoArr);
	/* 내가 만든 설문 로직 끝*/
	
	/* 페이징 처리 시작 */
	// 진행중인 설문 개수
	public int runSurveyCount(Map<String, Object> map);
	// 마감된 설문 개수
	public int doneSurveyCount(Map<String, Object> map);
	// 내가 만든 설문 개수
	public int mineSurveyCount(Map<String, Object> map);
	/* 페이징 처리 끝 */
	
	/* 알람 시작 */
	// 설문이 진행중이고 응답을 하지 않은 설문의 개수 조회
	public int getRspnsAtIsNCount(String empno);
	/* 알람 끝 */

}
