package com.renbaojia.service.impl;

import com.renbaojia.dao.ArticlesMapper;
import com.renbaojia.dao.CommentariesMapper;
import com.renbaojia.dao.RevertsMapper;
import com.renbaojia.model.Articles;
import com.renbaojia.model.Commentaries;
import com.renbaojia.model.Reverts;
import com.renbaojia.model.RevertsExample;
import com.renbaojia.service.RevertsService;
import com.renbaojia.utils.RelativeDateFormat;
import com.renbaojia.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/10/25.
 */
@Service
public class RevertsServiceImpl implements RevertsService {
    @Autowired
    RevertsMapper revertsMapper;
    @Autowired
    CommentariesMapper commentariesMapper;

    @Override
    public List<Reverts> selectArticleIdAndCommId(Integer articleId, Integer commId) {
        RevertsExample revertsExample = new RevertsExample();
        RevertsExample.Criteria criteria = revertsExample.createCriteria();
        criteria.andArticlesIdEqualTo(articleId);
        criteria.andCommentariesIdEqualTo(commId);
        List<Reverts> reverts = revertsMapper.allSelectByExample(revertsExample);
        for (Reverts reverts1 : reverts) {
            reverts1.setDate(RelativeDateFormat.format(reverts1.getDate()));
        }
        return reverts;
    }

    @Override
    public void insertRevert(Reverts reverts) {
        Commentaries commentaries = commentariesMapper.selectByPrimaryKey(reverts.getCommentariesId());
        commentaries.setRevertNumber(commentaries.getRevertNumber() + 1);
        commentariesMapper.updateByPrimaryKeySelective(commentaries);
        reverts.setDate(TimeUtil.gettime());
        revertsMapper.insert(reverts);
    }

    @Override
    public void deleteByArticles(Integer id) {
        RevertsExample revertsExample = new RevertsExample();
        RevertsExample.Criteria criteria = revertsExample.createCriteria();
        criteria.andArticlesIdEqualTo(id);
        revertsMapper.deleteByExample(revertsExample);
    }
}
