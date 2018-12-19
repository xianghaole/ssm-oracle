package com.xjl.oracle.domain;

public class Friends {
    private int friendsId;
    private String  friendsAName;
    private int friendsBId;
    private String friendsDesc;
    private String friendsTime;
    private int friendsStatus;

    public int getFriendsStatus() {
        return friendsStatus;
    }

    public void setFriendsStatus(int friendsStatus) {
        this.friendsStatus = friendsStatus;
    }

    public String getFriendsTime() {

        return friendsTime;
    }

    public void setFriendsTime(String friendsTime) {
        this.friendsTime = friendsTime;
    }

    public String getFriendsDesc() {

        return friendsDesc;
    }

    public void setFriendsDesc(String friendsDesc) {
        this.friendsDesc = friendsDesc;
    }

    public int getFriendsBId() {

        return friendsBId;
    }

    public void setFriendsBId(int friendsBId) {
        this.friendsBId = friendsBId;
    }

    public String getFriendsAName() {
        return friendsAName;
    }

    public void setFriendsAName(String friendsAName) {
        this.friendsAName = friendsAName;
    }

    public int getFriendsId() {

        return friendsId;
    }

    public void setFriendsId(int friendsId) {
        this.friendsId = friendsId;
    }
}
