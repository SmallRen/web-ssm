package com.renbaojia.model;



public class Reverts {
    private Integer revertId;

    private Integer articlesId;

    private Integer commentariesId;

    private Integer userId;

    private String date;

    private String content;
    private User user;
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }



    public Integer getRevertId() {
        return revertId;
    }

    public void setRevertId(Integer revertId) {
        this.revertId = revertId;
    }

    public Integer getArticlesId() {
        return articlesId;
    }

    public void setArticlesId(Integer articlesId) {
        this.articlesId = articlesId;
    }

    public Integer getCommentariesId() {
        return commentariesId;
    }

    public void setCommentariesId(Integer commentariesId) {
        this.commentariesId = commentariesId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}