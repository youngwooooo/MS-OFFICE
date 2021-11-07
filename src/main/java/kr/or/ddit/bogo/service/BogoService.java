package kr.or.ddit.bogo.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.bogo.vo.BogoVo;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;

public interface BogoService {

	

	public int bogoInsert(BogoVo bogoVo) throws Exception;

	public BogoVo bogoDetail(Map<String, Object> map) ;

	// 보고 목록
	List<BogoVo> bogoInfoList(Map<String, Object> map);
	
	public int selectCount();
	
	public List<BogoVo> bogoSelect(Map<String, Object> map) throws Exception;
	
	
	public List<BogoVo> bogoNotSelect(Map<String, Object> map) throws Exception;

	public int bogoDelete(int reprtNo);

	public int bogoAdd(BogoVo bogoVo, EmpVOList empVoList);

	public List<BogoVo> bogoList(Map<String, Object> map) throws Exception;
	public List<BogoVo> bogoApproveMenu(Map<String, Object> map) throws Exception;

	public int bogoTotal(Map<String, Object> map);
	//고객정보 수정(이미지 변경 안함)
	public int bogoUpdate(BogoVo bogoVo) throws Exception;

	//고객(CUS)정보 변경(고객의 이미지 포함)
	public int updateWithImage(BogoVo bogoVo) throws Exception;

	public int selectCountBogo(String reprtNo);

	List<BogoVo> bogoMenuList(Map<String, Object> map) throws Exception;

	public int reporterAdd(List<EmpVO> empVoList);

	public int masterInsert(List<EmpVO> empVoList);
	
	public int bogoApproveAdd(BogoVo bogoVo) throws Exception;
	
	public int bogoNoapprove(BogoVo bogoVo) throws Exception;

	public List<BogoVo> updateSelect(Map<String, Object> map) throws Exception;

	public List<BogoVo> bogozaSelect() throws Exception;
	
	// 첨부파일 조회
	public List<FileVO> fileSelect(int fileNo);

	public List<BogoVo> bogoAllselect(Map<String, Object> map);

	public List<BogoVo> waitMenu(Map<String, Object> map) throws Exception;
	


}
