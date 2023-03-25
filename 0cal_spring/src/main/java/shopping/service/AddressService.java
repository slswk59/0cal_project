package shopping.service;

import java.util.List;

import shopping.dto.AddressDTO;

public interface AddressService {
	
	// 배송지 수정
	public void updateAddressProcess(AddressDTO addressDTO);

	// 배송지 삭제
	public void deleteAddressProcess(int del_key);

	// 회원의 배송지 리스트 불러오기
	public List<AddressDTO> selectAllAddressesProcess(String id);

	// 배송지 추가
	public void insertAddressProcess(AddressDTO addressDTO);


}
