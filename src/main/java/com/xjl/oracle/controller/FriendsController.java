package com.xjl.oracle.controller;

import com.xjl.oracle.domain.Friends;
import com.xjl.oracle.service.FriendsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/friends")
public class FriendsController {
    @Autowired
    private FriendsService friendsService;
    @RequestMapping("/addFriends")
    public String addFriends(Friends friends){
        friendsService.addFriends(friends);
        return "user/searchFriends";
    }
    @RequestMapping("/findAll")
    public String findAll(Map<String,Object> map){
        List<Friends> friendsList = friendsService.findAll();
        map.put("friendsList",friendsList);
        return "user/friends";

    }
    @RequestMapping("myFriends")
    public String myFriends(Map<String,Object> map){
        List<Friends> myFriends = friendsService.myFriends();
        if(myFriends.size()==0){
            map.put("block","您暂时还没有好友!");
            return "user/myFriends";
        }
        map.put("myFriends",myFriends);
        return "user/myFriends";
    }
    @RequestMapping("updateStatus")
    public String updateStatus(int friendsBId){
        friendsService.updateStatus(friendsBId);
        return "redirect:/friends/myFriends";
    }
}
