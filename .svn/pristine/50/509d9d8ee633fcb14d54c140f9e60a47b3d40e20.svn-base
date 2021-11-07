package kr.or.ddit.survey.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.alarm.service.AlarmService;
import kr.or.ddit.alarm.vo.AlarmVO;
import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.survey.mapper.SurveyMapper;
import kr.or.ddit.survey.service.SurveyService;
import kr.or.ddit.survey.vo.SurveyChartVO;
import kr.or.ddit.survey.vo.SurveyVO;

@Service
public class SurveyServiceImpl implements SurveyService{
	
	@Autowired
	SurveyMapper sm;
	
	@Autowired
	FileMapper fm;
	
	@Autowired
	AlarmService as;
	
	// 설문 작성
	@Override
	public int createQustnr(SurveyVO surveyVO) {
		int createQustnrResult = sm.createQustnr(surveyVO);
		// 설문 등록 성공 시
		if(createQustnrResult > 0) {
			// insert된 설문의 번호
			int qustnrNo = surveyVO.getQustnrNo();
			// 설문 번호 세팅
			surveyVO.setQustnrNo(qustnrNo);
			
			// ------ 1. 설문 대상자 등록 시작 --------
			// 설문 대상자 배열에서 설문 대상자를 한 명씩 꺼냄
			for(int i=0; i<surveyVO.getTrgterEmpnoArr().size(); i++) {
				int trgterEmpno = surveyVO.getTrgterEmpnoArr().get(i);
				// 하나씩 꺼낸 설문 대상자를 세팅
				surveyVO.setTrgterEmpno(trgterEmpno);
				// 설문 대상자 등록
				sm.createTrgterEmpno(surveyVO);
			}
			// ---------------------------------
			
			// --------- 2. 문항 등록 시작 ----------
			// 문항 번호를 담을 list
			List<Integer> qesitmNoArr = new ArrayList<Integer>();
			
			// 문항 제목의 size 만큼 돌려서
			for(int i=0; i<surveyVO.getCnArr().size(); i++) {
				// 문항 번호먼저 등록
				int createQesitmNoResult = sm.createQesitmNo(surveyVO);
				// 문항 번호가 등록되면
				if(createQesitmNoResult > 0) {
					// qesitmNoArr에 해당 문항 번호들을 담기
					qesitmNoArr.add(surveyVO.getQesitmNo());
				}
			}
			// 담긴 각 문항번호를 surveyVO의 qesitmNoArr 변수에 담기
			surveyVO.setQesitmNoArr(qesitmNoArr);
			
			if(surveyVO.getQesitmNoArr().size() > 1) {
				// 문항 번호의 size 만큼 돌려서
				for(int i=0; i<surveyVO.getQesitmNoArr().size(); i++) {
					surveyVO.setQesitmNo(surveyVO.getQesitmNoArr().get(i));
					// list로 되있는 문항 타입을 code변수에 넣기
					surveyVO.setCode(surveyVO.getCodeArr().get(i));
					// list로 되있는 문항 제목을 cn 변수에 넣기
					surveyVO.setCn(surveyVO.getCnArr().get(i));
					
					sm.addQesitmInfo(surveyVO);
					// ---------------------------------
					
					// --------- 3. 보기 등록 시작 ----------
					
					for(int j=0; j<surveyVO.getExNoArr().get(i).size(); j++) {
						surveyVO.setExNo(surveyVO.getExNoArr().get(i).get(j));
						surveyVO.setExCn(surveyVO.getExCnArr().get(i).get(j));
						surveyVO.setExScore(surveyVO.getExScoreArr().get(i).get(j));
						
						sm.createEx(surveyVO);
					}
					// ----------------------------------
				}
				
			}else {
				System.out.println("보기 번호 배열 길이 : " + surveyVO.getExNoArr().size());
				
				List<Integer> exNoSingleArr = new ArrayList<Integer>();
				List<List<Integer>> exNoSingleArr2 = new ArrayList<List<Integer>>();
				List<String> exCnSingleArr = new ArrayList<String>();
				List<List<String>> exCnSingleArr2 = new ArrayList<List<String>>();
				List<Integer> exScoreSingleArr = new ArrayList<Integer>();
				List<List<Integer>> exScoreSingleArr2 = new ArrayList<List<Integer>>();
				
				for(int i=0; i<surveyVO.getExNoArr().size(); i++) {
					exNoSingleArr.add(surveyVO.getExNoArr().get(i).get(0));
					exCnSingleArr.add(surveyVO.getExCnArr().get(i).get(0));
					exScoreSingleArr.add(surveyVO.getExScoreArr().get(i).get(0));
				}
				
				exNoSingleArr2.add(exNoSingleArr);
				exCnSingleArr2.add(exCnSingleArr);
				exScoreSingleArr2.add(exScoreSingleArr);
				
				surveyVO.setExNoSingleArr(exNoSingleArr2);
				surveyVO.setExCnSingleArr(exCnSingleArr2);
				surveyVO.setExScoreSingleArr(exScoreSingleArr2);
				
				// 문항 번호의 size 만큼 돌려서
				for(int i=0; i<surveyVO.getQesitmNoArr().size(); i++) {
					surveyVO.setQesitmNo(surveyVO.getQesitmNoArr().get(i));
					// list로 되있는 문항 타입을 code변수에 넣기
					surveyVO.setCode(surveyVO.getCodeArr().get(i));
					// list로 되있는 문항 제목을 cn 변수에 넣기
					surveyVO.setCn(surveyVO.getCnArr().get(i));
					
					sm.addQesitmInfo(surveyVO);
					// ---------------------------------
					
					
					// --------- 3. 보기 등록 시작 ----------
					
					for(int j=0; j<surveyVO.getExNoSingleArr().get(i).size(); j++) {
						surveyVO.setExNo(surveyVO.getExNoSingleArr().get(i).get(j));
						surveyVO.setExCn(surveyVO.getExCnSingleArr().get(i).get(j));
						surveyVO.setExScore(surveyVO.getExScoreSingleArr().get(i).get(j));
						
						sm.createEx(surveyVO);
					}
					
					
					// ----------------------------------
				}
				
			}
		}
		
		return createQustnrResult;
	}
	
	// 설문 수정
	@Override
	public int surveyEdit(SurveyVO surveyVO) {
		// 설문 수정 성공 여부
		int surveyEditResult = 0;
		// 1. 설문 대상자 전체 삭제
		int deleteAllTrgterEmpnoResult = sm.deleteAllTrgterEmpno(surveyVO.getQustnrNo());
		if(deleteAllTrgterEmpnoResult > 0) {
			// 2. 설문 수정
			surveyEditResult = sm.surveyEdit(surveyVO);
			if(surveyEditResult > 0) {
				// 3. 설문 대상자 등록
				for(int i=0; i<surveyVO.getTrgterEmpnoArr().size(); i++) {
					int trgterEmpno = surveyVO.getTrgterEmpnoArr().get(i);
					// 하나씩 꺼낸 설문 대상자를 세팅
					surveyVO.setTrgterEmpno(trgterEmpno);
					// 설문 대상자 등록
					sm.createTrgterEmpno(surveyVO);
				}
			}
		}
		return surveyEditResult;
		
	}
	
	
	// 설문 삭제
	@Override
	public int deleteSurvey(int qustnrNo) {
		return sm.deleteSurvey(qustnrNo);
	}
	
	// 설문 대상자 등록
	@Override
	public int createTrgterEmpno(SurveyVO surveyVO) {
		return sm.createTrgterEmpno(surveyVO);
	}
	
	// 설문 대상자 전체 삭제
	@Override
	public int deleteAllTrgterEmpno(int qustnrNo) {
		return sm.deleteAllTrgterEmpno(qustnrNo);
	}
	
	// 문항 번호만 생성하여 문항 등록
	@Override
	public int createQesitmNo(SurveyVO surveyVO) {
		return sm.createQesitmNo(surveyVO);
	}
	
	// 문항 제목, 문항 타입 정보 추가
	@Override
	public int addQesitmInfo(SurveyVO surveyVO) {
		return sm.addQesitmInfo(surveyVO);
	}
	
	// 보기 등록
	@Override
	public int createEx(SurveyVO surveyVO) {
		return sm.createEx(surveyVO);
	}
	
	// 미참여한 모든 설문을 최신순으로 조회(4개)
	@Override
	public List<SurveyVO> AllsurveyListRspnsN(String empno) {
		return sm.AllsurveyListRspnsN(empno);
	}
	
	// 작성된 설문을 최신순으로 조회(15개)
	@Override
	public List<SurveyVO> surveyLatelyList(String empno) {
		return sm.surveyLatelyList(empno);
	}
	
	// 진행중인 설문 조회
	@Override
	public List<SurveyVO> runSurveyList(Map<String, Object> map) {
		return sm.runSurveyList(map);
	}
	
	// 마감된 설문 조회
	@Override
	public List<SurveyVO> doneSurveyList(Map<String, Object> map) {
		return sm.doneSurveyList(map);
	}
	
	// 내가 만든 설문 조회
	@Override
	public List<SurveyVO> mineSurveyList(Map<String, Object> map) {
		return sm.mineSurveyList(map);
	}
	
	/* 설문 상세 조회 시작 */
	
	// 설문 + 파일 조회
	@Override
	public List<SurveyVO> detailSurveyList(int qustnrNo) {
		return sm.detailSurveyList(qustnrNo);
	}
	// 설문 대상자 조회
	@Override
	public List<SurveyVO> detailSurveyTrgter(int qustnrNo) {
		return sm.detailSurveyTrgter(qustnrNo);
	}
	// 설문 문항 조회
	@Override
	public List<SurveyVO> detailSurveyQesitm(int qustnrNo) {
		return sm.detailSurveyQesitm(qustnrNo);
	}
	// 설문 보기 조회
	@Override
	public List<SurveyVO> detailSurveyEx(int qustnrNo) {
		return sm.detailSurveyEx(qustnrNo);
	}
	
	// 응답 결과 등록
	@Override
	public int createRspns(SurveyVO surveyVO) {
		int result = 0;
		for(int i=0; i<surveyVO.getQesitmNoArr().size(); i++) {
			int qesitmNo = surveyVO.getQesitmNoArr().get(i);
			int exNo = surveyVO.getRspnsExNoArr().get(i);
			int rspnsScore = surveyVO.getRspnsScoreArr().get(i);
			String rspnsCn = surveyVO.getRspnsCnArr().get(i);
			
			surveyVO.setQesitmNo(qesitmNo);
			surveyVO.setExNo(exNo);
			surveyVO.setRspnsScore(rspnsScore);
			surveyVO.setRspnsCn(rspnsCn);
			
			
			result = sm.createRspns(surveyVO);
		}
		
		System.out.println("result : " + result);
		if(result > 0) {
			List<SurveyVO> total = sm.getTrgterEmpno(surveyVO.getQustnrNo());
			List<SurveyVO> rspns = sm.getRspnsEmpno(surveyVO.getQustnrNo());
			
			// 설문 대상자 수
			int totalMember = total.size();
			System.out.println("totalMember : " + totalMember);
			// 응답 결과자 수
			int rspnsMember = rspns.size();
			System.out.println("rspnsMember : " + rspnsMember);
			
			// 설문 대상자 수와 응답 결과자 수가 같을 때..
			if(totalMember == rspnsMember) {
				SurveyVO wrterEmpnoAndSj = sm.getWrterEmpnoAndSj(surveyVO.getQustnrNo());
				
				int newEmpno = wrterEmpnoAndSj.getWrterEmpno();
				String newCn = wrterEmpnoAndSj.getQustnrSj();
				int docNo = surveyVO.getQustnrNo();
				String docCategory = "SURVEY";
				
				AlarmVO alarmVO = new AlarmVO();
				alarmVO.setNewEmpno(newEmpno);
				alarmVO.setNewCn(newCn);
				alarmVO.setDocNo(docNo);
				alarmVO.setDocCategory(docCategory);
				
				System.out.println("alarmVO : " + alarmVO);
				int alarmResult = as.createAlarm(alarmVO);
				
				return alarmResult;
			}else {
				return result;
			}
			
		}else {
			return 0;
		}
	}
	
	// 응답 결과 수정
	@Override
	public int editRspns(SurveyVO surveyVO) {
		int editResult = 0;
		int deleteResult = 0;
		
		// 기존 응답결과 삭제
		for(int i=0; i<surveyVO.getQesitmNoArr().size(); i++) {
			int qesitmNo = surveyVO.getQesitmNoArr().get(i);
			int beforeExNo = surveyVO.getBeforeExNoArr().get(i);
			int rspnsScore = surveyVO.getRspnsScoreArr().get(i);
			String rspnsCn = surveyVO.getRspnsCnArr().get(i);
			
			surveyVO.setQesitmNo(qesitmNo);
			surveyVO.setExNo(beforeExNo);
			surveyVO.setRspnsScore(rspnsScore);
			surveyVO.setRspnsCn(rspnsCn);
			
			deleteResult = sm.deleteRspns(surveyVO);
		}
		
		// 기존 응답 결과 삭제에 성공하면..
		if(deleteResult > 0) {
			// 새로운 응답결과 등록
			for(int i=0; i<surveyVO.getQesitmNoArr().size(); i++) {
				int qesitmNo = surveyVO.getQesitmNoArr().get(i);
				int editExNo = surveyVO.getRspnsExNoArr().get(i);
				int rspnsScore = surveyVO.getRspnsScoreArr().get(i);
				String rspnsCn = surveyVO.getRspnsCnArr().get(i);
				
				surveyVO.setQesitmNo(qesitmNo);
				surveyVO.setExNo(editExNo);
				surveyVO.setRspnsScore(rspnsScore);
				surveyVO.setRspnsCn(rspnsCn);
				
				editResult = sm.createRspns(surveyVO);
			}
		}
		
		if(editResult > 0) {
			return editResult;
		}else {
			return 0;
		}
		
	}
		
	// 응답 결과 삭제
	@Override
	public int deleteRspns(SurveyVO surveyVO) {
		return sm.deleteRspns(surveyVO);
	}
	
	// 세션에 따른 응답 여부 조회
	@Override
	public SurveyVO getRspnsAt(Map<String, Object> rspnsMap) {
		return sm.getRspnsAt(rspnsMap);
	}
	
	// 세션에 따른 응답 결과 전체 조회
	@Override
	public List<SurveyVO> rspnsResultList(Map<String, Object> rspnsResultMap) {
		return sm.rspnsResultList(rspnsResultMap);
	}
	
	// 설문 참여한 사람만 조회
	@Override
	public List<SurveyVO> rspnsEmpnoList(int qustnrNo) {
		return sm.rspnsEmpnoList(qustnrNo);
	}
	
	// 평균 점수를 구하기 위한 문항별 점수의 합
	@Override
	public List<SurveyVO> getSumScore(int qustnrNo) {
		return sm.getSumScore(qustnrNo);
	}
	/* 설문 상세 조회 끝 */
	
	// 응답 결과 차트를 위한 정보 조회
	@Override
	public List<SurveyChartVO> selectChartInfo(int qustnrNo) {
		return sm.selectChartInfo(qustnrNo);
	}
	
	/* 설문 상태 수정 시작*/
	// 설문 진행으로 수정
	@Override
	public int surveyStatusEditRun(int qustnrNo) {
		return sm.surveyStatusEditRun(qustnrNo);
	}
	
	// 설문 완료(마감)로 수정
	@Override
	public int surveyStatusEditDone(int qustnrNo) {
		return sm.surveyStatusEditDone(qustnrNo);
	}
	
	// 설문 중지로 수정
	@Override
	public int surveyStatusEditStop(int qustnrNo) {
		return sm.surveyStatusEditStop(qustnrNo);
	}
	/* 설문 상태 수정 끝*/

	
	// 설문 댓글 등록
	@Override
	public int createSurveyAnswer(SurveyVO surveyVO) {
		return sm.createSurveyAnswer(surveyVO);
	}
	
	// 설문 댓글 수정
	@Override
	public int editSurveyAnswer(SurveyVO surveyVO) {
		return sm.editSurveyAnswer(surveyVO);
	}
	
	// 설문 댓글 삭제
	@Override
	public int deleteSurveyAnswer(Map<String, Object> deleteAnswerMap) {
		return sm.deleteSurveyAnswer(deleteAnswerMap);
	}
	
	// 해당 설문에 대한 댓글 전체 조회
	@Override
	public List<SurveyVO> surveyAnswerList(int qustnrNo) {
		return sm.surveyAnswerList(qustnrNo);
	}

	
	/* 내가 만든 설문 로직 시작 */
	// 설문 삭제
	@Override
	public int deleteMineSurvey(List<Integer> qustnrNoArr, List<Integer> fileNoArr) {
		int result = 0;
		for(int i=0; i<fileNoArr.size(); i++) {
			int fileNo = fileNoArr.get(i);
			int qustnrNo = qustnrNoArr.get(i);
			
			if(fileNo > 0) {
				int fileDeleteResult = fm.fileAllDelete(fileNo);
				if(fileDeleteResult > 0) {
					result = sm.deleteSurvey(qustnrNo);
				}
				
			}else {
				result = sm.deleteSurvey(qustnrNo);
			}
			
		}
		return result;
	}
	
	// 설문 중지로 변경
	@Override
	public int stopMineSurvey(List<Integer> qustnrNoArr) {
		int result = 0;
		for(int i=0; i<qustnrNoArr.size(); i++) {
			int qustnrNo = qustnrNoArr.get(i);
			result = sm.surveyStatusEditStop(qustnrNo);
		}
		
		if(result > 0) {
			return result;
		}else {
			return 0;
		}
	}
	
	// 설문 진행으로 변경
	@Override
	public int runMineSurvey(List<Integer> qustnrNoArr) {
		int result = 0;
		for(int i=0; i<qustnrNoArr.size(); i++) {
			int qustnrNo = qustnrNoArr.get(i);
			result = sm.surveyStatusEditRun(qustnrNo);
		}
		
		if(result > 0) {
			return result;
		}else {
			return 0;
		}
	}
	
	// 설문 완료(마감)로 변경
	@Override
	public int doneMineSurvey(List<Integer> qustnrNoArr) {
		int result = 0;
		for(int i=0; i<qustnrNoArr.size(); i++) {
			int qustnrNo = qustnrNoArr.get(i);
			result = sm.surveyStatusEditDone(qustnrNo);
		}
		
		if(result > 0) {
			return result;
		}else {
			return 0;
		}
	}

	/* 내가 만든 설문 로직 끝 */
	
	/* 페이징 처리 시작*/
	// 진행중인 설문 개수
	@Override
	public int runSurveyCount(Map<String, Object> map) {
		return sm.runSurveyCount(map);
	}
	// 내가 만든 설문 개수
	@Override
	public int doneSurveyCount(Map<String, Object> map) {
		return sm.doneSurveyCount(map);
	}
	
	// 마감된 설문 개수
	@Override
	public int mineSurveyCount(Map<String, Object> map) {
		return sm.mineSurveyCount(map);
	}

	/*페이징 처리 끝*/
	
	/* 알람 시작 */
	// 설문이 진행중이고 응답을 하지 않은 설문의 개수 조회
	@Override
	public int getRspnsAtIsNCount(String empno) {
		return sm.getRspnsAtIsNCount(empno);
	}
	/* 알람 끝 */
	
	
	
	

	
	
	


}
