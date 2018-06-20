package com.renbaojia.controller;

import com.renbaojia.model.Weather;
import com.renbaojia.service.WeatherService;
import com.renbaojia.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by smallRen on 2017/8/7.
 */
@RestController
public class WeatherController {
    @Autowired
    WeatherService weatherService;
    @GetMapping(value = "/address", produces = "text/html;charset=UTF-8")
    public String location(@RequestParam("city") String location) {
        String weatherJson = "";
        if (weatherService.City(location)) {
            Weather weather = weatherService.CityWeather(location);
            String time1 = weather.getTime();
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String time2 = df.format(new Date());// new Date()为获取当前系统时间
            long[] distanceTimes = TimeUtil.getDistanceTimes(time1, time2);
            if (distanceTimes[0] > 0) {
                String cityJson = cityJson(location);
                weatherService.updateWeather(new Weather(weather.getId(), location, time2, cityJson));
                weatherJson = cityJson;
            }
            // long[] times = {day, hour, min, sec};
            if (distanceTimes[0] == 0) {
                if (distanceTimes[1] > 25) {
                    String cityjson = cityJson(location);
                    weatherService.updateWeather(new Weather(weather.getId(), location, time2, cityjson));
                    weatherJson = cityjson;
                } else {
                    weatherJson = weather.getJson();
                }
            }
        } else {
            String cityjson = cityJson(location);
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            String time = df.format(new Date());// new Date()为获取当前系统时间
            weatherService.insertWeather(new Weather(location, time, cityjson));
            weatherJson = cityjson;
        }
        return weatherJson;
    }

    private String cityJson(String city) {
        String json = "";
        try {
            URL url = new URL("http://v.juhe.cn/weather/index?format=2&cityname=" + URLEncoder.encode(city, "utf-8") + "&key=92a2f9fe54360cf1c705d354dd76aa53");
            System.out.println(url);
            HttpURLConnection urlCon = (HttpURLConnection) url.openConnection();
            urlCon.connect();
            InputStream is = urlCon.getInputStream();
            BufferedReader buffer = new BufferedReader(new InputStreamReader(is, Charset.forName("utf-8")));
            StringBuffer bs = new StringBuffer();
            String l = null;
            while ((l = buffer.readLine()) != null) {
                bs.append(l);
            }
            json = bs.toString();
            System.out.println(json);
        } catch (IOException e) {
            System.out.println(e);
        }
        return json;
    }

}
