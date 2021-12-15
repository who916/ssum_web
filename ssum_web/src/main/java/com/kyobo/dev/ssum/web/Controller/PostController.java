package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/post")
public class PostController {

    @PostMapping(value = "/sendPostInfo.do")
    public ModelAndView sendPostInfo(HttpServletRequest request) {

        ModelAndView mav = new ModelAndView();

        mav.addObject("postId", request.getParameter("postId"));
        mav.setViewName("/pages/post/postDetail");

        return mav;
    }
    @RequestMapping(value = "/postDetail.do")
    public String getPostDetailPage() {
        return "/pages/post/postDetail";
    }
}
