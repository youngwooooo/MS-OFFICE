package kr.or.ddit.common.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.mapper.CommonMapper;
import kr.or.ddit.common.service.CommonService;
import kr.or.ddit.common.vo.CommonVO;
import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.notice.vo.NoticeVO;
import kr.or.ddit.survey.vo.SurveyVO;

@Service
public class CommonServiceImpl implements CommonService{
	@Autowired
	CommonMapper cm;
	
	@Autowired
	FileMapper fm;

	// 이름, 직위명, 사진, 소속 가져오기
	@Override
	public EmpVO getProfile(String empno) {
		return cm.getProfile(empno);
	}
	
	// 최근에 작성된 미참여한 설문 2건 가져오기
	@Override
	public List<SurveyVO> getSurveyList(String empno) {
		return cm.getSurveyList(empno);
	}
	
	// 공지사항 최신 5개 조회
	@Override
	public List<NoticeVO> selectNoticeList() {
		return cm.selectNoticeList();
	}
	
	// 최근 알림을 조회(전자결재, 설문, todo, 공지사항)
	@Override
	public List<CommonVO> selectNewList(String empno) {
		return cm.selectNewList(empno);
	}
	
	// 마이 페이지 정보 조회
	@Override
	public EmpVO getEmpInfo(String empno) {
		return cm.getEmpInfo(empno);
	}

	@Override
	public int mypageEdit(EmpVO empVO, FileVO fileVO) {
		int fileDelete = 0;
		// 사진  미수정 시..
		if(fileVO.getFileNo() == 0) {
			int result = cm.eidtEmpInfo(empVO);
			return result;
		}else {
			// 사진 수정 시..
			// 1. 사진 insert
			int fileInsert = fm.fileInsert(fileVO);
			if(fileInsert > 0) {
				// 2. 사원 정보 수정
				int editEmpInfo = cm.editEmpInfoAndProfile(empVO);
				if(editEmpInfo > 0) {
					// 3. 이전 사진 삭제
					int fileNo = Integer.parseInt(empVO.getBeforeFileNo());
					fileDelete = fm.fileAllDelete(fileNo);
				}
			}
			return fileDelete;
		}
		
	}


}
