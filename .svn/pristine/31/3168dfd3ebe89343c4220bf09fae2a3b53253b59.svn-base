package kr.or.ddit.address.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.address.mapper.AddressMapper;
import kr.or.ddit.address.service.service.AddressService;
import kr.or.ddit.address.vo.AddressVO;
import kr.or.ddit.ehr.vo.Info2VO;
import kr.or.ddit.login.vo.EmpVO;
import kr.or.ddit.notice.vo.NoticeVO;

@Service
public class AddressServiceimpl implements AddressService{
	@Autowired
	AddressMapper am;
	
	
	@Override
	public List<AddressVO> addressList(AddressVO addressvo) {
		return this.am.addressList(addressvo);
	}
	@Override
	public int addressinsert(AddressVO addressvo) {
		System.out.println("addressvo : " + addressvo);
		return this.am.addressinsert(addressvo);
	}
	
	@Override
	public List<AddressVO> addressShareList(EmpVO empvo){
		return this.am.addressShareList(empvo);
	}
	
	@Override
	public int addressdelete(AddressVO addressvo) {
		return this.am.addressdelete(addressvo);
	}
	
	@Override
	public List<AddressVO> addressupdateselect(AddressVO addressvo){
		return this.am.addressupdateselect(addressvo);
	}
	
	@Override
	public int addressupdate(AddressVO addressvo){
		return this.am.addressupdate(addressvo);
	}
}
