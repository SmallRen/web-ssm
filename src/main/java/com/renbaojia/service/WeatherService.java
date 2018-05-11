package com.renbaojia.service;

import com.renbaojia.model.Weather;

/**
 * Created by smallRen on 2017/8/7.
 */
public interface WeatherService {
    boolean City(String city);

    Weather CityWeather(String city);

    void insertWeather(Weather weather);

    void updateWeather(Weather weather);
}
