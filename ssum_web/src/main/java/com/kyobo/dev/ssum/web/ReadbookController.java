package com.kyobo.dev.ssum.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/readbook")
public class ReadbookController {
	 @RequestMapping("/serial.do")
	 public String getSerialPage() {
		 return "/pages/readbook/serial";
	 }
	 
}
