package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entities.UserDto;

@Service
@Transactional
public class UserService implements IUserService {
 

	@Override
	public User registerNewUserAccount(UserDto userDto) {
		// TODO Auto-generated method stub
		return null;
	}
}