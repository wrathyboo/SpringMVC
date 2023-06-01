package dao;

import entities.User;
import entities.UserDto;

public interface UserDAO {
	public User findByUserName(String username);
	public boolean userCreate(UserDto s);
}