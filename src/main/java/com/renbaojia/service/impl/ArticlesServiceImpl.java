package com.renbaojia.service.impl;

import com.renbaojia.dao.ArticlesMapper;
import com.renbaojia.model.Articles;
import com.renbaojia.model.ArticlesExample;
import com.renbaojia.model.ArticlesWithBLOBs;
import com.renbaojia.service.ArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
@Service
public class ArticlesServiceImpl implements ArticlesService {
    @Autowired
    ArticlesMapper articlesMapper;

    @Override
    public List<ArticlesWithBLOBs> newArticles() {
        ArticlesExample articlesExample = new ArticlesExample();
        articlesExample.setOrderByClause("id DESC");
        ArticlesExample.Criteria criteria = articlesExample.createCriteria();
        return articlesMapper.selectByExampleWithBLOBs(articlesExample);

    }

    @Override
    public ArticlesWithBLOBs selectArticlesId(Integer articleId) {
        return articlesMapper.selectByPrimaryKey(articleId);
    }

    @Override
    public List<ArticlesWithBLOBs> selectType(String type) {
        ArticlesExample articlesExample = new ArticlesExample();
        articlesExample.setOrderByClause("like_number DESC");
        ArticlesExample.Criteria criteria = articlesExample.createCriteria();
        criteria.andTypeEqualTo(type);
        return articlesMapper.selectByExampleWithBLOBs(articlesExample);
    }

    @Override
    public void update(Integer articleId) {
        ArticlesWithBLOBs articles = articlesMapper.selectByPrimaryKey(articleId);
        articles.setBrowseNumber(articles.getBrowseNumber() + 1);
        articlesMapper.updateByPrimaryKeySelective(articles);
    }

    @Override
    public List<ArticlesWithBLOBs> selectAttribute(Integer id) {
        ArticlesExample articlesExample = new ArticlesExample();
        articlesExample.setOrderByClause("id DESC");
        ArticlesExample.Criteria criteria = articlesExample.createCriteria();
        criteria.andAttributeEqualTo(id);
        return articlesMapper.selectByExampleWithBLOBs(articlesExample);
    }

    @Override
    public List<ArticlesWithBLOBs> allArticles() {
        return articlesMapper.selectByExampleWithBLOBs(null);
    }

    @Override
    public ArticlesWithBLOBs selectArticlesById(Integer id) {
        return articlesMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean articleUpdate(ArticlesWithBLOBs articles) {
        int i = articlesMapper.updateByPrimaryKeySelective(articles);
        return i == 1 ? true : false;
    }

    @Override
    public boolean deleteArticles(Integer id) {
        int i = articlesMapper.deleteByPrimaryKey(id);
        return i == 1 ? true : false;
    }

    @Override
    public int insert(ArticlesWithBLOBs articles) {
        articles.setBrowseNumber(0);
        articles.setAnswerNumber(0);
        articlesMapper.insert(articles);
        ArticlesExample articlesExample = new ArticlesExample();
        ArticlesExample.Criteria criteria = articlesExample.createCriteria();
        criteria.andDateEqualTo(articles.getDate());
        List<Articles> articles1 = articlesMapper.selectByExample(articlesExample);
        return articles1.get(0).getId();
    }
}
