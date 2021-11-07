package kr.or.ddit.ehr.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.ehr.vo.Ehr2VO;
import kr.or.ddit.ehr.vo.EhrVO;
import kr.or.ddit.ehr.vo.Info2VO;
import kr.or.ddit.ehr.vo.InfoVO;
import kr.or.ddit.ehr.vo.VacationVO;
import kr.or.ddit.ehr.vo.WeekWTVO;
import kr.or.ddit.login.vo.EmpVO;

public interface EhrService {

	int insert(EhrVO ev);

	List<EhrVO> time(EhrVO ev);

	int total(EhrVO ev);

	List<EhrVO> selectList(EhrVO ehrVo);

	List<EhrVO> selectList2(EhrVO ehrVo);
	
	List<EhrVO> selectList3(EhrVO ehrVo);

	List<EhrVO> selectList4(EhrVO ehrVo);

	List<InfoVO> infoselect(InfoVO infoVo);

	int infoupdate(InfoVO infoVo);

	List<VacationVO> vacationselect(VacationVO vacationVo);
	
	List<EmpVO> vacationempno(EmpVO empVo);
	
	List<Ehr2VO> allehr2();

//	select
    List<Info2VO> degree(Info2VO info2Vo);
    
    List<Info2VO> family(Info2VO info2Vo);
   
    List<Info2VO> businesstrip(Info2VO info2Vo);
   
    List<Info2VO> career(Info2VO info2Vo);
   
    List<Info2VO> education(Info2VO info2Vo);
   
    List<Info2VO> issued(Info2VO info2Vo);
   
    List<Info2VO> jobresponsibilities(Info2VO info2Vo);
   
    List<Info2VO> languagestudy(Info2VO info2Vo);
   
    List<Info2VO> militaryservice(Info2VO info2Vo);
   
    List<Info2VO> performanceevaluation(Info2VO info2Vo);
   
    List<Info2VO> rewardandpunishment(Info2VO info2Vo);
   
    List<Info2VO> qualification(Info2VO info2Vo);
    
    List<VacationVO> vacationVcatnDe(VacationVO vacationVo);
    
//    insert
    int degreeinsert(Info2VO info2Vo);
    
    int familyinsert(Info2VO info2Vo);
    
    int btinsert(Info2VO info2Vo);
    
    int careerinsert(Info2VO info2Vo);
    
    int educationinsert(Info2VO info2Vo);
    
    int issuedinsert(Info2VO info2Vo);
    
    int jrinsert(Info2VO info2Vo);
    
    int languagestudyinsert(Info2VO info2Vo);
    
    int militaryinsert(Info2VO info2Vo);
    
    int peinsert(Info2VO info2Vo);
    
    int rapinsert(Info2VO info2Vo);
    
    int qualificationinsert(Info2VO info2Vo);

//  update
    int businesstripupdate(Info2VO info2Vo);

    int careerupdate(Info2VO info2Vo);
    
    int degreeupdate(Info2VO info2Vo);
    
    int educationupdate(Info2VO info2Vo);
    
    int familyupdate(Info2VO info2Vo);
    
    int issuedupdate(Info2VO info2Vo);
    
    int jobresponsibilitiesupdate(Info2VO info2Vo);
    
    int languagestudyupdate(Info2VO info2Vo);
    
    int performanceevaluationupdate(Info2VO info2Vo);
    
    int qualificationupdate(Info2VO info2Vo);
    
    int rewardandpunishmentupdate(Info2VO info2Vo);

	int bodyupdate(InfoVO infoVo);

	int militaryserviceupdate(Info2VO info2Vo);
	
	int businesstripdelete(Info2VO info2Vo);
	
	int careerdelete(Info2VO info2Vo);
	
	int degreedelete(Info2VO info2Vo);
	
	int educationdelete(Info2VO info2Vo);
	
	int familydelete(Info2VO info2Vo);
	
	int issueddelete(Info2VO info2Vo);
	
	int jobresponsibilitiesdelete(Info2VO info2Vo);
	
	int languagestudydelete(Info2VO info2Vo);
	
	int militaryservicedelete(Info2VO info2Vo);

	int performanceevaluationdelete(Info2VO info2Vo);

	int qualificationdelete(Info2VO info2Vo);
	
	int rewardandpunishmentdelete(Info2VO info2Vo);

	WeekWTVO sumWeekWorkTime(Map<String, String> dateMap);

	List<VacationVO> vacationVcatnDeing(VacationVO vacationVo);


}
