package Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import entity.Book;

public class UserMapper implements RowMapper<Book> {

	@Override
	public Book mapRow(ResultSet rs,int rowNum) throws SQLException{
		Book book = new Book();
		book.setId(rs.getInt("id"));
		book.setName(rs.getString("name"));
		book.setUser("Default");
		book.setYear(rs.getString("release_year"));
		book.setAuthor(rs.getString("author"));
		book.setGenre(rs.getString("genre"));
		book.setRarity(rs.getString("rarity"));
		book.setPages(rs.getInt("pages"));
		book.setCover(rs.getString("cover"));
		return book;
	}
	
}
	