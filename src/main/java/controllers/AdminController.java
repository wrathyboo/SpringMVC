package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.ProductDAO;
import entities.Game;
import entities.CustomUserDetails;


@Controller
public class AdminController {
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("admin")
	public String testadmin( Model model) {
		CustomUserDetails user =  (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("user", user);
		return "admin/dashboard";
	}
	@RequestMapping("admin/apps")
	public String productManager(@RequestParam(value = "page", required = false) Integer page,
                                 @RequestParam(value = "sortField", required = false) String sort, Model model) {
		CustomUserDetails user =  (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Long total = productDAO.getTotalProducts();
		Long lastPage = productDAO.getTotalProducts() / 16;
		if (sort == null) {
			sort = "noArgument";
		}
		System.out.println("Current order: "+sort);
		int pagStart = 0;
		int pagEnd = pagStart + 4;
		if (page == null) {
			page = 1;
		}
		if (page >= 4) {
			pagStart = page - 3;
			pagEnd = pagStart + 4;
		}
		if (pagEnd > lastPage) {
			pagEnd = lastPage.intValue();
			pagStart = page - 5;
		}
		System.out.println("Page: " + page + 1);
		Integer currentPage = page;
		String currentOrder = sort;
		
		List<Game> list = productDAO.getProducts(page, 16, sort);
		
		
		
		model.addAttribute("pagStart", pagStart);
		model.addAttribute("pagEnd", pagEnd);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("currentOrder", currentOrder);
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("list",list);
		model.addAttribute("user", user);
		model.addAttribute("total", total);
		return "admin/table-app";
	}
	@RequestMapping("destroy")
	public String destroy(@RequestParam("appid") Integer appid,
                          Model model) {
		if(productDAO.destroy(appid)) {
			model.addAttribute("success", "Delete successfully!");
			return "redirect:admin/apps";
		}else {
			model.addAttribute("err", "Delete failed!");
			return "redirect:admin/apps";
		}
	}
	@RequestMapping("admin/search")
	public String search (@RequestParam("keywords")String keywords, Model model) {
		List<Game> list = productDAO.searchByName(keywords);
		model.addAttribute("list", list);
		return "admin/table-app";
	}
	
	@RequestMapping("admin/initAdd")
	public String addPage() {
		
			return "admin/add";
		
	}
	
	@RequestMapping("admin/add")
	public String beginsInsertProduct(@RequestParam String appid, Model model) throws Exception {
		if(productDAO.insertProduct(appid)) {
			return "redirect:apps";
		}else {
			model.addAttribute("err", "Insert failed!");
			model.addAttribute("s", appid);
			return "admin/add";
		}
	}

}