package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/author")
public class AuthorController {
	
	 @RequestMapping("/registration.do")
	 public String getRegistrationPage() {
		 return "/pages/author/registration";
	 }

}
