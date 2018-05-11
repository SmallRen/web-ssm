package com.renbaojia.service;

import com.renbaojia.model.Reverts;

import java.util.List;

/**
 * Created by smallRen on 2017/10/25.
 */
public interface RevertsService {
   List<Reverts> selectArticleIdAndCommId(Integer articleId, Integer commId);

    void insertRevert(Reverts reverts);

    void deleteByArticles(Integer id);
}
