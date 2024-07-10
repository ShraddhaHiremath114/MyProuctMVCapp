package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.entity.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String home( Model m)
	{
		List<Product> products=productDao.getProducts();
		m.addAttribute("products", products);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addproduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "add_product";
	}
	
	@RequestMapping(value="/handle-product", method= RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
//		System.out.println(product);
		this.productDao.createProduct(product);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/delete-product/{id}")
	public RedirectView deleteHandler(@PathVariable("id") int id,HttpServletRequest request) {
		this.productDao.deleteProduct(id);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/update/{id}")
	public String updateHendler(@PathVariable("id") int id , Model m) {
		Product p=this.productDao.getProduct(id);
		
		m.addAttribute("product", p);
		return "update-form";
	}
}
