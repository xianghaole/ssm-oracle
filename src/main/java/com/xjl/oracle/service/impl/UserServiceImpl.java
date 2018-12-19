package com.xjl.oracle.service.impl;

import com.xjl.oracle.dao.UserMapper;
import com.xjl.oracle.domain.User;
import com.xjl.oracle.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public void register(User user) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(new Date());
        user.setStartTime(format);
        userMapper.register(user);
    }
    @Override
    public User findOne(int userId) {
        return userMapper.findOne(userId);
    }

    @Override
    public User login(String username,String password) {
        return userMapper.login(username,password);
    }

    @Override
    public void updatePassword(String oldPassword, String newPassword) {
        userMapper.updatePassword(oldPassword,newPassword);
    }

    @Override
    public List<User> searchFriends(String username) {
        return userMapper.searchFriends(username);
    }

    @Override
    public int findUserByUsername(String username) {
        return userMapper.findUserByUsername(username);
    }
}
