package com.mu.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.mu.common.MUException;
import com.mu.model.Merchant;
import com.mu.model.MerchantType;

public interface ShoppingDao extends GenericDao<Merchant, Long> {

	Merchant saveMerchant(Merchant merchant);

	List<Merchant> getAllMerchant();

	Merchant getMerchantById(Long merchantId) throws MUException;

	Merchant getMerchantByName(String merchantName) throws MUException;

	MerchantType saveMerchantType(MerchantType merchantType);

	List<MerchantType> getAllMerchantTypes();

	MerchantType getMerchantTypeById(Long merchantTypeId) throws MUException;

	MerchantType getMerchantTypeByName(String merchantTypeName)
			throws MUException;

	List<Merchant> getMerchantByType(String merchantType);

	List<Merchant> getMerchantByTypes(List<String> merchantTypes);
}
