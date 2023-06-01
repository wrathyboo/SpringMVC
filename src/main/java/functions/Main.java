package functions;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.hibernate.Session;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ResourceUtils;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.TypeFactory;

import dao.ProductDAO;
import dao.impl.ProductDAOImpl;
import functions.Json;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Array;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.NumberFormat;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

import entities.App;
import entities.Game;
import entities.Player;
import functions.SteamAPI;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;
import java.util.stream.IntStream;

public class Main {
	
	public Main() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
//		 JSONObject json = readJsonFromUrl("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=12E14F3C39E05909822C0C23A2C12DDA&steamids=76561198857060587");
		JsonNode json = SteamAPI.getOwnedGames();
		JsonNode appDetail = SteamAPI.getAppDetails("1174180");
		
		JsonNode reviews = SteamAPI.getAppReviews("500").get("total_reviews");
		Player[] player = SteamAPI.getPlayerSummaries("76561198857060587");
		JsonNode price_overview = SteamAPI.getAppDetails("500").get("price_overview");
//		 System.out.println(player.getNodeType());
		String jsonString = player.toString();

//		 for (Player arr : player) {
//			 System.out.println(arr.getSteamid());
//		 }
		 
        JsonNode detail;
        
    
        List<String> movies = new ArrayList<String>();
        
        JsonNode movieData = appDetail.get("movies");
       System.out.println(movieData);
		movieData.forEach(x -> movies.add(x.get("webm").get("max").toString().replace("\"", "")));
	  for (String x : movies) {
		  System.out.println(x);
	  }
		JsonNode data = SteamAPI.getAppDetails("500");
		
//		 App app = new App();
		for (int i = 0; i < 5; i++) {

//				 app.setAppid(Integer.valueOf(data.get("steam_appid").toString()));
//		         app.setName(data.get("name").toString());
//		         app.setIs_free(Boolean.valueOf(data.get("is_free").toString()));
//		         app.setShort_description(data.get("short_description").toString());
//		         app.setHeader_image(data.get("header_image").toString());
//		         app.setPublishers(data.get("publishers").toString());
//		         app.setPrice_overview(Float.valueOf(data.get("price_overview").get("final").toString()));
//		         app.setGenres(data.get("genres").toString());
//		         app.setRecommendations(data.get("recommendations").toString());
//		       

		}
//		 System.out.print(app.getPrice_overview());

		double money = Integer.valueOf(data.get("price_overview").get("final").toString()) / 10;
		NumberFormat formatter = NumberFormat.getCurrencyInstance();
		String moneyString = formatter.format(money);
		System.out.println(moneyString);

		ObjectMapper mapper = new ObjectMapper();
		JsonNode url = SteamAPI.getOwnedGames();

		System.out.println(url.size());
		List<App> ids = new ArrayList<App>();

//		 List<App> myObjects = mapper.readValue(url.toString(), new TypeReference<List<App>>(){});
        ProductDAO productDAO = new ProductDAOImpl();
		json.forEach(x -> ids.add(new App(Integer.valueOf(x.get("appid").toString()))));
		ArrayList<String> listdata = new ArrayList<String>();     
		JsonNode jArray = appDetail.get("publishers");
		if (jArray != null) { 
		   for (int i=0;i<jArray.size();i++){ 
		    listdata.add(jArray.get(i).toString().replace("\"", ""));
		   } 
		} 
		
		ArrayList<String> publishers = SteamAPI.getPublishers("1174180");
		
		for (String x : publishers) {
			System.out.println(x);
		}

		System.out.println(listdata.get(0));
		int size = SteamAPI.getOwnedGames().size();
		for(App app : ids) {
			System.out.println(app.getId());
		}
	
		
		try {
			boolean bl = true;
//			bl = productDAO.importProducts(ids);
			
			if (bl) {
				System.out.println("Success");
			} else {
				System.out.println("Error");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int valueA = 15;

		valueA = Math.max(valueA, 18); //valueA is now 0;
		System.out.println(valueA);
	 

		
	
//		 for (App x : myObjects) {
//			 System.out.println(x);
//		 }

	}

	private static void printItems(List<App> resultList) {
		// TODO Auto-generated method stub
		
	}

}
