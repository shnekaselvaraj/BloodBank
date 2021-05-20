package com.bloodbank.model;

import org.springframework.stereotype.Component;

@Component
public class registrationValidation {

	public boolean validate(String password, String confirmPassword) {
		if (password.equals(confirmPassword)) {
			return true;

		} else {
			return false;
		}

	}
}
