package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CommonController {

	 @RequestMapping(value= {"/","/index.do"})
	 public String main() {

		 //글 list 가져오기

		 return "/index";
	 }
	 
	 
}
