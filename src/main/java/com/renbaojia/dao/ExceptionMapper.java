package com.renbaojia.dao;

import com.renbaojia.model.Exception;
import com.renbaojia.model.ExceptionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ExceptionMapper {
    long countByExample(ExceptionExample example);

    int deleteByExample(ExceptionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Exception record);

    int insertSelective(Exception record);

    List<Exception> selectByExample(ExceptionExample example);

    Exception selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Exception record, @Param("example") ExceptionExample example);

    int updateByExample(@Param("record") Exception record, @Param("example") ExceptionExample example);

    int updateByPrimaryKeySelective(Exception record);

    int updateByPrimaryKey(Exception record);
}