package com.xjl.oracle.service.impl;

import com.xjl.oracle.dao.PictureMapper;
import com.xjl.oracle.domain.Picture;
import com.xjl.oracle.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Service
public class PictureServiceImpl implements PictureService{
    @Autowired
    private PictureMapper pictureMapper;
    @Override
    public List<Picture> findAll(int userId) {
        return pictureMapper.findAll(userId);
    }

    @Override
    public void addPicture(Picture picture) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(new Date());
        picture.setPicTime(format);
        pictureMapper.addPicture(picture);
    }
}
