package com.niit.electronics.dao;

import java.util.List;

import com.niit.electronics.model.Category;
import com.niit.electronics.model.Supplier;

public interface SupplierDAO {
	public void addSupplier(Supplier supplier);
	public void editSupplier(Supplier supplier);
	public void deleteSupplier(int sid);
	public Supplier getSupplier(int sid);
	public List<Supplier> getAllSupplier();
	
	
	

}
