package functions;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import entities.Player;

public class SteamAPI {
	static final String WRATHYBOO_KEY = "12E14F3C39E05909822C0C23A2C12DDA";
	static final String WRATHYBOO_ID = "76561198857060587";

	public SteamAPI() {
		// TODO Auto-generated constructor stub  
//		Object object = response.get("games");
//		String data = response.get("games").toString();
	}

	// Steam Apps
	public static JsonNode getOwnedGames() throws IOException {
		JSONObject src = Json.getSourceUrl("http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key="
				+ WRATHYBOO_KEY + "&steamid=76561198857060587");
		JSONObject response = src.getJSONObject("response");
		JsonNode node = Json.parse(response.get("games").toString());
		return node;
	}
    
	public static JsonNode getAppDetails(String appid) throws IOException {
		String currency = "us";
		String url = "https://store.steampowered.com/api/appdetails?appids=" + appid + "&l=en&cc=" + currency;
		JSONObject src = Json.getSourceUrl(
				"https://store.steampowered.com/api/appdetails?appids=" + appid + "&l=en&cc=" + currency);
		JSONObject response = src.getJSONObject(appid);
		if (response.getBoolean("success")) {
			JsonNode node = Json.parse(response.get("data").toString());
			System.out.println(url);
			return node;
		}
		else {
			JsonNode node = Json.parse(response.toString());
			System.out.println(url);
			return node;
		}
	}

	public static JsonNode getSteamApps() throws IOException {
		JSONObject src = Json.getSourceUrl("http://api.steampowered.com/ISteamApps/GetAppList/v0002/");
		JSONObject response = src.getJSONObject("applist");
		JsonNode node = Json.parse(response.get("apps").toString());
		return node;
	}
	
	public static JsonNode getAppReviews(String appid) throws IOException {
		JSONObject src = Json.getSourceUrl("https://store.steampowered.com/appreviews/"+appid+"?json=1&language=all");
//		JSONObject response = src.getJSONObject("applist");
		JsonNode node = Json.parse(src.get("query_summary").toString());
		return node;
	}
	
	public static List<String> getMovies(String appid) throws IOException {
		JsonNode appDetail = SteamAPI.getAppDetails(appid);
		List<String> list = new ArrayList<String>();
		if (appDetail.has("movies")) {
			JsonNode movieData = appDetail.get("movies");
	       
			movieData.forEach(x -> list.add(x.get("webm").get("max").toString().replace("\"", "")));
		  for (String x : list) {
			  System.out.println(x);
		  }
			return list;
		}
		else return list;
	}
	
	public static List<String> getScreenshots(String appid) throws IOException {
		JsonNode appDetail = SteamAPI.getAppDetails(appid);
		
		JsonNode shotData = appDetail.get("screenshots");
        List<String> list = new ArrayList<String>();
        shotData.forEach(x -> list.add(x.get("path_full").toString().replace("\"", "")));
	  for (String x : list) {
		  System.out.println(x);
	  }
		return list;
	}
	
	public static ArrayList<String> getPublishers(String id) throws Exception {
		ArrayList<String> publishers = new ArrayList<String>();     
		JsonNode appDetails = getAppDetails(id).get("publishers");
		if (appDetails != null) { 
		   for (int i=0;i<appDetails.size();i++){ 
			   publishers.add(appDetails.get(i).toString().replace("\"", ""));
		   } 
		} 
		return publishers;
	}

	// Player Details
	public static Player[] getPlayerSummaries(String id) throws IOException {
		 ObjectMapper mapper = new ObjectMapper();
		JSONObject src = Json.getSourceUrl("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key="
				+ WRATHYBOO_KEY + "&steamids=" + id);
		JSONObject response = src.getJSONObject("response");
		JsonNode node = Json.parse(response.get("players").toString());
		Player[] playerDetails = mapper.readValue(node.toString(), Player[].class);
		return playerDetails;
	}

	public static JSONObject getPlayerFriendlist(String id) throws IOException {
		JSONObject src = Json.getSourceUrl(
				"http://api.steampowered.com/ISteamUser/GetFriendList/v0001/?key=" + WRATHYBOO_KEY + "&steamid=" + id);
		return src;
	}

	public static JSONObject getPlayerLevel(String id) throws IOException {
		JSONObject src = Json.getSourceUrl(
				"http://api.steampowered.com/IPlayerService/GetSteamLevel/v1/?key=" + WRATHYBOO_KEY + "&steamid=" + id);
		return src;
	}

	public static JSONObject getPlayerWishlist(String id) throws IOException {
		JSONObject src = Json.getSourceUrl("https://store.steampowered.com/wishlist/profiles/" + id + "/wishlistdata/");
		return src;
	}

	public String getPlayerStatus(Integer value) {
		switch (value) {
		case 1:
			return "Online";
		case 2:
			return "Busy";
		case 3:
			return "Away";
		case 4:
			return "Snooze";
		case 5:
			return "looking to trade";
		case 6:
			return "looking to play";
		default:
			return "Offline";
		}
	}
}
