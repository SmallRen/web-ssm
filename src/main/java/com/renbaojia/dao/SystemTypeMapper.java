package com.renbaojia.dao;

import com.renbaojia.model.SystemType;
import com.renbaojia.model.SystemTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface SystemTypeMapper {
    long countByExample(SystemTypeExample example);

    int deleteByExample(SystemTypeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SystemType record);

    int insertSelective(SystemType record);

    List<SystemType> selectByExample(SystemTypeExample example);

    SystemType selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SystemType record, @Param("example") SystemTypeExample example);

    int updateByExample(@Param("record") SystemType record, @Param("example") SystemTypeExample example);

    int updateByPrimaryKeySelective(SystemType record);

    int updateByPrimaryKey(SystemType record);
}