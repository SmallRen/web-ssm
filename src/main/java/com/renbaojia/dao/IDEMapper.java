package com.renbaojia.dao;

import com.renbaojia.model.IDE;
import com.renbaojia.model.IDEExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IDEMapper {
    long countByExample(IDEExample example);

    int deleteByExample(IDEExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(IDE record);

    int insertSelective(IDE record);

    List<IDE> selectByExample(IDEExample example);

    IDE selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") IDE record, @Param("example") IDEExample example);

    int updateByExample(@Param("record") IDE record, @Param("example") IDEExample example);

    int updateByPrimaryKeySelective(IDE record);

    int updateByPrimaryKey(IDE record);
}