package com.niit.electronics.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;


import com.niit.electronics.dao.SupplierDAO;
import com.niit.electronics.model.Supplier;
import com.niit.electronics.service.SupplierService;

@Service
@Transactional
@EnableTransactionManagement

public class SupplieServiceImpl implements SupplierService {

	@Autowired
	private SupplierDAO supplierDAO;
	public void addSupplier(Supplier supplier) {
		supplierDAO.addSupplier(supplier);
		
	}

	public void editSupplier(Supplier supplier) {
		supplierDAO.editSupplier(supplier);
		
	}

	public void deleteSupplier(int sid) {
		supplierDAO.deleteSupplier(sid);
		
	}

	public Supplier getSupplier(int supplierId) {
		return supplierDAO.getSupplier(supplierId);
	}

	public List<Supplier> getAllSupplier() {
		return supplierDAO.getAllSupplier();
	}
	

}
