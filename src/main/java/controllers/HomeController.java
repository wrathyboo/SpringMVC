package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ProductDAO;
import entities.Game;
import functions.utils;


@Controller
public class HomeController {
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping(value= {"/","home"})
	public String HomePage( Model model) {
		Boolean auth = utils.checkAuthen();
		List<Game> list = productDAO.getProductsByRates(7);
		model.addAttribute("auth",auth);
		model.addAttribute("list",list);
		return "index";
	}
	
    @RequestMapping("cart")
    public String cartPage(  Model model) {
    	 Boolean auth = utils.checkAuthen();
//    	if (authentication instanceof AnonymousAuthenticationToken) {
//    		auth = false;
//    	}
//    	else auth = true;
    	
    	model.addAttribute("auth",auth);
    	return "cart";
    }

}