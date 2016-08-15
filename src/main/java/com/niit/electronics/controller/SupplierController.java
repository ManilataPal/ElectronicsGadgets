package com.niit.electronics.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.electronics.model.Supplier;
import com.niit.electronics.service.SupplierService;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierService supplierService;

	//adding supplier
	@RequestMapping(value = "/supplier", method=RequestMethod.GET)
	public String addSupplierPage(ModelMap map){
		map.addAttribute("allSupplier", supplierService.getAllSupplier());
		return "supplier";
	}
	
	@ModelAttribute("add")
	@RequestMapping(value="/supplier", method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("add") Supplier supplier, ModelMap model, BindingResult result,HttpServletRequest request){
		supplierService.addSupplier(supplier);
		return "redirect:/supplier";
	}
	
	//deleting supplier from the list of suppliers
	@RequestMapping("/deleteSup/{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId")int supplierId){
		this.supplierService.deleteSupplier(supplierId);
		return "redirect:/supplier";
		
	}
	
	//displaying the list of suppliers
	@RequestMapping(value="/supplier")
	public String getAllSupplier(ModelMap map){
		List<Supplier> list=supplierService.getAllSupplier();
		map.addAttribute("supplier", list);
		return "supplier";
		
	}
	
	//editing the list of suppliers
	@RequestMapping(value="/editSupplier",method=RequestMethod.GET)
	public String  edeitSupplierByID(@RequestParam("supplierId") int supplierId, Model model){
		Supplier s = supplierService.getSupplier(supplierId);
		model.addAttribute("getS", s);
		return "editSupplier";
	}
	@RequestMapping(value="/editSupplier/{supplierId}",method=RequestMethod.POST)
	public String editSupplier(@PathVariable("supplierId") int supplierId, Model model,@ModelAttribute("edit") Supplier supplier){
		supplierService.editSupplier(supplier);
		return "redirect:/supplier";
	}
	

}
