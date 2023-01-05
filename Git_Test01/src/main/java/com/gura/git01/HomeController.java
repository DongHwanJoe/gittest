package com.gura.git01;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		
		List<String> noticeList = new ArrayList<>();
		noticeList.add("Spring Boot 시작입니다.");
		noticeList.add("음식점 소개 앱입니다.");
		noticeList.add("잘 부탁드립니다!");
		
		request.setAttribute("noticeList", noticeList);
		
		return "home";
	}
	
}
