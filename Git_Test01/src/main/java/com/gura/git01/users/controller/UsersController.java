package com.gura.git01.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gura.git01.users.dto.UsersDto;
import com.gura.git01.users.service.UsersService;

@Controller
public class UsersController {

	@Autowired
	private UsersService service;

	
	/*
	 *  GET 방식 /users/signup_form 요청을 처리할 메소드 
	 *  - 요청방식이 다르면 실행되지 않는다. 
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/users/signup_form")
	public String signupForm() {
		
		return "users/signup_form";
	}
	
	//회원 가입 요청처리
	@RequestMapping(method = RequestMethod.POST, value = "/users/signup")
	public ModelAndView signup(ModelAndView mView, UsersDto dto) {
		service.addUser(dto);
		mView.setViewName("users/signup");
		return mView;
	}
	
	//로그인 폼 요청 처리
	@RequestMapping(method=RequestMethod.GET, value="/users/loginform")
	public String loginForm() {		
			return "users/loginform";
		}
	
		
}
