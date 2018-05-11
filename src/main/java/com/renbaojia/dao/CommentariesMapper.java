package com.renbaojia.dao;

import com.renbaojia.model.Commentaries;
import com.renbaojia.model.CommentariesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentariesMapper {
    long countByExample(CommentariesExample example);

    int deleteByExample(CommentariesExample example);

    int deleteByPrimaryKey(Integer commId);

    int insert(Commentaries record);

    int insertSelective(Commentaries record);
    List<Commentaries> selectByExample(CommentariesExample example);
    List<Commentaries> allSelectByExample(CommentariesExample example);
    Commentaries selectByPrimaryKey(Integer commId);

    int updateByExampleSelective(@Param("record") Commentaries record, @Param("example") CommentariesExample example);

    int updateByExample(@Param("record") Commentaries record, @Param("example") CommentariesExample example);

    int updateByPrimaryKeySelective(Commentaries record);

    int updateByPrimaryKey(Commentaries record);
}