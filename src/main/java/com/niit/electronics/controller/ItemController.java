package com.niit.electronics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemController {

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
	/*
	@RequestMapping(value="/allProducts")
	public String AllProductsPage(){
		return "allProducts";
	} */
	
}

