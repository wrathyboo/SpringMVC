package dao;

import java.util.List;

import entities.Game;

public interface ProductDAO {

	
	public boolean importProducts(List<Game> s);
	public List<Game> getProducts(Integer page, Integer size, String Order);
	public boolean insertProduct(String appid) throws Exception;
	public void readEntireDataByPagination();
	public Long getTotalProducts();
	public Game findProductById(Integer appid);
	public List<Game> searchByName(String name);
	public List<Game> searchByPrice(Boolean a, Integer b);
	public List<Game> getProductsByRates(Integer size);
	public boolean destroy(Integer appid);
}
