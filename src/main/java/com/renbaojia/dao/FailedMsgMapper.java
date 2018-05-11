package com.renbaojia.dao;

import com.renbaojia.model.FailedMsg;
import com.renbaojia.model.FailedMsgExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FailedMsgMapper {
    long countByExample(FailedMsgExample example);

    int deleteByExample(FailedMsgExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(FailedMsg record);

    int insertSelective(FailedMsg record);

    List<FailedMsg> selectByExample(FailedMsgExample example);

    List<FailedMsg> selectByExampleUserInfo(FailedMsgExample example);

    FailedMsg selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") FailedMsg record, @Param("example") FailedMsgExample example);

    int updateByExample(@Param("record") FailedMsg record, @Param("example") FailedMsgExample example);

    int updateByPrimaryKeySelective(FailedMsg record);

    int updateByPrimaryKey(FailedMsg record);
}