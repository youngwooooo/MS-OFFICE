package kr.or.ddit.messenger.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.messenger.mapper.MessengerMapper;
import kr.or.ddit.messenger.service.MessengerService;

@Service
public class MessengerServiceImpl implements MessengerService{

	@Autowired
	private MessengerMapper messengerMapper;

	@Override
	public List<EmpVO> search(String search) {
		return messengerMapper.search(search);
	}

	@Override
	public int invite(List<EmpVO> empVoList) {
		int result = 0;
		//채팅방 생성
		messengerMapper.createRoom(empVoList.get(0));
		for(EmpVO empVo : empVoList) {
			//채팅방에 사원 넣기
			result += messengerMapper.invite(empVo);
		}
		return result;
	}

	@Override
	public String nextRoom() {
		return messengerMapper.nextRoom();
	}

	@Override
	public int exitRoom(EmpVO empVo) {
		return messengerMapper.exitRoom(empVo);
	}

	@Override
	public int getMessageCount(String empno) {
		return messengerMapper.getMessageCount(empno);
	}
	
}
