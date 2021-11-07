package kr.or.ddit.address.mapper;

import java.util.List;

import kr.or.ddit.address.vo.AddressVO;
import kr.or.ddit.login.vo.EmpVO;

public interface AddressMapper {
	
	List<AddressVO> addressList(AddressVO addressvo);
	
	List<AddressVO> addressShareList(EmpVO empvo);
	
	int addressinsert(AddressVO addressvo);
	
	int addressdelete(AddressVO addressvo);
	
	List<AddressVO> addressupdateselect(AddressVO addressvo);
	
	int addressupdate(AddressVO addressvo);
	
}
