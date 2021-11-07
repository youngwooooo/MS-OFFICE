package kr.or.ddit.bogo.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.or.ddit.bogo.mapper.BogoMapper;
import kr.or.ddit.bogo.service.BogoService;
import kr.or.ddit.bogo.vo.BogoVo;
import kr.or.ddit.file.mapper.FileMapper;
import kr.or.ddit.file.vo.FileVO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.login.vo.EmpVOList;

@Service
public class BogoServiceImpl implements BogoService {
	
	@Autowired
	private BogoMapper bogomapper;
	@Autowired
	private FileMapper fileMapper;
	
	@Override
	public List<BogoVo> bogoList(Map<String, Object> map) throws Exception  {
		return this.bogomapper.bogoList(map);

	}
	@Override
	public List<BogoVo> bogozaSelect() throws Exception  {
		return this.bogomapper.bogozaSelect();
		
	}
	@Override
	public List<BogoVo> updateSelect(Map<String, Object> map) throws Exception  {
		return this.bogomapper.updateSelect(map);
	}
	
	@Override
	public List<BogoVo> bogoMenuList(Map<String, Object> map) throws Exception  {
		return this.bogomapper.bogoMenuList(map);
		
	}
	@Override
	public List<BogoVo> bogoApproveMenu(Map<String, Object> map) throws Exception  {
		return this.bogomapper.bogoApproveMenu(map);
		
	}

	@Override
	public int bogoInsert(BogoVo bogoVo) throws Exception {
		System.out.println("공지 작성");
		System.out.println("파일리스트 : " + bogoVo.getFileList());
		// 첨부파일 없으면 종료
		int result = 0;
		if(bogoVo.getFileList()==null || bogoVo.getFileList().size() <= 0) {
			result = this.bogomapper.bogoInsert(bogoVo);
			return result;
		}else {
			int fileNo = fileMapper.fileNo();
			bogoVo.setFileNo(fileNo);
			result = this.bogomapper.bogoInsert(bogoVo);
			for(FileVO fileVo : bogoVo.getFileList()) {
				fileVo.setFileNo(fileNo);
				System.out.println("서비스 임플 : " + fileVo.getFileSize());
				System.out.println(fileVo.getFileOrginlNm());
				fileMapper.fileInsert(fileVo);
			}
			return result;
		}
		
	}

	
	@Override
	public int bogoAdd(BogoVo bogoVo, EmpVOList empVoList) {
		int affectedRowCnt = this.bogomapper.bogoAdd(bogoVo);
		
		if(affectedRowCnt>0) {
			bogoVo = this.bogomapper.lastAddBogoList();
			for(EmpVO empVo : empVoList.getEmpVoList()) {
				bogoVo.setReportrEmpno(Integer.parseInt(empVo.getEmpno()));
				this.bogomapper.bogozaInsert(bogoVo);
			}
			for(EmpVO empVo2 : empVoList.getEmpVoList2()) {
				bogoVo.setRspnberEmpno(Integer.parseInt(empVo2.getEmpno()));
				this.bogomapper.masterInsert(bogoVo);
			}
		}
		
		return 1;
	}
	
	@Override
	public int reporterAdd(List<EmpVO> empVoList) {
		int result = 0;
		bogomapper.empList(empVoList.get(0));
		for(EmpVO empVo : empVoList) {
			//보고자추가에 사원넣기
			result += bogomapper.reporteradd(empVo);
		}
		return result;
	}

	// 보고 상세
	@Override
	public BogoVo bogoDetail(Map<String, Object> map) {
		return this.bogomapper.bogoDetail(map);

	}

	// 보고 목록
	@Override
	public List<BogoVo> bogoInfoList(Map<String, Object> map) {
		return this.bogomapper.bogoInfoList(map);

	}
	
	@Override
	public int selectCount(){ 
		return this.bogomapper.selectCount();
	

	}

	@Override
	public int bogoDelete(int reprtNo) {
		
		return this.bogomapper.bogoDelete(reprtNo);
	}
	@Override
	public int bogoTotal(Map<String, Object> map) {
		return this.bogomapper.bogoTotal(map);
	}

	@Override
	public int bogoUpdate(BogoVo bogoVo) throws Exception {
		int reprtListNo = bogoVo.getReprtListNo();
		System.out.println("boardNo" + reprtListNo);
		int delFileNo = bogomapper.delFileNo(reprtListNo);
		
		fileMapper.fileAllDelete(delFileNo);
		System.out.println("delFileNo" + delFileNo);
		
		int updateResult = bogomapper.bogoUpdate(bogoVo);
		int result = 0;
		
		if(updateResult == 1 && bogoVo.getFileList() != null && bogoVo.getFileList().size() > 0) {
			int fileNo = fileMapper.fileNo();
			System.out.println("fileNo" + fileNo);
			bogoVo.setFileNo(fileNo);
			result = this.bogomapper.bogoUpdate(bogoVo);
			for(FileVO fileVo : bogoVo.getFileList()) {
				fileVo.setFileNo(fileNo);
				System.out.println(fileVo.getFileOrginlNm());
				fileMapper.fileInsert(fileVo);
			}
			return result;
		}else {
			result = this.bogomapper.bogoUpdate(bogoVo);
			return result;
		}
	}

	@Override
	public int updateWithImage(BogoVo bogoVo) throws Exception {
		// TODO Auto-generated method stub
		return this.bogomapper.updateWithImage(bogoVo);
	}
	@Override
	public int selectCountBogo(String reprtNo) {
		return this.bogomapper.selectCountBogo(reprtNo);
	}
	
	@Override
	public int masterInsert(List<EmpVO> empVoList) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int  bogoApproveAdd(BogoVo bogoVo) throws Exception{
		
		
		return this.bogomapper.bogoApproveAdd(bogoVo);
	}
	@Override
	public int bogoNoapprove(BogoVo bogoVo) throws Exception{
		
		
		
		return this.bogomapper.bogoNoapprove(bogoVo);
	}
	@Override
	public List<BogoVo> bogoSelect(Map<String, Object> map) throws Exception{
		
		return this.bogomapper.bogoSelect(map);
	}
	@Override
	public List<BogoVo> bogoNotSelect(Map<String, Object> map) throws Exception{
		
		return this.bogomapper.bogoNotSelect(map);
	}
	@Override
	public List<BogoVo> waitMenu(Map<String, Object> map) throws Exception{
		
		return this.bogomapper.bogoNotSelect(map);
	}
	
	@Override
	public List<FileVO> fileSelect(int fileNo) {
		System.out.println(fileNo);
		return fileMapper.fileSelect(fileNo);
	}
	@Override
	public List<BogoVo> bogoAllselect(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return this.bogomapper.bogoAllselect(map);
	}
		
	
		
	}
	
	
