package com.xjl.oracle.dao;

import com.xjl.oracle.domain.Friends;

import java.util.List;

public interface FriendsMapper {
    public void addFriends(Friends friends);
    public List<Friends> findAll();
    public List<Friends> myFriends();
    public void updateStatus(int friendsBId);
}
