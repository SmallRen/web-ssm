package com.renbaojia.admin.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.ArticlesWithBLOBs;
import com.renbaojia.model.Life;
import com.renbaojia.service.ArticlesService;
import com.renbaojia.service.CommentariesService;
import com.renbaojia.service.LifeService;
import com.renbaojia.service.RevertsService;
import com.renbaojia.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

/**
 * Created by smallRen on 2017/11/2.
 */
@Controller
public class ArticlesManageController extends BaseController {
    @Autowired
    LifeService lifeService;
    @Autowired
    HttpSession httpSession;
    @Autowired
    RevertsService revertsService;
    @Autowired
    ArticlesService articlesService;
    @Autowired
    CommentariesService commentariesService;

    @RequestMapping("/articlesManage.html")
    public String articlesManage() {
        return "/admin/articlesManage";
    }

    @ResponseBody
    @GetMapping("/articlesAll/{page}")
    public PageInfo articlesAll(@PathVariable Integer page) {
        PageHelper.startPage(page, 10);
        List<ArticlesWithBLOBs> articlesList = articlesService.allArticles();
        PageInfo pageInfo = new PageInfo(articlesList, 4);

        return pageInfo;
    }

    @ResponseBody
    @PostMapping("/articleUpdate")
    public boolean articleUpdate(ArticlesWithBLOBs articles) {

        return articlesService.articleUpdate(articles) == true;
    }

    @ResponseBody
    @GetMapping("/deleteArticles/{id}")
    public boolean deleteArticles(@PathVariable Integer id) {
        revertsService.deleteByArticles(id);
        commentariesService.deleteByArticles(id);
        return articlesService.deleteArticles(id);

    }



    @RequestMapping("/articlesPush.html")
    public String articlesPush() {
        return "/admin/articlesPush";
    }

    @ResponseBody
    @GetMapping("/selectArticlesById/{id}")
    public ArticlesWithBLOBs selectArticlesById(@PathVariable Integer id) {
        ArticlesWithBLOBs articles = articlesService.selectArticlesById(id);
        return articles;
    }

    @ResponseBody
    @GetMapping("/articlesClass/{id}")
    public List<Life> articlesClass(@PathVariable Integer id) {
        return lifeService.allLife(id);
    }
    @ResponseBody
    @PostMapping("/articleInsert")
    public int articleInsert(ArticlesWithBLOBs articlesWithBLOBs) {
        articlesWithBLOBs.setDate(TimeUtil.gettime());
        return articlesService.insert(articlesWithBLOBs);
    }
}
