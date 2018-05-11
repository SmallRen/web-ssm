package com.renbaojia.dao;

import com.renbaojia.model.Picture;
import com.renbaojia.model.PictureExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PictureMapper {
    long countByExample(PictureExample example);

    int deleteByExample(PictureExample example);

    int deleteByPrimaryKey(Integer pId);

    int insert(Picture record);
    int insertSelective(Picture record);
    List<Picture> selectList(Integer pId);
    List<Picture> selectByExample(PictureExample example);

    Picture selectByPrimaryKey(Integer pId);

    int updateByExampleSelective(@Param("record") Picture record, @Param("example") PictureExample example);

    int updateByExample(@Param("record") Picture record, @Param("example") PictureExample example);

    int updateByPrimaryKeySelective(Picture record);

    int updateByPrimaryKey(Picture record);
}