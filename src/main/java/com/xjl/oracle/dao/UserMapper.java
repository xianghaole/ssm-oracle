package com.xjl.oracle.dao;

import com.xjl.oracle.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    //注册
    public void register(User user);
    //查询
    public User findOne(int userId);
    //登录
    public User login(@Param("username") String username, @Param("password") String password);
    //修改密码的操作
    public void updatePassword(@Param("oldPassword") String oldPassword,@Param("newPassword") String newPassword);
    //搜索好友的功能(模糊查询)
    public List<User> searchFriends(String username);
    public int findUserByUsername(String username);
}
