package com.renbaojia.dao;

import com.renbaojia.model.Articles;
import com.renbaojia.model.ArticlesExample;
import com.renbaojia.model.ArticlesWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticlesMapper {
    long countByExample(ArticlesExample example);

    int deleteByExample(ArticlesExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ArticlesWithBLOBs record);

    int insertSelective(ArticlesWithBLOBs record);

    List<ArticlesWithBLOBs> selectByExampleWithBLOBs(ArticlesExample example);

    List<Articles> selectByExample(ArticlesExample example);

    ArticlesWithBLOBs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ArticlesWithBLOBs record, @Param("example") ArticlesExample example);

    int updateByExampleWithBLOBs(@Param("record") ArticlesWithBLOBs record, @Param("example") ArticlesExample example);

    int updateByExample(@Param("record") Articles record, @Param("example") ArticlesExample example);

    int updateByPrimaryKeySelective(ArticlesWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ArticlesWithBLOBs record);

    int updateByPrimaryKey(Articles record);
}