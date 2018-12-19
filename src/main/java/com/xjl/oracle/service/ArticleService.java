package com.xjl.oracle.service;

import com.xjl.oracle.domain.Article;

import java.util.List;

public interface ArticleService {
    //添加文章
    public void addArticle(Article article);
//    //查询所有文章
//    public List<Article> findAll();
    //查询某一篇具体的文章
    public Article findOne(int articleId);
    //查询某一篇具体的文章(带有作者和分类)
    public Article findOnePotal(int articleId);
    //分页查询所有文章
    public List<Article> findAllWithPage();

    public List<Article> findAll(int userId);
    //删除文章
    public void delete(int articleId);
    //回显文章
    public Article findOneAdmin(int articleId);
    //更新文章
//    public void update(String articleTitle,int articleUserId,int articleItemId,String articleImg,String articleTime,String articleDesc,int articleId);
    //更新尝试二
    public void update2(int articleId,String articleTitle,String articleDesc);
    //文章评论
    public void addComment(String commentDesc);

}
