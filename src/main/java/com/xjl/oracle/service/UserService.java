package com.xjl.oracle.service;

import com.xjl.oracle.domain.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    //注册的接口
    public void register(User user);
    //查询接口
    public User findOne(int userId);
    //登录的接口
    public User login(String username,String password);
    //修改密码的操作
    public void updatePassword(String oldPassword,String newPassword);
    //查找好友的功能(模糊查询)
    public List<User> searchFriends(String username);
    //根据用户名查询数据库中有没有这条记录
    public int findUserByUsername(String username);
}
