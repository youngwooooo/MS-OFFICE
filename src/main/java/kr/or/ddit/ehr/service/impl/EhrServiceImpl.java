package kr.or.ddit.ehr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.ehr.mapper.EhrMapper;
import kr.or.ddit.ehr.service.EhrService;
import kr.or.ddit.ehr.vo.Ehr2VO;
import kr.or.ddit.ehr.vo.EhrVO;
import kr.or.ddit.ehr.vo.Info2VO;
import kr.or.ddit.ehr.vo.InfoVO;
import kr.or.ddit.ehr.vo.VacationVO;
import kr.or.ddit.ehr.vo.WeekWTVO;
import kr.or.ddit.login.vo.EmpVO;

@Service
public class EhrServiceImpl implements EhrService{

	@Autowired
	private EhrMapper ehrMapper;
	
	@Override
	public int insert(EhrVO ev) {
		return ehrMapper.insert(ev);
	}
	
	@Override
	public List<EhrVO> time(EhrVO ev) {
		try {
			String empno = ev.getEmpNo();
		}catch(NumberFormatException ex) {
			return (List<EhrVO>) null;
		}
		List<EhrVO> ev2 = this.ehrMapper.select(ev);
		System.out.println("서비스에서 아이디 받았나 ? : " + ev.getEmpNo());
		return ev2;
	}

	@Override
	public int total(EhrVO ev) {
		try {
			String empno = ev.getEmpNo();
		}catch(NumberFormatException ex) {
			return 0;
		}
		int ev2 = this.ehrMapper.total(ev);
		System.out.println("서비스에서 아이디 받았나 ? : " + ev.getEmpNo());
		return ev2;
	}
	
	@Override
	public List<EhrVO> selectList(EhrVO ehrVo){
		List<EhrVO> ev2 = this.ehrMapper.selectList(ehrVo);
		return ev2;
	}

	@Override
	public List<EhrVO> selectList2(EhrVO ehrVo) {
		return this.ehrMapper.selectList2(ehrVo);
	}

	@Override
	public List<EhrVO> selectList3(EhrVO ehrVo) {
		return this.ehrMapper.selectList3(ehrVo);
	}
	
	@Override
	public List<EhrVO> selectList4(EhrVO ehrVo) {
		return this.ehrMapper.selectList4(ehrVo);
	}
	
	@Override
	public List<InfoVO> infoselect(InfoVO infoVo) {
		return this.ehrMapper.infoselect(infoVo);
	}
	
	@Override
	public int infoupdate(InfoVO infoVo) {
		System.out.println("infovo1111 : " + infoVo);
		return this.ehrMapper.infoupdate(infoVo);
	}
	
	@Override
	public int bodyupdate(InfoVO infoVo) {
		System.out.println("infovo1111 : " + infoVo);
		return this.ehrMapper.bodyupdate(infoVo);
	}
	
	@Override
	public List<Info2VO> degree(Info2VO info2Vo){
		return this.ehrMapper.degree(info2Vo);
	
}
	@Override
	public List<Info2VO> family(Info2VO info2Vo){
	return this.ehrMapper.family(info2Vo);
}
	@Override
	public List<Info2VO> businesstrip(Info2VO info2Vo){
	return this.ehrMapper.businesstrip(info2Vo);
}
	@Override
	public List<Info2VO> career(Info2VO info2Vo){
	return this.ehrMapper.career(info2Vo);
}
	@Override
	public List<Info2VO> education(Info2VO info2Vo){
	return this.ehrMapper.education(info2Vo);
}
	@Override
	public List<Info2VO> issued(Info2VO info2Vo){
	return this.ehrMapper.issued(info2Vo);
}
	@Override
	public List<Info2VO> jobresponsibilities(Info2VO info2Vo){
	return this.ehrMapper.jobresponsibilities(info2Vo);
}
	@Override
	public List<Info2VO> languagestudy(Info2VO info2Vo){
	return this.ehrMapper.languagestudy(info2Vo);
}
	@Override
	public List<Info2VO> militaryservice(Info2VO info2Vo){
	return this.ehrMapper.militaryservice(info2Vo);
}
	@Override
	public List<Info2VO> performanceevaluation(Info2VO info2Vo){
	return this.ehrMapper.performanceevaluation(info2Vo);
}
	@Override
	public List<Info2VO> rewardandpunishment(Info2VO info2Vo){
	return this.ehrMapper.rewardandpunishment(info2Vo);
}
	@Override
	public List<Info2VO> qualification(Info2VO info2Vo){
	return this.ehrMapper.qualification(info2Vo);
}
	@Override
	public int degreeinsert(Info2VO info2Vo){
		return this.ehrMapper.degreeinsert(info2Vo);
	}
	@Override
public int familyinsert(Info2VO info2Vo) {
	return this.ehrMapper.familyinsert(info2Vo);
}
	@Override
public int btinsert(Info2VO info2Vo) {
	return this.ehrMapper.btinsert(info2Vo);
}
	@Override
public int careerinsert(Info2VO info2Vo) {
	return this.ehrMapper.careerinsert(info2Vo);
}
	@Override
public int educationinsert(Info2VO info2Vo) {
	return this.ehrMapper.educationinsert(info2Vo);
}
	@Override
public int issuedinsert(Info2VO info2Vo) {
	return this.ehrMapper.issuedinsert(info2Vo);
}
	@Override
public int jrinsert(Info2VO info2Vo) {
	return this.ehrMapper.jrinsert(info2Vo);
}
	@Override
public int languagestudyinsert(Info2VO info2Vo) {
	return this.ehrMapper.languagestudyinsert(info2Vo);
}
	@Override
public int militaryinsert(Info2VO info2Vo) {
	return this.ehrMapper.militaryinsert(info2Vo);
}
	@Override
public int peinsert(Info2VO info2Vo) {
	return this.ehrMapper.peinsert(info2Vo);
}
	@Override
public int rapinsert(Info2VO info2Vo) {
	return this.ehrMapper.rapinsert(info2Vo);
}
	@Override
public int qualificationinsert(Info2VO info2Vo) {
	return this.ehrMapper.qualificationinsert(info2Vo);
}

	@Override
	public int businesstripupdate(Info2VO info2Vo) {
		return this.ehrMapper.businesstripupdate(info2Vo);
	}

	@Override
	public int careerupdate(Info2VO info2Vo) {
		return this.ehrMapper.careerupdate(info2Vo);
	}

	@Override
	public int degreeupdate(Info2VO info2Vo) {
		return this.ehrMapper.degreeupdate(info2Vo);
	}

	@Override
	public int educationupdate(Info2VO info2Vo) {
		return this.ehrMapper.educationupdate(info2Vo);
	}

	@Override
	public int familyupdate(Info2VO info2Vo) {
		System.out.println("서비스에서 받았다 : " + info2Vo);
		return this.ehrMapper.familyupdate(info2Vo);
	}

	@Override
	public int issuedupdate(Info2VO info2Vo){
		return this.ehrMapper.issuedupdate(info2Vo);
	}

	@Override
	public int jobresponsibilitiesupdate(Info2VO info2Vo){
		return this.ehrMapper.jobresponsibilitiesupdate(info2Vo);
	}

	@Override
	public int languagestudyupdate(Info2VO info2Vo){
		return this.ehrMapper.languagestudyupdate(info2Vo);
	}

	@Override
	public int performanceevaluationupdate(Info2VO info2Vo){
		return this.ehrMapper.performanceevaluationupdate(info2Vo);
	}

	@Override
	public int qualificationupdate(Info2VO info2Vo){
		return this.ehrMapper.qualificationupdate(info2Vo);
	}

	@Override
	public int rewardandpunishmentupdate(Info2VO info2Vo){
		return this.ehrMapper.rewardandpunishmentupdate(info2Vo);
	}

	@Override
	public int militaryserviceupdate(Info2VO info2Vo){
		return this.ehrMapper.militaryserviceupdate(info2Vo);
	}
	
	@Override
	public int businesstripdelete(Info2VO info2Vo){
		return this.ehrMapper.businesstripdelete(info2Vo);
	}
	
	@Override
	public int careerdelete(Info2VO info2Vo){
		return this.ehrMapper.careerdelete(info2Vo);
	}
	
	@Override
	public int degreedelete(Info2VO info2Vo){
		return this.ehrMapper.degreedelete(info2Vo);
	}
	
	@Override
	public int educationdelete(Info2VO info2Vo){
		return this.ehrMapper.educationdelete(info2Vo);
	}
	
	@Override
	public int familydelete(Info2VO info2Vo){
		return this.ehrMapper.familydelete(info2Vo);
	}
	
	@Override
	public int issueddelete(Info2VO info2Vo){
		return this.ehrMapper.issueddelete(info2Vo);
	}
	
	@Override
	public int jobresponsibilitiesdelete(Info2VO info2Vo){
		return this.ehrMapper.jobresponsibilitiesdelete(info2Vo);
	}
	
	@Override
	public int languagestudydelete(Info2VO info2Vo){
		return this.ehrMapper.languagestudydelete(info2Vo);
	}
	
	@Override
	public int militaryservicedelete(Info2VO info2Vo){
		return this.ehrMapper.militaryservicedelete(info2Vo);
	}
	
	@Override
	public int performanceevaluationdelete(Info2VO info2Vo){
		return this.ehrMapper.performanceevaluationdelete(info2Vo);
	}
	
	@Override
	public int qualificationdelete(Info2VO info2Vo){
		return this.ehrMapper.qualificationdelete(info2Vo);
	}
	
	@Override
	public int rewardandpunishmentdelete(Info2VO info2Vo){
		return this.ehrMapper.rewardandpunishmentdelete(info2Vo);
	}

	@Override
	public List<VacationVO> vacationselect(VacationVO vacationVo) {
		return this.ehrMapper.vacationselect(vacationVo);
	}
	
	@Override
	public List<EmpVO> vacationempno(EmpVO empVo){
		return this.ehrMapper.vacationempno(empVo);
	}

	@Override
	public List<VacationVO> vacationVcatnDe(VacationVO vacationVo) {
		return this.ehrMapper.vacationVcatnDe(vacationVo);
	}

	@Override
	public List<VacationVO> vacationVcatnDeing(VacationVO vacationVo) {
		return this.ehrMapper.vacationVcatnDeing(vacationVo);
	}

	@Override
	public WeekWTVO sumWeekWorkTime(Map<String, String> dateMap) {
		
		return this.ehrMapper.sumWeekWorkTime(dateMap);
	}

	@Override
	public List<Ehr2VO> allehr2() {
		
		return this.ehrMapper.allehr2();
	}
	
}