package kr.or.ddit.mail.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.bogo.vo.BogoVo;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;
import kr.or.ddit.mail.vo.MailVo;

public interface MailMapper {	
	
	public int mailTotal(Map<String, Object> map);

	int empList(EmpVO empVo);	
	
	public int  emailinsert(MailVo mailVo);

	public MailVo lastAddMailList();

	public int receiveMail(MailVo mailVo);
	
	public List<MailVo> receiveMaillist(Map<String, Object> map) throws Exception;

	public List<MailVo> decpthMailList(Map<String, Object> map) throws Exception;

	public int reporteradd(EmpVO empVo);	
	
	//삭제 처리 
	public int emaildelete(String emailNo);
	
	//상세조회 화면
	public List <MailVo> detail(String emailNo) throws Exception;
	
	//읽음 여부 처리를 위한 TB_RECPTN_EMAIL.CNFIRM_AT 컬럼 update
	public int updateForReadProcessing(String emailNo);
	
	// 확인하지 않은 메일 개수 조회
	int getCnfirmAtIsNCount(String empno);
}
