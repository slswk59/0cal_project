package shopping.service;

import java.util.List;

import shopping.dao.AddressDAO;
import shopping.dao.ProductDAO;
import shopping.dto.AddressDTO;

public class AddressServiceImp implements AddressService {
	
	private AddressDAO addressDao;
	
	public AddressServiceImp() {
		
	}
	
	public void setAddressDao(AddressDAO addressDao) {
		this.addressDao = addressDao;
	}
	
	@Override
	public void updateAddressProcess(AddressDTO addressDTO) {
		addressDao.updateAddress(addressDTO);
	}

	@Override
	public void deleteAddressProcess(int del_key) {
		addressDao.deleteAddress(del_key);
	}

	@Override
	public List<AddressDTO> selectAllAddressesProcess(String id) {
		return addressDao.selectAllAddresses(id);
	}

	@Override
	public void insertAddressProcess(AddressDTO addressDTO) {
		addressDao.insertAddress(addressDTO);
	}

}
