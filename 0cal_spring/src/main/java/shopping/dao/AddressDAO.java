package shopping.dao;

import java.util.List;

import shopping.dto.AddressDTO;

public interface AddressDAO {
	
	// 배송지 수정
	public void updateAddress(AddressDTO addressDTO);

	// 배송지 삭제
	public void deleteAddress(int del_key);

	// 회원의 배송지 리스트 불러오기
	public List<AddressDTO> selectAllAddresses(String id);

	// 배송지 추가
	public void insertAddress(AddressDTO addressDTO);

}
