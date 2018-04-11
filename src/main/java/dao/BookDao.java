package dao;

import java.util.List;

import entity.Book;



public interface BookDao {

	List<Book> getAll();
	
	void save (Book book);
	
	Book getById(int id);
	
	void update(Book book);
	
	void delete( int id);
}
