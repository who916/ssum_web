package com.kyobo.dev.ssum.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	 @RequestMapping(value={"","/","/login.do"})
	 public String getLoginPage() {
		 return "/pages/login/login";
	 }
	 
	 @RequestMapping("/profile.do")
	 public String getProfilePage() {
		 return "/pages/login/profile";
	 }
	 
	
	 @RequestMapping("/sign.do")
	 public String getSignPage() {
		 return "/pages/login/signMain";
	 }
	 
	 @RequestMapping("/default.do")
	 public String getSignDefaultPage() {
		 return "/pages/login/signDefault";
	 }
	 
	
}
