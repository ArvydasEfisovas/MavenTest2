package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import dao.BookDao;
import entity.Book;

public class UserServiceImpl implements UserService {

	@Autowired
	public BookDao userDao;
	
	@Override
	public List<Book> getAll(){
		return userDao.getAll();
	}
	
	@Override
	public void save (Book book) {
		userDao.save(book);
	}
	
	@Override
	public Book getById(int id) {
		return userDao.getById(id);
	}
	
	@Override
	public void update (Book book) {	
		userDao.update(book);
	}
	@Override
	public void delete(int id ) {
		userDao.delete(id);
	}
}
