package com.renbaojia.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.Articles;
import com.renbaojia.model.ArticlesWithBLOBs;
import com.renbaojia.model.Commentaries;
import com.renbaojia.service.ArticlesService;
import com.renbaojia.service.CommentariesService;
import com.renbaojia.service.LifeService;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by smallRen on 2017/10/9.
 */
@Controller
public class ArticleDetialsController {
    @Autowired
    HttpSession httpSession;
    @Autowired
    ArticlesService articlesService;
    @Autowired
    LifeService lifeService;
    @Autowired
    CommentariesService commentariesService;

    /**
     * @param articleId
     * @return
     * @根据文章id查询文章
     */
    @GetMapping("/details.html/{articleId}")
    public ModelAndView details(@PathVariable Integer articleId) {
        articlesService.update(articleId);
        ModelAndView modelAndView = new ModelAndView();
        ArticlesWithBLOBs articles = articlesService.selectArticlesId(articleId);
        List<Commentaries> all = commentariesService.all(articleId);
        modelAndView.addObject("info", articles);
        modelAndView.addObject("commentaries", all);
        modelAndView.setViewName("details");
        return modelAndView;
    }

    /**
     * @param type
     * @return
     * @根据点击的类型返回不同类型的文章
     */
    @ResponseBody
    @PostMapping("/type.html")
    public String type(String type, @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum) {
        List<ArticlesWithBLOBs> list = articlesService.selectType(type);
        PageHelper.startPage(pageNum, 10);
        httpSession.setAttribute("list", new PageInfo<>(list));
        httpSession.setAttribute("type", type);
        if (lifeService.select(type)) {
            return "/lives.html";
        } else {
            return "/shares.html";
        }

    }

}
