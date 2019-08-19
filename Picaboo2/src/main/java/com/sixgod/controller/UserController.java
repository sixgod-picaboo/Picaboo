package com.sixgod.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sixgod.pojo.User;
import com.sixgod.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/index.html")
	public String index() {
		return "test/index";
	}
	
	@RequestMapping("/success.html")
	public String success() {
		return "test/success";
	}
	
	@RequestMapping("/fail.html")
	public String fail() {
		return "test/fail";
	}

	@RequestMapping("/login.html")
	public String login(@RequestParam("userCode") String userCode, @RequestParam("userPassword") String userPassword,
			HttpSession session, HttpServletRequest request) {

		User user = userService.queryUserByID(userCode, userPassword);
		if (user != null) {
			return "redirect:/success.html";
		} else {
			return "redirect:/fail.html";
		}
	}

}
