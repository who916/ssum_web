package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

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

	@RequestMapping(value = "/profileEdit.do")
	public String getProfileEditPage(ModelAndView mav, HttpServletRequest request) {

		return "/pages/login/profileEdit";
	}
	 
	
	 @RequestMapping("/join.do")
	 public String getJoinPage() {
		 return "/pages/login/joinMain";
	 }
	 
	 @RequestMapping("/default.do")
	 public String getJoinDefaultPage() {
		 return "/pages/login/join";
	 }
	 
	
}
