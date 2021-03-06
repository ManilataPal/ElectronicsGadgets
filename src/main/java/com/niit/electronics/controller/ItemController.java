package com.niit.electronics.controller;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.electronics.model.Product;
import com.niit.electronics.service.ProductService;

@Controller
public class ItemController {

	//showing all the dropdwon items in header
	@RequestMapping(value="/samsungmobile")
	public String SamsungPage()
	{
		return "samsungmobile";
	}
	@RequestMapping(value="/htcmobile")
	public String HtcMobilePage()
	{
		return "htcmobile";
	}
	
	@RequestMapping(value="/micromaxmobile")
	public String MicromaxPage()
	{
		return "micromaxmobile";
	}
	@RequestMapping(value="/desktop")
	public String DesktopPage()
	{
		return "desktop";
	}
	@RequestMapping(value="/laptop")
	public String LaptopPage()
	{
		return "laptop";
	}
	@RequestMapping(value="/irons")
	public String IronsPage()
	{
		return "irons";
	}
	@RequestMapping(value="/microwave")
	public String MicrowavePage()
	{
		return "microwave";
	}
	@RequestMapping(value="/inductioncookpots")
	public String InductionPage()
	{
		return "inductioncookpots";
	}
	@RequestMapping(value="/fans")
	public String FansPage()
	{
		return "fans";
	}
	
	//displaying all the links in footer panel
	@RequestMapping(value="/aboutus")
	public String AboutusPage()
	{
		return "aboutus";
	}
	@RequestMapping(value="/faq")
	public String FaqPage()
	{
		return "faq";
	}
	@RequestMapping(value="/contactus")
	public String ContactusPage()
	{
		return "contactus";
	}
	/*//web flow
	public Product initFlow() 
	{
		return new Product();
		
		
	}*/
	@RequestMapping(value="/ShoppingCart")
	public String Order()
	{
		return "redirect:/memberShip";
	}
	/*@Autowired
	private ProductService productService;
	@RequestMapping(value="/viewDetails", method=RequestMethod.GET)
	public String ProductByName(@RequestParam("productName") int productName, Model model){
		Product p = productService.getProduct(productName);
		
		model.addAttribute("getP", p);
		return "viewDetails";
	}
	*/
}


