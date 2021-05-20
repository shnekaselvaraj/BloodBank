package com.bloodbank.model;

import java.util.Date;


import org.springframework.stereotype.Component;

@Component
public class User {

	private String name;
	private String mail;
	private String mobile;
	private String blood;
	private String state;
	private String city;
	private String gender;
	private String password;
	

	public User() {
		super();

	}

	public User(String name, String mail, String mobile, String blood, String state, String city, String gender,
			String password) {
		super();
		this.name = name;
		this.mail = mail;
		this.mobile = mobile;
		this.blood = blood;
		this.state = state;
		this.city = city;
		this.gender = gender;
		this.password = password;
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", mail=" + mail + ", mobile=" + mobile + ", blood=" + blood + ", state=" + state
				+ ", city=" + city + ", gender=" + gender + ", password=" + password + "]";
	}
	
	

	

	
	

}
