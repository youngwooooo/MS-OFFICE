package kr.or.ddit.bogo.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.bogo.vo.BogoVo;
import kr.or.ddit.login.vo.EmpVO;

public interface BogoMapper {

		List<BogoVo> bogoList(Map<String, Object> map);

		int bogoInsert(BogoVo bogoVo);

		// 보고 상세
		BogoVo bogoDetail(Map<String, Object> map) ;
		
		// 보고 목록
		List<BogoVo> bogoInfoList(Map<String, Object> map);

		List<BogoVo> bogoApproveMenu(Map<String, Object> map);
		
		List<BogoVo> updateSelect(Map<String, Object> map);

		List<BogoVo> bogozaSelect();
		int selectCount();

		int bogoDelete(int reprtNo);

		int bogoAdd(BogoVo bogoVo);

		int bogoTotal(Map<String, Object> map);

		int bogoUpdate(BogoVo bogoVo);

		int updateWithImage(BogoVo bogoVo);

		int selectCountBogo(String reprtNo);

	    int bogozaInsert(BogoVo bogoVo);

		int masterInsert(BogoVo bogoVo);
		
		int bogoNoapprove(BogoVo bogoVo);
		
		List<BogoVo> bogoSelect(Map<String, Object> map);
		
		List<BogoVo> bogoNotSelect(Map<String, Object> map);
		List<BogoVo> waitMenu(Map<String, Object> map);

		List<BogoVo> bogoMenuList(Map<String, Object> map);
		
		int reporteradd(EmpVO empVo);
		
		int bogoApproveAdd(BogoVo bogoVo);
		
		int empList(EmpVO empVo);
		
		BogoVo lastAddBogoList();

		List<BogoVo> bogoAllselect(Map<String, Object> map);

		public int delFileNo(int reprtListNo);


		

}
