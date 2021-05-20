package com.bloodbank.DAO;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.Mapping;

import com.bloodbank.model.Login;
import com.bloodbank.model.User;

@Component
public class UserDAOImpl implements UserDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insertUser(User U) {
		String query = "insert into User values(?,?,?,?,?,?,?,?)";
		Object[] args = new Object[] { U.getName(), U.getMail(), U.getMobile(), U.getBlood(), U.getState(), U.getCity(),
				U.getGender(), U.getPassword() };
		int out = jdbcTemplate.update(query, args);

		return out;

	}

	@Override
	public List<User> getUsersByBlood(String blood) {

		List<User> uList = new ArrayList<User>();
		String query = "select * from User where blood=?";
		List<Map<String, Object>> userRows = jdbcTemplate.queryForList(query, new Object[] { blood });

		for (Map<String, Object> i : userRows) {
			User user = new User();

			user.setName((String) i.get("name"));
			user.setMail((String) i.get("mail"));
			user.setMobile((String) i.get("mobile"));
			user.setBlood((String) i.get("blood"));
			user.setState((String) i.get("state"));
			user.setCity((String) i.get("city"));
			user.setGender((String) i.get("gender"));
			
			uList.add(user);
			System.out.println(user);
		}

		return uList;

	}

	@Override
	public int updateUser(User U) {
		String query = "update user set name=?,mobile=?,blood=?,state=?,city=?,gender=? where mail=?";
		Object[] args = new Object[] { U.getName(), U.getMobile(), U.getBlood(), U.getState(), U.getCity(),
				U.getGender(), U.getMail()};

		int out = jdbcTemplate.update(query, args);
		return out;
	}

	@Override
	public User validateUser(Login login) {
		String sql = "select * from user where mail='" + login.getMail() + "' and password='" + login.getPassword()
				+ "'";
		List<User> user = jdbcTemplate.query(sql, new UserMapper());

		return user.size() > 0 ? user.get(0) : null;
	}

	@Override
	public User getUserByMail(String mail) {

		String query = "select * from user where mail=?";

		User user = jdbcTemplate.queryForObject(query, new Object[] { mail }, new RowMapper<User>() {

			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();

				user.setName(rs.getString(1));
				user.setMail(rs.getString(2));

				user.setMobile(rs.getString(3));
				user.setBlood(rs.getString(4));
				user.setState(rs.getString(5));
				user.setCity(rs.getString(6));
				user.setGender(rs.getString(7));

				return user;
			}

		});
		return user;

	}

	@Override
	public List<User> getUsersByState(String state) {

		return null;
	}

}

class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();

		user.setName(rs.getString("name"));
		user.setMail(rs.getString("mail"));
		user.setMobile(rs.getString("mobile"));
		user.setBlood(rs.getString("blood"));
		user.setState(rs.getString("state"));
		user.setCity(rs.getString("city"));
		user.setGender(rs.getString("gender"));
		user.setPassword(rs.getString("password"));

		return user;
	}

}
