package com.kyobo.dev.ssum.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community")
public class CommunityController {

	 @RequestMapping("/home.do")
	 public String getCommunityPage() {
		 return "/pages/community/communityHome";
	 }
}