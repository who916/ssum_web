package com.kyobo.dev.ssum.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/board")
public class BoardController {
    @RequestMapping("/novel.do")
    public String getNovelPage() {
        return "/pages/board/novelMain";
    }

    @RequestMapping("/essay.do")
    public String getEssayPage() {
        return "/pages/board/essayMain";
    }

    @RequestMapping("/likes.do")
    public String getLikesPage() {
        return "/pages/board/likesMain";
    }

    @RequestMapping("/views.do")
    public String getViewsPage() {
        return "/pages/board/viewsMain";
    }

    @RequestMapping("/new.do")
    public String getNewPage() {
        return "/pages/board/newMain";
    }

}
