package com.niit.electronics.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.niit.electronics.model.Category;
import com.niit.electronics.model.Product;
import com.niit.electronics.model.Supplier;
import com.niit.electronics.service.CategoryService;
import com.niit.electronics.service.ProductService;
import com.niit.electronics.service.SupplierService;

@Controller
public class ProductController {

	Path path;
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SupplierService supplierService;
	
	//adding product and image uploading using multipart
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String additemPage(ModelMap map) {
		List<Product> list=productService.getAllProduct();
    	map.addAttribute("product", list);
    	map.addAttribute("add",list);
    	/*List<Category> category=categoryService.getAllCategory();
		List<Supplier> supplier=supplierService.getAllSupplier();
		map.addAttribute("categorylist", category);
		map.addAttribute("supplierlist", supplier);*/
		return "products";
	}
    @ModelAttribute("add")
	@RequestMapping(value = "/products", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("add") Product product, ModelMap model,BindingResult result,HttpServletRequest request) {
    	/*Category cat = categoryService.getCategory(product.getCategory().getCid());
    	Supplier sup = supplierService.getSupplier(product.getSupplier().getSupplierName());
    	product.setCategory(cat);
    	product.setSupplier(sup);
    	product.setCategoryId(cat.getCategoryId());
    	product.setSupplierId(sup.getSupplierId());*/
    	
    	productService.addProduct(product);
    	MultipartFile image = product.getProductImage();
         String rootDirectory = request.getSession().getServletContext().getRealPath("/");
         path = Paths.get(rootDirectory + "/resources/images/" + product.getProductId() + ".png");
     System.out.println(path);
         if(image != null && !image.isEmpty()){
             try {
                 image.transferTo(new File(path.toString()));
             } catch (Exception ex){
                 ex.printStackTrace();
                 throw new RuntimeException("Product image saving failed", ex);
             }
         }
    	
		return "redirect:/products";
	}
   
    //deleting product from adding products page
    @RequestMapping("/delete/{productId}")
    public String deleteProduct(@PathVariable("productId") int productId) {
    	this.productService.deleteProduct(productId);
        return "redirect:/allProducts";
    }
    
    //listing all products 
   @RequestMapping(value="/allProducts")
    public String getAllProducts(ModelMap map)
    {
    	List<Product> list=productService.getAllProduct();
    	map.addAttribute("product", list);
    	return "allProducts";
    }
   
   //editing products
   @RequestMapping(value="/editProduct", method=RequestMethod.GET)
	public String editProductById(@RequestParam("productId") int productId, ModelMap model){
		Product p = productService.getProduct(productId);
		model.addAttribute("getP", p);
		List<Category> category=categoryService.getAllCategory();
		List<Supplier> supplier=supplierService.getAllSupplier();
		model.addAttribute("categorylist", category);
		model.addAttribute("supplierlist", supplier);
		
		return "editProduct";
	}
  
   @RequestMapping(value="/editproduct/{productId}",method=RequestMethod.POST)
   public String editProduct(@PathVariable("productId") int productId, Model model, @ModelAttribute("edit") Product p,HttpServletRequest request)
   {
	  productService.editProduct(p);
	  
	  MultipartFile image = p.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
      path = Paths.get(rootDirectory + "/resources/images/" + p.getProductId() + ".png");
  System.out.println(path);
      if(image != null && !image.isEmpty()){
          try {
              image.transferTo(new File(path.toString()));
          } catch (Exception ex){
              ex.printStackTrace();
              throw new RuntimeException("Product image saving failed", ex);
          }
      }
	   return "redirect:/allProducts";
   }
  
   @RequestMapping(value="/viewDetails", method=RequestMethod.GET)
	public String ProductById(@RequestParam("productId") int productId, Model model){
		Product p = productService.getProduct(productId);
		
		model.addAttribute("getP", p);
		return "viewDetails";
	}
   
}
