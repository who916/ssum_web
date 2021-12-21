package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/community")
public class CommunityController {

	 @RequestMapping("/home.do")
	 public String getCommunityPage() {
		 return "/pages/community/communityHome";
	 }

	@RequestMapping("/freeTalk.do")
	public String getFreeBoardPage() {
		return "/pages/community/freeTalkMain";
	}

	@RequestMapping("/freeTalkNew.do")
	public String getFreeNewPage() {
		return "/pages/community/freeTalkNew";
	}

	@GetMapping(value = "/freeTalkDetail.do")
	public String getfreeDetailPage(Model model, @RequestParam String postId) {

		model.addAttribute("postId",postId);
		return "/pages/community/freeTalkDetail";
	}
}
