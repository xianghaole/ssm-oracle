package com.xjl.oracle.service.impl;

import com.xjl.oracle.dao.FriendsMapper;
import com.xjl.oracle.domain.Friends;
import com.xjl.oracle.service.FriendsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class FriendsServiceImpl implements FriendsService{
@Autowired
private FriendsMapper friendsMapper;
    @Override
    public void addFriends(Friends friends) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(new Date());
        friends.setFriendsTime(format);
        friends.setFriendsStatus(0);
        friendsMapper.addFriends(friends);
    }

    @Override
    public List<Friends> findAll() {
        return friendsMapper.findAll();
    }

    @Override
    public List<Friends> myFriends() {
        return friendsMapper.myFriends();
    }

    @Override
    public void updateStatus(int friendsBId) {
        friendsMapper.updateStatus(friendsBId);
    }
}
