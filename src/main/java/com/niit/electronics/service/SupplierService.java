package com.niit.electronics.service;

import java.util.List;

import com.niit.electronics.model.Supplier;

public interface SupplierService {
	
	public void addSupplier(Supplier supplier);
	public void editSupplier(Supplier supplier);
	public void deleteSupplier(int sid);
	public Supplier getSupplier(int sid);
	public List<Supplier> getAllSupplier();
	
	

}
