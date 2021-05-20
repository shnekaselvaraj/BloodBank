package com.bloodbank.DAO;

import java.util.List;


import org.springframework.stereotype.Component;

import com.bloodbank.model.User;

import com.bloodbank.model.Login;
import com.bloodbank.model.User;

@Component
public interface UserDAO {

	public int insertUser(User U);

	public List<User> getUsersByBlood(String blood);
	
	public List<User> getUsersByState(String state);

	public int updateUser(User U);

	User validateUser(Login login);

	public User getUserByMail(String mail);

}
