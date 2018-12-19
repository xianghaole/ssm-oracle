package com.xjl.oracle.controller;

import com.xjl.oracle.domain.Picture;
import com.xjl.oracle.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/picture")
public class PictureController {
    @Autowired
    private PictureService pictureService;
    @RequestMapping("/findAll")
    public String findAll(int userId,Map<String,Object> map){
        List<Picture> pictureList = pictureService.findAll(userId);
        if(pictureList.size()==0){
            map.put("message","您的相册空间是空的哟,赶快上传图片吧");
            return "user/album";
        }
        map.put("pictureList",pictureList);
        return "user/album";
    }
    @RequestMapping("/toAddPicture")
    public String toAddPicture(){
        return "user/addPicture";
    }
    @RequestMapping("/addPicture")
    public String addPicture(int userId, Picture picture, MultipartFile file, HttpSession session) throws IOException {
        picture.setPicUserId(userId);
        String filename = file.getOriginalFilename();
        ServletContext servletContext = session.getServletContext();
        String realPath = servletContext.getRealPath("/upload");
        File upload = new File(realPath);
        if(!upload.exists()){
            upload.mkdirs();
        }
        file.transferTo(new File(realPath+"/"+filename));
        picture.setPicImg("upload/"+filename);
        pictureService.addPicture(picture);
        return "redirect:/picture/findAll?userId="+userId;

    }
}
