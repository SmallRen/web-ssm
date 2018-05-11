package com.renbaojia.dao;

import com.renbaojia.model.SpaceContent;
import com.renbaojia.model.SpaceContentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SpaceContentMapper {
    long countByExample(SpaceContentExample example);

    int deleteByExample(SpaceContentExample example);

    int deleteByPrimaryKey(Integer scId);

    int insert(SpaceContent record);

    int insertSelective(SpaceContent record);

    List<SpaceContent> selectByExample(SpaceContentExample example);
    List<SpaceContent> allSelectByExample(SpaceContentExample example);
    SpaceContent selectByPrimaryKey(Integer scId);

    int updateByExampleSelective(@Param("record") SpaceContent record, @Param("example") SpaceContentExample example);

    int updateByExample(@Param("record") SpaceContent record, @Param("example") SpaceContentExample example);

    int updateByPrimaryKeySelective(SpaceContent record);

    int updateByPrimaryKey(SpaceContent record);
}