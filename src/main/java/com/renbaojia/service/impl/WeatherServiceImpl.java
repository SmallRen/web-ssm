package com.renbaojia.service.impl;

import com.renbaojia.dao.WeatherMapper;
import com.renbaojia.model.Weather;
import com.renbaojia.model.WeatherExample;
import com.renbaojia.service.WeatherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/8/7.
 */
@Service
public class WeatherServiceImpl implements WeatherService {
    @Autowired
    WeatherMapper weatherMapper;
    @Override
    public boolean City(String city) {
        System.out.println();
        WeatherExample weatherExample = new WeatherExample();
        WeatherExample.Criteria criteria = weatherExample.createCriteria();
        criteria.andCityEqualTo(city);
        List<Weather> weathers = weatherMapper.selectByExample(weatherExample);
        if (weathers.size() != 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public Weather CityWeather(String city) {
        WeatherExample weatherExample = new WeatherExample();
        WeatherExample.Criteria criteria = weatherExample.createCriteria();
        criteria.andCityEqualTo(city);
        List<Weather> weathers = weatherMapper.selectByExample(weatherExample);
        return weathers.get(0);
    }

    @Override
    public void insertWeather(Weather weather) {
        weatherMapper.insert(weather);
    }

    @Override
    public void updateWeather(Weather weather) {
        weatherMapper.updateByPrimaryKeySelective(weather);


    }
}
