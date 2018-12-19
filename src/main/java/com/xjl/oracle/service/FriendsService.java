package com.xjl.oracle.service;

import com.xjl.oracle.domain.Friends;

import java.util.List;

public interface FriendsService {
    public void addFriends(Friends friends);
    public List<Friends> findAll();
    public List<Friends> myFriends();
    public void updateStatus(int friendsBId);
}
