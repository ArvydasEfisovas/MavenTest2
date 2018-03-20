package entity;

public class User {
	
	private String username;
	private String password;
	private int userlevel;
	private String email;
	private String timestamp;;
	
	public User() {
	}

	public User(String username, String password, int userlevel, String email, String timestamp) {
		this.username = username;
		this.password = password;
		this.userlevel = userlevel;
		this.email = email;
		this.timestamp = timestamp;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUserlevel() {
		return userlevel;
	}

	public void setUserlevel(int userlevel) {
		this.userlevel = userlevel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	
	


	
	
	
}
