package dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Repository;
import dao.UserDAO;
import entities.User;
import entities.UserDto;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public User findByUserName(String username) {
		Session session = sessionFactory.openSession();
		try {
			User user = (User) session.createQuery("from User where userName = :userName")
					.setParameter("userName", username).uniqueResult();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public boolean userCreate(UserDto s) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		User user = new User();
		user.setUserName(s.getUsername());
		user.setEmail(s.getEmail());
		user.setPassWord(BCrypt.hashpw(s.getPassword(), BCrypt.gensalt(12)));
		user.setEnabled(true);
		try {
			session.beginTransaction();
			session.save(user);
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