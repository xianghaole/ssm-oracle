package com.xjl.oracle.dao;

import com.xjl.oracle.domain.Comment;

import java.util.List;

public interface CommentMapper {
    public List<Comment> findAll();
    public void addComment(Comment comment);
}
