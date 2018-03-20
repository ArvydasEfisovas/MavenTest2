package Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import entity.User;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs,int rowNum) throws SQLException{
		User user = new User();
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setUserlevel(rs.getInt("userlevel"));
		user.setEmail(rs.getString("email"));
		user.setTimestamp(rs.getString("timestamp"));
		return user;
	}
	
}
