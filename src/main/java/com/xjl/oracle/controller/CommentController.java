package com.xjl.oracle.controller;

import com.xjl.oracle.domain.Comment;
import com.xjl.oracle.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;
    @RequestMapping("/findAll")
    public String findAll(Map<String,Object> map){
        List<Comment> commentList = commentService.findAll();
        map.put("commentList",commentList);
        return "user/detail";
    }
    @RequestMapping("/addComment")
    public String addComment(Comment comment, HttpServletRequest request){
        String articleId = request.getParameter("articleId");
        System.out.println(articleId);
        commentService.addComment(comment);
        return "redirect:/article/findOnePotal?articleId="+articleId;
    }
}
