package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/read-book")
public class ReadbookController {
	 @RequestMapping("/novel.do")
	 public String getNovelPage() {
		 return "/pages/read-book/novelMain";
	 }

	@RequestMapping("/essay.do")
	public String getEssayPage() {
		return "/pages/read-book/essayMain";
	}
	 
}
