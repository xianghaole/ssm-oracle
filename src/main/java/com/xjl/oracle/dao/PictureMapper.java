package com.xjl.oracle.dao;

import com.xjl.oracle.domain.Picture;

import java.util.List;

public interface PictureMapper {
    public List<Picture> findAll(int userId);
    public void addPicture(Picture picture);
}
