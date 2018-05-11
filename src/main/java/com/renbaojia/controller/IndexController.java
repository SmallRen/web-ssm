package com.renbaojia.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.dao.*;

import com.renbaojia.model.*;
import com.renbaojia.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
@Controller
public class IndexController {
    @Autowired
    LifeService lifeService;
    @Autowired
    SystemTypeService sytemTypeService;
    @Autowired
    LanguageService languageService;
    @Autowired
    IdeService ideService;
    @Autowired
    ExceptionService exceptionService;
    @Autowired
    HttpSession httpSession;
    @Autowired
    ArticlesService articlesService;
    @Autowired
    CarouselMapper carouselMapper;

    @GetMapping("/")
    public String index() {
        List<Carousel> carousels = carouselMapper.selectByExample(null);
        httpSession.setAttribute("carousels", carousels);
        httpSession.setAttribute("life", lifeService.all());
        httpSession.setAttribute("language", languageService.all());
        httpSession.setAttribute("sytemType", sytemTypeService.all());
        httpSession.setAttribute("ide", ideService.all());
        httpSession.setAttribute("exception", exceptionService.all());
        PageHelper.startPage(1, 10);
        List<ArticlesWithBLOBs> articles = articlesService.newArticles();
        PageInfo pageInfo = new PageInfo(articles);
        httpSession.setAttribute("newArticles", pageInfo);
        return "index";
    }

}
