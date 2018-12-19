package com.xjl.oracle.domain;

public class Picture {
    private int picId;
    private String picImg;
    private String picDesc;
    private String picTime;
    private int picUserId;
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getPicUserId() {

        return picUserId;
    }

    public void setPicUserId(int picUserId) {
        this.picUserId = picUserId;
    }

    public String getPicTime() {

        return picTime;
    }

    public void setPicTime(String picTime) {
        this.picTime = picTime;
    }

    public String getPicDesc() {

        return picDesc;
    }

    public void setPicDesc(String picDesc) {
        this.picDesc = picDesc;
    }

    public String getPicImg() {

        return picImg;
    }

    public void setPicImg(String picImg) {
        this.picImg = picImg;
    }

    public int getPicId() {

        return picId;
    }

    public void setPicId(int picId) {
        this.picId = picId;
    }
}
