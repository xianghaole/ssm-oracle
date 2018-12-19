package com.xjl.oracle.service;

import com.xjl.oracle.domain.Picture;

import java.util.List;

public interface PictureService {
    //查询全部
    public List<Picture> findAll(int userId);
    //上传图片
    public void addPicture(Picture picture);
}
