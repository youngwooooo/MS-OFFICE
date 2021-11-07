package kr.or.ddit.EA.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.EA.mapper.EAMapper;
import kr.or.ddit.EA.service.EAService;
import kr.or.ddit.EA.vo.DrftVO;
import kr.or.ddit.EA.vo.LineVO;
import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;

@Service
public class EAServiceImpl implements EAService{

	@Autowired
	private EAMapper eaMapper;
	
	@Autowired
	private FileMapper fileMapper;

	@Override
	public int insert(EmpVOList empVoList, DrftVO drftVo) {
		
		// 첨부파일 없으면 종료
	      if(drftVo.getFileList()==null || drftVo.getFileList().size() <= 0) {
	    	  
	      }else {
	         int fileNo = fileMapper.fileNo();
	         drftVo.setFileNo(fileNo+"");
	         for(FileVO fileVo : drftVo.getFileList()) {
	            fileVo.setFileNo(fileNo);
	            System.out.println("서비스 임플 : " + fileVo.getFileSize());
	            System.out.println(fileVo.getFileOrginlNm());
	            fileMapper.fileInsert(fileVo);
	         }
	      }
	      
		
		String lineNo = eaMapper.lastLineNo();
		int c = 0;
		for(EmpVO empVo : empVoList.getEmpVoList()) {
			String ordr = c + "";
			empVo.setOrdr(ordr);
			empVo.setLineNo(lineNo);
			eaMapper.lineInsert(empVo);
			c++;
		}
		drftVo.setSanctnNo(lineNo);
		eaMapper.drftInsert(drftVo);
		
		
		return c;
	}

	@Override
	public List<DrftVO> selectAll(Map<String, Object> map) {
		return eaMapper.selectAll(map);
	}

	@Override
	public int selectCount(Map<String, Object> map) {
		return eaMapper.selectCount(map);
	}

	@Override
	public DrftVO selectOne(String drftNo) {
		return eaMapper.selectOne(drftNo);
	}

	@Override
	public List<LineVO> selectLine(String sanctnNo) {
		return eaMapper.selectLine(sanctnNo);
	}

	@Override
	public List<DrftVO> selectAllWait(Map<String, Object> map) {
		return eaMapper.selectAllWait(map);
	}

	@Override
	public int selectWaitCount(Map<String, Object> map) {
		return eaMapper.selectWaitCount(map);
	}

	@Override
	public int drftUpdate(Map<String, Object> map) {
		int result = 0;
		result = eaMapper.drftUpdate(map);
		// 해당 기안서가 전부 승인이 완료가 되었는지 확인하기위해 결재선 설렉트
		List<LineVO> list = eaMapper.selectLineByDrftNo(map);
		boolean chk = true;
		for(LineVO lineVo : list) {
			if(lineVo.getSancCode() == null || lineVo.getSancCode().equals("R102")) {
				chk = false;
			}
		}
		//승인이 모두 완료됨
		if(chk) {
			eaMapper.drftLastUpdate(map);
			eaMapper.vacationLastUpdate(map);
			//기안 작성자에게 알람이 감
			eaMapper.drftAlarm(map);
		}
		
		return result;
	}

	@Override
	public int drftReject(Map<String, Object> map) {
		
		//결재선에서 반려를 찍음
		int reject = eaMapper.lineReject(map);
		if(reject < 1) { //결재선에 해당 승인자가 반려가 찍히지 않았으면 정상적이지 않은 루트라고 판단하고 리턴함
			return 0;
		}
		//기안서 반려 때림
		int result = eaMapper.drftReject(map);
		//결재선에서 남은 뒷부분에 null이 아닌 공백을 찍음
		int space = eaMapper.lineSpace(map);
		
		//반려됐다고 기안자에게 알려줌
		eaMapper.drftRejectAlarm(map);
		
		return result;
	}

	@Override
	public int insertVacation(EmpVOList empVoList, DrftVO drftVo) {
		// 첨부파일 없으면 종료
	      if(drftVo.getFileList()==null || drftVo.getFileList().size() <= 0) {
	    	  
	      }else {
	         int fileNo = fileMapper.fileNo();
	         drftVo.setFileNo(fileNo+"");
	         for(FileVO fileVo : drftVo.getFileList()) {
	            fileVo.setFileNo(fileNo);
	            System.out.println("서비스 임플 : " + fileVo.getFileSize());
	            System.out.println(fileVo.getFileOrginlNm());
	            fileMapper.fileInsert(fileVo);
	         }
	      }
	      
		
		String lineNo = eaMapper.lastLineNo();
		int c = 0;
		for(EmpVO empVo : empVoList.getEmpVoList()) {
			String ordr = c + "";
			empVo.setOrdr(ordr);
			empVo.setLineNo(lineNo);
			eaMapper.lineInsert(empVo);
			c++;
		}
		drftVo.setSanctnNo(lineNo);
		eaMapper.drftInsert(drftVo);
		eaMapper.vacationInsert(drftVo);
		
		return c;
	}

	@Override
	public List<DrftVO> myDrftList(String empno) {
		return eaMapper.myDrftList(empno);
	}

	@Override
	public List<DrftVO> procDrftList() {
		return eaMapper.procDrftList();
	}

	@Override
	public List<DrftVO> complDrftList() {
		return eaMapper.complDrftList();
	}

	@Override
	public int getEACount(String empno) {
		return eaMapper.getEACount(empno);
	}
	
}
