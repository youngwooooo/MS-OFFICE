package kr.or.ddit.mail.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.alarm.service.AlarmService;
import kr.or.ddit.alarm.vo.AlarmVO;
import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;
import kr.or.ddit.mail.mapper.MailMapper;
import kr.or.ddit.mail.service.MailService;
import kr.or.ddit.mail.vo.MailVo;

@Service
public class MailServiceImpl implements MailService {

	@Autowired
	MailMapper mailMapper;
	@Autowired
	FileMapper fileMapper;
	
	@Autowired
	AlarmService as;
	
	
	@Override
	public int emailinsert(MailVo mailVo, EmpVOList empVoList) {
		int result = 0;
		if(mailVo.getFileList()==null || mailVo.getFileList().size() <= 0) {
			result = this.mailMapper.emailinsert(mailVo);
			
			if(result>0) {
				mailVo = this.mailMapper.lastAddMailList();
				for(EmpVO empVo : empVoList.getEmpVoList()) {
					mailVo.setRecptnEmpno(empVo.getEmpno());
					this.mailMapper.receiveMail(mailVo);
					
					AlarmVO alarmVO = new AlarmVO();
					
					alarmVO.setNewEmpno(Integer.parseInt(empVo.getEmpno()));
					alarmVO.setNewCn(mailVo.getSj());
					alarmVO.setDocNo(Integer.parseInt(mailVo.getEmailNo()));
					alarmVO.setDocCategory("EMAIL");
					
					as.createAlarm(alarmVO);
					
					
				}
			}
			
			return result;
		}else {
			
			int fileNo = fileMapper.fileNo();
			
			mailVo.setFileNo(fileNo);
			int affectedRowCnt = this.mailMapper.emailinsert(mailVo);
			mailVo.setFileNo(fileNo);
			result = this.mailMapper.emailinsert(mailVo);
			
			for(FileVO fileVo : mailVo.getFileList()) {
				fileVo.setFileNo(fileNo);
				System.out.println("서비스 임플 : " + fileVo.getFileSize());
				System.out.println(fileVo.getFileOrginlNm());
				fileMapper.fileInsert(fileVo);
			}
		
			if(affectedRowCnt>0) {
				mailVo = this.mailMapper.lastAddMailList();
				for(EmpVO empVo : empVoList.getEmpVoList()) {
					mailVo.setRecptnEmpno(empVo.getEmpno());
					this.mailMapper.receiveMail(mailVo);
					
					AlarmVO alarmVO = new AlarmVO();
					
					alarmVO.setNewEmpno(Integer.parseInt(empVo.getEmpno()));
					alarmVO.setNewCn(mailVo.getSj());
					alarmVO.setDocNo(Integer.parseInt(mailVo.getEmailNo()));
					alarmVO.setDocCategory("EMAIL");
					
					as.createAlarm(alarmVO);
				}
			}
		
			return 1;
		}
	}

	
	
	@Override
	public int reporteradd(List<EmpVO> empVoList) {
		int result = 0;
		mailMapper.empList(empVoList.get(0));
		for(EmpVO empVo : empVoList) {
			result += mailMapper.reporteradd(empVo);
		}
		return result;
	}
	@Override
	public List<FileVO> fileSelect(int fileNo) {
		System.out.println(fileNo);
		return fileMapper.fileSelect(fileNo);
	}
	@Override
	public List<MailVo> receiveMaillist(Map<String, Object> map) throws Exception{
		return mailMapper.receiveMaillist(map);
	}
	public List<MailVo>  decpthMailList(Map<String, Object> map) throws Exception{
		return mailMapper.decpthMailList(map);
	}	
	
	//삭제 처리
	@Override
	public int emaildelete(String emailNo) {		
		return this.mailMapper.emaildelete(emailNo);
	}	

	//상세조회 화면
	@Override
	public  List <MailVo>  detail(String emailNo) throws Exception {
		return this.mailMapper.detail(emailNo);
	}
	
	//읽음 여부 처리를 위한 TB_RECPTN_EMAIL.CNFIRM_AT 컬럼 update
	@Override
	public int updateForReadProcessing(String emailNo) {
		return this.mailMapper.updateForReadProcessing(emailNo);
	}

	

	@Override
	public int mailTotal(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return this.mailMapper.mailTotal(map);
	}


	// 확인하지 않은 메일 개수 조회
	@Override
	public int getCnfirmAtIsNCount(String empno) {
		return mailMapper.getCnfirmAtIsNCount(empno);
	}

}
	
	
