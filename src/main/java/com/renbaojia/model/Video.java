package com.renbaojia.model;

import java.util.Date;

public class Video {
    private Integer vId;

    private Integer vScId;

    private Date vDate;

    private String vLocation;

    private String vPath;
    private String vName;

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName;
    }

    public Integer getvId() {
        return vId;
    }

    public void setvId(Integer vId) {
        this.vId = vId;
    }

    public Integer getvScId() {
        return vScId;
    }

    public void setvScId(Integer vScId) {
        this.vScId = vScId;
    }

    public Date getvDate() {
        return vDate;
    }

    public void setvDate(Date vDate) {
        this.vDate = vDate;
    }

    public String getvLocation() {
        return vLocation;
    }

    public void setvLocation(String vLocation) {
        this.vLocation = vLocation == null ? null : vLocation.trim();
    }

    public String getvPath() {
        return vPath;
    }

    public void setvPath(String vPath) {
        this.vPath = vPath == null ? null : vPath.trim();
    }
}