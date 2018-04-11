package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import Mapper.UserMapper;
import entity.Book;

public class BookDaoImpl implements BookDao {

	public final JdbcTemplate jdbcTemplate;
	
	@Autowired
	public BookDaoImpl(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List<Book> getAll(){
		String sql = "SELECT * FROM knygos";
		return jdbcTemplate.query(sql, new UserMapper());
	}
	//String name, String user, String year, String author, String genre, String rarity, int pages,
	//String cover
	@Override
	public void save(Book book) {
		String sql = "INSERT INTO knygos (name,user,release_year,author,genre,rarity,pages,cover) VALUES (?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql,book.getName(),"Default",book.getYear(),book.getAuthor(),book.getGenre(),book.getRarity(),book.getPages(),book.getCover());
	}
	@Override
	public Book getById(int id) {
		String sql = "SELECT * FROM knygos WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new UserMapper(),id);
	}
	@Override
	public void update(Book book) {
		String sql = "UPDATE knygos SET name = ?, user = ?, release_year = ?, author = ? , genre = ?, rarity = ? , pages = ?, cover = ? WHERE id = ?";
		jdbcTemplate.update(sql,book.getName(),"Default",book.getYear(),book.getAuthor(),book.getGenre(),book.getRarity(),book.getPages(),book.getCover(),book.getId());
	}
	@Override
	public void delete(int id ) {
		String sql = "DELETE FROM knygos WHERE id = ?";
		jdbcTemplate.update(sql,id);
	}
}
