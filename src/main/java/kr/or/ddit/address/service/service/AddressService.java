package kr.or.ddit.address.service.service;

import java.util.List;

import kr.or.ddit.address.vo.AddressVO;
import kr.or.ddit.login.vo.EmpVO;

public interface AddressService {

	List<AddressVO> addressList(AddressVO addressvo);

	int addressinsert(AddressVO addressvo);

	List<AddressVO> addressShareList(EmpVO empvo);

	int addressdelete(AddressVO addressvo);

	int addressupdate(AddressVO addressvo);

	List<AddressVO> addressupdateselect(AddressVO addressvo);
}
