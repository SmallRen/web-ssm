package com.renbaojia.service;

import com.renbaojia.model.Commentaries;

import java.util.List;

/**
 * Created by smallRen on 2017/10/13.
 */
public interface CommentariesService {
    List<Commentaries> all(Integer articlesId);

    String add(Commentaries commentaries);

    void deleteByArticles(Integer id);
}
