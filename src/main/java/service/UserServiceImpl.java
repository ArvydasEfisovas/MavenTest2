package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import dao.UserDao;
import entity.User;

public class UserServiceImpl implements UserService {

	@Autowired
	public UserDao userDao;
	
	@Override
	public List<User> getAll(){
		return userDao.getAll();
	}
}
