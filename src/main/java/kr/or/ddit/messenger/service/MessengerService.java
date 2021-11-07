package kr.or.ddit.messenger.service;

import java.util.List;

import kr.or.ddit.login.vo.EmpVO;

public interface MessengerService {

	List<EmpVO> search(String search);

	int invite(List<EmpVO> empVoList);

	String nextRoom();

	int exitRoom(EmpVO empVo);

	int getMessageCount(String empno);

}
