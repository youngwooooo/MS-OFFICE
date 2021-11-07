package kr.or.ddit.mail.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;
import kr.or.ddit.mail.vo.MailVo;

public interface MailService {

	public int emailinsert(MailVo mailVo, EmpVOList empVoList);

	public int reporteradd(List<EmpVO> empVoList);

	public List<FileVO> fileSelect(int fileNo);

	public List<MailVo> receiveMaillist(Map<String, Object> map) throws Exception;
	
	public List<MailVo>  decpthMailList(Map<String, Object> map) throws Exception;	

	//삭제 처리
	public int emaildelete(String emailNo);

	//상세조회 화면
	public  List <MailVo>  detail(String emailNo) throws Exception;
	
	//읽음 여부 처리를 위한 TB_RECPTN_EMAIL.CNFIRM_AT 컬럼 update
	public int updateForReadProcessing(String emailNo);

	public int mailTotal(Map<String, Object> map);
	
	// 확인하지 않은 메일 개수 조회
	public int getCnfirmAtIsNCount(String empno);
}
