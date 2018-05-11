package com.renbaojia.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.Articles;
import com.renbaojia.model.ArticlesWithBLOBs;
import com.renbaojia.service.ArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by smallRen on 2017/10/9.
 */
@Controller
public class LivesController {
    @Autowired
    HttpSession httpSession;
    @Autowired
    ArticlesService articlesService;

    @GetMapping("/lives.html")
    public String lives() {
        return "live";
    }

    @GetMapping("/live.html")
    public String live() {
        List<ArticlesWithBLOBs> list = articlesService.selectAttribute(1);
        PageHelper.startPage(1, 10);
        httpSession.setAttribute("list", new PageInfo<>(list));
        httpSession.removeAttribute("type");
        return "live";
    }
}
