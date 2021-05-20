package com.bloodbank.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

import com.bloodbank.DAO.UserDAO;
import com.bloodbank.model.Login;
import com.bloodbank.model.User;

@Component
public class UserService {

	@Autowired
	private UserDAO userDao;

	public User validateUser(Login login) {

		return userDao.validateUser(login);
	}

}
