package com.xjl.oracle.service;

import com.xjl.oracle.domain.Comment;

import java.util.List;

public interface CommentService {
    public List<Comment> findAll();
    public void addComment(Comment comment);
}
