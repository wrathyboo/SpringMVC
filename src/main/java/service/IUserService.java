package service;

import org.springframework.security.core.userdetails.User;

import entities.UserDto;

public interface IUserService {
	User registerNewUserAccount(UserDto userDto);
}
