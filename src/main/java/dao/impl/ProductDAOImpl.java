package dao.impl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import dao.ProductDAO;
import entities.Game;
import functions.SteamAPI;
import com.fasterxml.jackson.databind.JsonNode;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@PersistenceContext
	protected EntityManager entityManager;

	@Override
	public boolean importProducts(List<Game> s) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();

		try {
			session.beginTransaction();
			for (Game app : s) {
				session.merge(app);
			}
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return false;
	}
	

	@Override
	public List<Game> getProducts(Integer page, Integer size, String order) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {

			int pageSize = size;
			int pageNumber = (page - 1) * pageSize + 1;
			CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
			CriteriaQuery<Long> countQuery = criteriaBuilder.createQuery(Long.class);
			countQuery.select(criteriaBuilder.count(countQuery.from(Game.class)));
			CriteriaQuery<Game> criteriaQuery = criteriaBuilder.createQuery(Game.class);
			Root<Game> root = criteriaQuery.from(Game.class);
			switch (order) {
			case "asc":
				criteriaQuery.orderBy(criteriaBuilder.asc(root.get("name")));
				break;
			case "desc":
				criteriaQuery.orderBy(criteriaBuilder.desc(root.get("name")));
				break;
			case "discount":
				criteriaQuery.select(root).where(criteriaBuilder.gt(root.get("discount_percent"), 0));
				break;
			default:
					
			}
			
			CriteriaQuery<Game> selectQuery = criteriaQuery.select(root);
			TypedQuery<Game> typedQuery = session.createQuery(selectQuery);

			System.out.println("Page: " + (pageNumber / pageSize));
			
			//Set limited record
			typedQuery.setFirstResult(pageNumber - 1);
			typedQuery.setMaxResults(pageSize);

			System.out.println(typedQuery.getResultList());
			System.out.println("==========================");

			List<Game> list = typedQuery.getResultList();
//			Collections.sort(list, (o1, o2) -> (o1.getName().compareTo(o2.getName())));
	
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	@Override
	public Game findProductById(Integer appid) {
		Session session = sessionFactory.openSession();
		try {
			Game game = session.get(Game.class, appid);
			return game;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}
    
	@Override
	public boolean insertProduct(String appid) throws Exception {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		JsonNode detail = SteamAPI.getAppDetails(appid);
	     if (detail.has("success")) {
	    	 return false;
	     }
	     else {
	    	 Game app = new Game();
			 app.setSteam_appid(Integer.valueOf(detail.get("steam_appid").toString()));
	         app.setName(detail.get("name").toString().replace("\"", ""));
	         app.setShort_description(detail.get("short_description").toString().replace("\"", ""));
	         app.setHeader_image(detail.get("header_image").toString().replace("\"", ""));
	         app.setPublishers(detail.get("publishers").toString().replace("\"", "").replace("[", "").replace("]", ""));
	         
	         if (detail.has("price_overview")) {
	        	 app.setDiscount_percent(Integer.valueOf(detail.get("price_overview").get("discount_percent").toString()));
		         app.setInitial(Integer.valueOf(detail.get("price_overview").get("initial").toString()));
		      
	         }
	         else {
	        	   app.setDiscount_percent(0);
			         app.setInitial(0);
	         }
	        
	         if (detail.has("recommendations")) {
	        	 app.setRecommendations(Integer.valueOf(detail.get("recommendations").get("total").toString()));
	         }
	         else {
	        	 app.setRecommendations(0);
	         }
	         try {
	 			session.beginTransaction();
	 			session.save(app);
	 			session.getTransaction().commit();
	 			return true;
	 		} catch (Exception e) {
	 			e.printStackTrace();
	 			session.getTransaction().rollback();
	 		} finally {
	 			session.close();
	 		}
	     }
		
		return false;
	}


	public Long getTotalProducts() {
		Session session = sessionFactory.openSession();

		CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
		CriteriaQuery<Long> countQuery = criteriaBuilder.createQuery(Long.class);

		countQuery.select(criteriaBuilder.count(countQuery.from(Game.class)));
		Long count = session.createQuery(countQuery).getSingleResult();
		System.out.println(count);
		System.out.println(count.intValue());
		return count;
	}

	public void readEntireDataByPagination() {
		Session session = sessionFactory.openSession();
		try {
			int pageNumber = 1;
			int pageSize = 12;

			CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
			CriteriaQuery<Long> countQuery = criteriaBuilder.createQuery(Long.class);

			countQuery.select(criteriaBuilder.count(countQuery.from(Game.class)));
			Long count = session.createQuery(countQuery).getSingleResult();
			System.out.println(count);
			System.out.println(count.intValue());
			CriteriaQuery<Game> criteriaQuery = criteriaBuilder.createQuery(Game.class);
			Root<Game> root = criteriaQuery.from(Game.class);
			CriteriaQuery<Game> selectQuery = criteriaQuery.select(root);

			TypedQuery<Game> typedQuery = session.createQuery(selectQuery);
			while (pageNumber < count.intValue()) {
				System.out.println("Page: " + (pageNumber / pageSize));
				typedQuery.setFirstResult(pageNumber - 1);
				typedQuery.setMaxResults(pageSize);

				System.out.println(typedQuery.getResultList());
				pageNumber += pageSize;

				System.out.println("==========================");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	@Override
	public List<Game> searchByName(String name) {
		Session session = sessionFactory.openSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Game> cr = cb.createQuery(Game.class);
		Root<Game> root = cr.from(Game.class);
		try {
			
			
			cr.select(root).where(cb.like(root.get("name"), "%"+name+"%"));
			org.hibernate.query.Query<Game> query = session.createQuery(cr);
			List<Game> results = query.getResultList();
			return results;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}
	
	@Override
	public List<Game> searchByPrice(Boolean discount, Integer range) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {

			CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
			CriteriaQuery<Long> countQuery = criteriaBuilder.createQuery(Long.class);
            
			countQuery.select(criteriaBuilder.count(countQuery.from(Game.class)));
		
			CriteriaQuery<Game> criteriaQuery = criteriaBuilder.createQuery(Game.class);
			Root<Game> root = criteriaQuery.from(Game.class);
			if (discount) {
				criteriaQuery.select(root).where(criteriaBuilder.gt(root.get("discount_percent"), 0));
			}
			criteriaQuery.select(root).where(criteriaBuilder.between(root.get("initial"),0, range));
			criteriaQuery.orderBy(criteriaBuilder.desc(root.get("initial")));
			CriteriaQuery<Game> selectQuery = criteriaQuery.select(root);

			TypedQuery<Game> typedQuery = session.createQuery(selectQuery);


			System.out.println(typedQuery.getResultList());

			System.out.println("==========================");

			List<Game> list = typedQuery.getResultList();
//			Collections.sort(list, (o1, o2) -> (o1.getName().compareTo(o2.getName())));
	
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}


	@Override
	public List<Game> getProductsByRates(Integer size) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {

			
			CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
			CriteriaQuery<Long> countQuery = criteriaBuilder.createQuery(Long.class);
            
			countQuery.select(criteriaBuilder.count(countQuery.from(Game.class)));

			CriteriaQuery<Game> criteriaQuery = criteriaBuilder.createQuery(Game.class);
			Root<Game> root = criteriaQuery.from(Game.class);
		
			criteriaQuery.select(root).where(criteriaBuilder.gt(root.get("recommendations"), 0));
			criteriaQuery.orderBy(criteriaBuilder.desc(root.get("recommendations")));
			
			CriteriaQuery<Game> selectQuery = criteriaQuery.select(root);

			TypedQuery<Game> typedQuery = session.createQuery(selectQuery);

			typedQuery.setMaxResults(size);

			System.out.println(typedQuery.getResultList());

			System.out.println("==========================");

			List<Game> list = typedQuery.getResultList();
//			Collections.sort(list, (o1, o2) -> (o1.getName().compareTo(o2.getName())));
	
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}


	@Override
	public boolean destroy(Integer appid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.delete(findProductById(appid));
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return false;
	}


}