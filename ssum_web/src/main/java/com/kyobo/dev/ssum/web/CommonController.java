package com.kyobo.dev.ssum.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CommonController {

	 @RequestMapping(value= {"/","/index.do"})
	 public String main() {
		 return "/index";
	 }
	 
	 
}
