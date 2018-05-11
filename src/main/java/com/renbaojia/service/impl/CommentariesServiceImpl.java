package com.renbaojia.service.impl;

import com.renbaojia.dao.ArticlesMapper;
import com.renbaojia.dao.CommentariesMapper;
import com.renbaojia.model.Articles;
import com.renbaojia.model.ArticlesWithBLOBs;
import com.renbaojia.model.Commentaries;
import com.renbaojia.model.CommentariesExample;
import com.renbaojia.service.CommentariesService;
import com.renbaojia.utils.RelativeDateFormat;
import com.renbaojia.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/10/13.
 */
@Service
public class CommentariesServiceImpl implements CommentariesService {
    @Autowired
    CommentariesMapper commentariesMapper;
    @Autowired
    ArticlesMapper articlesMapper;

    @Override
    public List<Commentaries> all(Integer articlesId) {
        CommentariesExample commentariesExample = new CommentariesExample();
        CommentariesExample.Criteria criteria = commentariesExample.createCriteria();
        criteria.andArticlesIdEqualTo(articlesId);
        List<Commentaries> commentaries = commentariesMapper.allSelectByExample(commentariesExample);
        for (Commentaries commentary : commentaries) {
            commentary.setDate(RelativeDateFormat.format(commentary.getDate()));
        }
        return commentaries;
    }

    @Override
    public String add(Commentaries commentaries) {
        ArticlesWithBLOBs articles = articlesMapper.selectByPrimaryKey(commentaries.getArticlesId());
        articles.setAnswerNumber(articles.getAnswerNumber() + 1);
        articlesMapper.updateByPrimaryKeySelective(articles);
        commentaries.setRevertNumber(0);
        commentaries.setDate(TimeUtil.gettime());
        commentariesMapper.insert(commentaries);
        CommentariesExample commentariesExample = new CommentariesExample();
        CommentariesExample.Criteria criteria = commentariesExample.createCriteria();
        criteria.andUserIdEqualTo(commentaries.getUserId());
        criteria.andDateEqualTo(commentaries.getDate());
        List<Commentaries> commentaries1 = commentariesMapper.selectByExample(commentariesExample);
        if (commentaries1.size() == 1) {
            return commentaries1.get(0).getCommId() + "";
        }
        return "false";
    }

    @Override
    public void deleteByArticles(Integer id) {
        CommentariesExample commentariesExample = new CommentariesExample();
        CommentariesExample.Criteria criteria = commentariesExample.createCriteria();
        criteria.andArticlesIdEqualTo(id);
        commentariesMapper.deleteByExample(commentariesExample);
    };

}
