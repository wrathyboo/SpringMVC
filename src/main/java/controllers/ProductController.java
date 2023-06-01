package controllers;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.JsonNode;

import dao.ProductDAO;
import entities.Game;
import functions.SteamAPI;
import functions.utils;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("import")
	public String ImportProducts() throws Exception {
		JsonNode json = SteamAPI.getOwnedGames();
		JsonNode detail;
		List<Game> games = new ArrayList<>();
		LocalDateTime then = LocalDateTime.now();
		for (JsonNode x : json) {
			  if (ChronoUnit.SECONDS.between(then, LocalDateTime.now()) >= 60) break;
			detail = SteamAPI.getAppDetails(x.get("appid").toString());
		     if (detail.has("success")) {
		    	 continue;
		     }
		     else {
		    	 Game apps = new Game();
				 apps.setSteam_appid(Integer.valueOf(detail.get("steam_appid").toString()));
		         apps.setName(detail.get("name").toString().replace("\"", ""));
		         apps.setShort_description(detail.get("short_description").toString().replace("\"", ""));
		         apps.setHeader_image(detail.get("header_image").toString().replace("\"", ""));
		         apps.setPublishers(detail.get("publishers").toString().replace("\"", "").replace("[", "").replace("]", ""));
		         
		         if (detail.has("price_overview")) {
		        	 apps.setDiscount_percent(Integer.valueOf(detail.get("price_overview").get("discount_percent").toString()));
			         apps.setInitial(Integer.valueOf(detail.get("price_overview").get("initial").toString()));
			      
		         }
		         else {
		        	   apps.setDiscount_percent(0);
				         apps.setInitial(0);
		         }
		        
		         if (detail.has("recommendations")) {
		        	 apps.setRecommendations(Integer.valueOf(detail.get("recommendations").get("total").toString()));
		         }
		         else {
		        	 apps.setRecommendations(0);
		         }
		         games.add(apps);
		     }
		}
				
	    System.out.println(games);

		if (productDAO.importProducts(games)) {
			return "categories";
		} else {
			System.out.print("Error");
			return "redirect:home";
		}

	}
	

	@RequestMapping("test")
	public String Test() {
		productDAO.readEntireDataByPagination();
		return "categories";
	}

	@RequestMapping("categories")
	public String CategoriesPage(@RequestParam(value = "page", required = false) Integer page,
			                     @RequestParam(value = "sortField", required = false) String sort,
			                     Model model) {
		 Boolean auth = utils.checkAuthen();
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
		model.addAttribute("list", list);
		model.addAttribute("auth",auth);
		return "categories";

	}
	@RequestMapping("/search")
	public String search (@RequestParam("input")String name, Model model) {
		List<Game> list = productDAO.searchByName(name);
		model.addAttribute("list", list);
		return "categories";
	}
	
	@RequestMapping("/filteredSearch")
	public String filteredSearch (@RequestParam(value = "onSale", required = false) Boolean onSale,
            @RequestParam(value = "price", required = false) String price,
            Model model) {
		if (onSale == null) {
			onSale = false;
		}
		System.out.println(onSale);
		System.out.println(Integer.valueOf(price) * 100);
		Boolean currentOnSale = onSale;
		String currentPrice = price;
		List<Game> list = productDAO.searchByPrice(onSale,Integer.valueOf(price) * 100);
		model.addAttribute("list", list);
		model.addAttribute("currentPrice", currentPrice);
		model.addAttribute("currentOnSale", currentOnSale);
		return "categories";
	}
	
	@RequestMapping("/app")
	public String appDetails (@RequestParam("appid")String appid, Model model) throws Exception {
		JsonNode data = SteamAPI.getAppDetails(appid);
		JsonNode appReview = SteamAPI.getAppReviews(appid);
		ArrayList<String> publishers = SteamAPI.getPublishers(appid);
		List<String> movies = SteamAPI.getMovies(appid);
		List<String> screenshots = SteamAPI.getScreenshots(appid);
		Integer reviews = 0;
		String price = "Free to play";
		if (data.has("recommendations")) {
       	 reviews = (Integer.valueOf(data.get("recommendations").get("total").toString()));
        }
		if (data.has("price_overview")) {
			price = data.get("price_overview").get("final_formatted").toString().replace("\"", "");
		}
	
		model.addAttribute("description",data.get("short_description").toString().replace("\"", ""));
		model.addAttribute("title",data.get("name").toString().replace("\"", ""));
		model.addAttribute("date", data.get("release_date").get("date").toString().replace("\"", ""));
		model.addAttribute("publishers",publishers);
		model.addAttribute("total_reviews",reviews);
		model.addAttribute("review_score", appReview.get("review_score_desc").toString().replace("\"", ""));
		model.addAttribute("id",appid);
		model.addAttribute("price",price);
		model.addAttribute("movies",movies);
		model.addAttribute("screenshots",screenshots);
		return "appDetails";
	}
	
	
}