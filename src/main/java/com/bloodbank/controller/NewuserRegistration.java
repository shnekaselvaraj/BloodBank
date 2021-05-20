package com.bloodbank.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bloodbank.DAO.UserDAO;
import com.bloodbank.model.Login;
import com.bloodbank.model.User;
import com.bloodbank.model.registrationValidation;
import com.bloodbank.service.UserService;

@Controller
public class NewuserRegistration {

	@Autowired
	private UserDAO userDao;

	@Autowired
	private registrationValidation regValid;

	@Autowired
	 private User user;
	
	@Autowired
	UserService userService;

	@RequestMapping("/")
	public String homePage() {
		return "Homepage";
	}

	@RequestMapping("/register")
	public String newUser(ModelMap map) {

		

		map.addAttribute("registration", user);
		map.addAttribute("addMsg", "");
		return "registrationpage";
	}

	@RequestMapping("/submitForm")
	public ModelAndView saveUser(@ModelAttribute("registration") User U, ModelAndView mv) {
		int result = userDao.insertUser(U);
		System.out.println("Testing....."+ result);
		if (result > 0) {
			mv.addObject("addMsg", "User Added Successfully");
		
		} else {
			mv.addObject("addMsg", "User not Added Successfully");
		}
		mv.setViewName("registrationpage");
		return mv;
	}

	@RequestMapping(value="/login" ,method=RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login",new Login());
		return mav;

	}
	
	@RequestMapping(value="/loginProcess", method=RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("login") Login login) {
		
		ModelAndView mav=null;
		User user = userService.validateUser(login);
		
		if(null!=user) {
			mav=new ModelAndView("loginmenu");
			
			mav.addObject("mail", user.getMail());
		}
		else {
			mav=new ModelAndView("login");
			mav.addObject("message", "Username And Password Are Not Matched!!");
		}
		
		return mav;
		
	}

	@RequestMapping("/search")
	public String search(@RequestParam("blood") String blood, Model model) {
		List<User> user = userDao.getUsersByBlood(blood);
		model.addAttribute("user", user);
		return "showByBloodGroup";

	}

	@RequestMapping(value="/update/{mail}")
	public String updateUser(@PathVariable String mail, Model m) {
		
		User user = userDao.getUserByMail(mail);
		m.addAttribute("uuser", user);
		
		return "update";

	}
	
	@RequestMapping(value="/saveupdate", method = RequestMethod.POST)
	public String saveupdate(@ModelAttribute("uuser") User U, Model m) {
		System.out.println("Save User");
		int result = userDao.updateUser(U);
		if(result>0)
		{
			System.out.println("User Updated Successfully");
		}
		else
		{
			System.out.println("User Not Updated Successfully");
		}

		return "redirect:/login";
		
	}

}
