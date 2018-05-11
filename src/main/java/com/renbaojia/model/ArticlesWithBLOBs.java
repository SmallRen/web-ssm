package com.renbaojia.model;

public class ArticlesWithBLOBs extends Articles {
    private String thtmeImg;

    private String content;

    public String getThtmeImg() {
        return thtmeImg;
    }

    public void setThtmeImg(String thtmeImg) {
        this.thtmeImg = thtmeImg;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}