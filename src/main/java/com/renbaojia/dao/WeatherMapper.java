package com.renbaojia.dao;

import com.renbaojia.model.Weather;
import com.renbaojia.model.WeatherExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WeatherMapper {
    long countByExample(WeatherExample example);

    int deleteByExample(WeatherExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Weather record);

    int insertSelective(Weather record);

    List<Weather> selectByExample(WeatherExample example);

    Weather selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Weather record, @Param("example") WeatherExample example);

    int updateByExample(@Param("record") Weather record, @Param("example") WeatherExample example);

    int updateByPrimaryKeySelective(Weather record);

    int updateByPrimaryKey(Weather record);
}