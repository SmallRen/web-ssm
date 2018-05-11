package com.renbaojia.model;

import java.util.List;

public class SpaceContent {
    private Integer scId;

    private String scDate;

    private String scDateDescribe;

    private String scLocation;

    private String scDescribe;
    private List<Picture> pictureList;
    private List<Video> videoList;


    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    public List<Video> getVideoList() {
        return videoList;
    }

    public void setVideoList(List<Video> videoList) {
        this.videoList = videoList;
    }

    public Integer getScId() {
        return scId;
    }

    public void setScId(Integer scId) {
        this.scId = scId;
    }

    public String getScDate() {
        return scDate;
    }

    public void setScDate(String scDate) {
        this.scDate = scDate == null ? null : scDate.trim();
    }

    public String getScDateDescribe() {
        return scDateDescribe;
    }

    public void setScDateDescribe(String scDateDescribe) {
        this.scDateDescribe = scDateDescribe == null ? null : scDateDescribe.trim();
    }

    public String getScLocation() {
        return scLocation;
    }

    public void setScLocation(String scLocation) {
        this.scLocation = scLocation == null ? null : scLocation.trim();
    }

    public String getScDescribe() {
        return scDescribe;
    }

    public void setScDescribe(String scDescribe) {
        this.scDescribe = scDescribe == null ? null : scDescribe.trim();
    }
}