package com.renbaojia.model;

public class Weather {
    private Integer id;

    private String city;

    private String time;
    public Weather(){

    }
    public Weather(String city, String time, String json) {
        this.city = city;
        this.time = time;
        this.json = json;
    }

    public Weather(Integer id, String city, String time, String json) {
        this.id = id;
        this.city = city;
        this.time = time;
        this.json = json;
    }

    private String json;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getJson() {
        return json;
    }

    public void setJson(String json) {
        this.json = json == null ? null : json.trim();
    }
}