package com.renbaojia.service;

import com.renbaojia.model.Articles;
import com.renbaojia.model.ArticlesWithBLOBs;

import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
public interface ArticlesService {

    List<ArticlesWithBLOBs> newArticles();

    ArticlesWithBLOBs selectArticlesId(Integer articleId);

    List<ArticlesWithBLOBs> selectType(String type);

    void update(Integer articleId);

    List<ArticlesWithBLOBs> selectAttribute(Integer id);

    List<ArticlesWithBLOBs> allArticles();

    ArticlesWithBLOBs selectArticlesById(Integer id);

    boolean articleUpdate(ArticlesWithBLOBs articles);

    boolean deleteArticles(Integer id);

    int insert(ArticlesWithBLOBs articles);
}
