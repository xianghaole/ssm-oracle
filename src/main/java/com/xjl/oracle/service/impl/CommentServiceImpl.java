package com.xjl.oracle.service.impl;

import com.xjl.oracle.dao.CommentMapper;
import com.xjl.oracle.domain.Comment;
import com.xjl.oracle.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Service
public class CommentServiceImpl implements CommentService{
@Autowired
private CommentMapper commentMapper;
    @Override
    public List<Comment> findAll() {
        return commentMapper.findAll();
    }

    @Override
    public void addComment(Comment comment) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(new Date());
        comment.setCommentTime(format);
        commentMapper.addComment(comment);
    }
}
