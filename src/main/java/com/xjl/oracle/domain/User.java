package com.xjl.oracle.domain;

import java.util.List;

public class User {
    private int userId;
    private String username;
    private String password;
    private String userImage;
    private String startTime;
    private List<Article> list;

    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    private List<Picture> pictureList;

    public List<Article> getList() {
        return list;
    }

    public void setList(List<Article> list) {
        this.list = list;
    }

    public String  getStartTime() {
        return startTime;
    }
    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;

    }


    public String getPassword() {

        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {

        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getUserId() {

        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}


