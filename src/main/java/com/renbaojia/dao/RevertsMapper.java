package com.renbaojia.dao;

import com.renbaojia.model.Reverts;
import com.renbaojia.model.RevertsExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RevertsMapper {
    long countByExample(RevertsExample example);

    int deleteByExample(RevertsExample example);

    int deleteByPrimaryKey(Integer revertId);

    int insert(Reverts record);

    int insertSelective(Reverts record);

    List<Reverts> selectByExample(RevertsExample example);

    List<Reverts> allSelectByExample(RevertsExample example);

    Reverts selectByPrimaryKey(Integer revertId);

    int updateByExampleSelective(@Param("record") Reverts record, @Param("example") RevertsExample example);

    int updateByExample(@Param("record") Reverts record, @Param("example") RevertsExample example);

    int updateByPrimaryKeySelective(Reverts record);

    int updateByPrimaryKey(Reverts record);
}