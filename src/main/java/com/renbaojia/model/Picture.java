package com.renbaojia.model;

import java.util.Date;

public class Picture {
    private Integer pId;

    private Integer pScId;

    private Date pDate;

    private String pLocation;

    private String pPath;
    private String pName;

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getpScId() {
        return pScId;
    }

    public void setpScId(Integer pScId) {
        this.pScId = pScId;
    }

    public Date getpDate() {
        return pDate;
    }

    public void setpDate(Date pDate) {
        this.pDate = pDate;
    }

    public String getpLocation() {
        return pLocation;
    }

    public void setpLocation(String pLocation) {
        this.pLocation = pLocation == null ? null : pLocation.trim();
    }

    public String getpPath() {
        return pPath;
    }

    public void setpPath(String pPath) {
        this.pPath = pPath == null ? null : pPath.trim();
    }
}