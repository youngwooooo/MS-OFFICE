package kr.or.ddit.EA.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.EA.vo.DrftVO;
import kr.or.ddit.EA.vo.LineVO;
import kr.or.ddit.login.vo.EmpVO;

public interface EAMapper {

	void lineInsert(EmpVO empVo);

	void drftInsert(DrftVO drftVo);

	String lastLineNo();

	List<DrftVO> selectAll(Map<String, Object> map);

	int selectCount(Map<String, Object> map);

	DrftVO selectOne(String drftNo);

	List<LineVO> selectLine(String sanctnNo);

	List<DrftVO> selectAllWait(Map<String, Object> map);

	int selectWaitCount(Map<String, Object> map);

	int drftUpdate(Map<String, Object> map);

	List<LineVO> selectLineByDrftNo(Map<String, Object> map);

	int drftLastUpdate(Map<String, Object> map);

	int drftReject(Map<String, Object> map);

	int lineReject(Map<String, Object> map);

	int lineSpace(Map<String, Object> map);

	int vacationInsert(DrftVO drftVo);

	void vacationLastUpdate(Map<String, Object> map);

	List<DrftVO> myDrftList(String empno);

	List<DrftVO> procDrftList();

	List<DrftVO> complDrftList();

	int getEACount(String empno);

	void drftAlarm(Map<String, Object> map);

	void drftRejectAlarm(Map<String, Object> map);

}
