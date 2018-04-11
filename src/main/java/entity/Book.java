package entity;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

public class Book {
	private int id;
	
	private String cover;
	private String genre;
	private String Rarity;
	@Pattern(regexp = "[A-Za-z0-9]{5,100}+", message = "Klaidingai ivestas pavadinimas!")
	private String name;
	@Pattern(regexp = "[A-Za-z0-9]{5,15}+", message = "Klaidingai ivestas vardas!")
	private String user;
	@Pattern(regexp = "(19|20)\\d\\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])+", message = "Klaidingai ivestas vardas!")
	private String year;
	@Pattern(regexp = "[A-Za-z]{5,100}+", message = "Klaidingai ivestas autoriaus vardas!")
	private String author;
	@Min(value = 1, message = "Knygos puslapiu skaicius netinkamas.")
	@Max(value = 99999, message = "Knygos puslapiu skaicius netinkamas.")
	private int pages;
	private String [] favoriteFrameworks;
	
	
	public Book(int id,String name, String user, String year, String author, String genre, String rarity, int pages,
			String cover) {
		this.id = id;
		this.name = name;
		this.user = user;
		this.year = year;
		this.author = author;
		this.genre = genre;
		Rarity = rarity;
		this.pages = pages;
		this.cover = cover;
	}
	public Book() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getRarity() {
		return Rarity;
	}
	public void setRarity(String rarity) {
		Rarity = rarity;
	}
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	
	 public String[] getFavoriteFrameworks() {
	      return favoriteFrameworks;
	   }
	   public void setFavoriteFrameworks(String[] favoriteFrameworks) {
	      this.favoriteFrameworks = favoriteFrameworks;
	   }
	
	
	
}
