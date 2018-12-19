package com.xjl.oracle.controller;


import com.xjl.oracle.domain.Article;
import com.xjl.oracle.domain.User;
import com.xjl.oracle.service.ArticleService;
import com.xjl.oracle.service.UserService;
import com.xjl.oracle.utils.Md5;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller

@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private ArticleService articleService;
    @RequestMapping("register")
    public String register(User user, MultipartFile file, HttpSession session) throws IOException {
        String passwordByMd5 = Md5.MD5(user.getPassword());
        user.setPassword(passwordByMd5);
        String filename = file.getOriginalFilename();
        ServletContext servletContext = session.getServletContext();
        String realPath = servletContext.getRealPath("/upload");
        File upload = new File(realPath);
        if(!upload.exists()){
            upload.mkdirs();
        }
        file.transferTo(new File(realPath+"/"+filename));
        user.setUserImage("upload/"+filename);
        userService.register(user);
        return "user/login";
    }

    @RequestMapping("/findOne")
    public User findOne(int userId) {
        return userService.findOne(userId);
    }
    @RequestMapping("/login")
    public String login(HttpSession session, HttpServletRequest request,Map<String,Object> map){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String Md5Password = Md5.MD5(password);
        User loginUser = userService.login(username,Md5Password);
        if(loginUser!=null){
            session.setAttribute("loginUser",loginUser);
//            List<Article> articleList = articleService.findAllWithPage();
//            map.put("article",articleList);
            return "user/default";
        }else{
            session.setAttribute("error","用户名或者密码错误");
            return "user/login";
        }
    }
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "user/login";
    }
    //修改密码的操作
    public String updatePassword(String oldPassword,String newPassword){
        userService.updatePassword(oldPassword,newPassword);
        return "password";
    }
    //注销
    @RequestMapping("/toSession")
    public String toSession(HttpSession session){
        session.removeAttribute("loginUser");
        return "user/login";
    }
    //搜索好友(模糊查询)
    @RequestMapping("/searchFriends")
    public String searchFriends(String username,Map<String,Object> map){
        String username1 = "%"+username +"%";
        List<User> users = userService.searchFriends(username1);
        if(users.size()==0){
            map.put("message","没有相关用户");
            return "user/searchFriends";
        }else{
            map.put("users",users);
            return "forward:toFriends";
        }
    }
    @RequestMapping("/findUserByUsername")
    @ResponseBody
    public Map<String, Object> findUserByUsername(String username,HttpServletRequest request) throws UnsupportedEncodingException {


        username = new String(username.getBytes("ISO-8859-1"), "utf-8");
        //System.out.println(username);
        Map<String,Object> map = new HashMap<String,Object>();
        int countUser = userService.findUserByUsername(username);
        if(countUser==1){
            map.put("count",1);
            return map;
        }else{
            map.put("count",0);
            return map;
        }
    }
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "user/register";
    }
    @RequestMapping("/toIndex")
    public String toIndex(){
        return "user/default";
    }
    @RequestMapping("/toAbout")
    public String toAbout(){
        return "user/about";
    }
    @RequestMapping("/toAlbum")
    public String toAlbum(){
        return "user/album";
    }
    @RequestMapping("/toDetail")
    public String toDetail(){
        return "user/detail";
    }
    @RequestMapping("/toLeacots")
    public String toLeacots(){
        return "user/leacots";
    }
    @RequestMapping("/toWhisper")
    public String toWhisper(){
        return "user/whisper";
    }
    @RequestMapping("/toAddArticle")
    public String toAddArticle(){
        return "user/addArticle";
    }
    @RequestMapping("/toFriends")
    public String toFriends(){
        return "user/searchFriends";
    }

}
