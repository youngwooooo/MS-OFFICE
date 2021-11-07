package kr.or.ddit.EA.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.EA.vo.DrftVO;
import kr.or.ddit.EA.vo.LineVO;
import kr.or.ddit.login.vo.EmpVOList;

public interface EAService {

	int insert(EmpVOList empVoList, DrftVO drftVo);

	List<DrftVO> selectAll(Map<String, Object> map);

	int selectCount(Map<String, Object> map);

	DrftVO selectOne(String drftNo);

	List<LineVO> selectLine(String sanctnNo);

	List<DrftVO> selectAllWait(Map<String, Object> map);

	int selectWaitCount(Map<String, Object> map);

	int drftUpdate(Map<String, Object> map);

	int drftReject(Map<String, Object> map);

	int insertVacation(EmpVOList empVoList, DrftVO drftVo);

	List<DrftVO> myDrftList(String empno);

	List<DrftVO> procDrftList();

	List<DrftVO> complDrftList();

	int getEACount(String empno);

}
