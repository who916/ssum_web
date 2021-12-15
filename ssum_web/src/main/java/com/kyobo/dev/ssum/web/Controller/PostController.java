package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/post")
public class PostController {


    @GetMapping(value = "/postDetail.do")
    public String getPostDetailPage(Model model, @RequestParam String postId) {

        model.addAttribute("postId",postId);
        return "/pages/post/postDetail";
    }
}
