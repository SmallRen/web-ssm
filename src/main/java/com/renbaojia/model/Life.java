package com.renbaojia.model;

public class Life {
    public Life( ) {

    }
    private Integer id;
    public Life(Integer id, String type) {
        this.id = id;
        this.type = type;
    }

    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}