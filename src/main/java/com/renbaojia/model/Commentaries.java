package com.renbaojia.model;

public class Commentaries {
    private Integer commId;

    private Integer articlesId;

    private String date;

    private Integer userId;

    private String content;

    private Integer revertNumber;
    private User user;

    public User getUser() {
        return user;
    }

    public Integer getArticlesId() {
        return articlesId;
    }

    public void setArticlesId(Integer articlesId) {
        this.articlesId = articlesId;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getCommId() {
        return commId;
    }

    public void setCommId(Integer commId) {
        this.commId = commId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getRevertNumber() {
        return revertNumber;
    }

    public void setRevertNumber(Integer revertNumber) {
        this.revertNumber = revertNumber;
    }
}