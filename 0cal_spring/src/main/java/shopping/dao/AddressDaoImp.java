package shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shopping.dto.AddressDTO;

public class AddressDaoImp implements AddressDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public AddressDaoImp() {
		
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	
	// 배송지 수정
	@Override
	public void updateAddress(AddressDTO addressDTO) {
		sqlSession.update("shopping.updateAddress", addressDTO);
	}

	// 배송지 삭제
	@Override
	public void deleteAddress(int del_key) {
		sqlSession.delete("shopping.deleteAddress", del_key);
	}

	// 회원의 배송지 리스트 불러오기
	@Override
	public List<AddressDTO> selectAllAddresses(String id) {
		return sqlSession.selectList("shopping.selectAllAddresses", id);
	}

	// 배송지 추가
	@Override
	public void insertAddress(AddressDTO addressDTO) {
		sqlSession.insert("shopping.insertAddress", addressDTO);
	}

}
