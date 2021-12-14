package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class PostController {

    @RequestMapping("/postDetail.do")
    public String getPostDetailPage() {

        return "/pages/post/postDetail";
    }
}
