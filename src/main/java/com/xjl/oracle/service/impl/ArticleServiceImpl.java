package com.xjl.oracle.service.impl;

import com.xjl.oracle.dao.ArticleMapper;
import com.xjl.oracle.domain.Article;
import com.xjl.oracle.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService{
    @Autowired
    private ArticleMapper articleMapper;
//    @Autowired
//    private UserMapper userMapper;
    @Override
    public void addArticle(Article article) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(new Date());
        article.setArticleTime(format);

//        article.setArticleUserId(article.getUser().getUserId());
        articleMapper.addArticle(article);
    }

//    @Override
//    public List<Article> findAll() {
//        return articleMapper.findAll();
//    }

    @Override
    public Article findOne(int articleId) {
        return articleMapper.findOne(articleId);
    }

    @Override
    public Article findOnePotal(int articleId) {
        return articleMapper.findOnePotal(articleId);
    }

    @Override
    public List<Article> findAllWithPage() {
        return articleMapper.findAllWithPage();
    }

    @Override
    public List<Article> findAll(int userId) {
        //System.out.println(userId);
        return articleMapper.findAll(userId);
    }

    @Override
    public void delete(int articleId) {
        articleMapper.delete(articleId);
    }

    @Override
    public Article findOneAdmin(int articleId) {
        return  articleMapper.findOneAdmin(articleId);

    }

//    @Override
//    public void update(String articleTitle, int articleUserId, int articleItemId, String articleImg, String articleTime, String articleDesc, int articleId) {
//        articleMapper.update(articleTitle,articleUserId,articleItemId,articleImg,articleTime,articleDesc,articleId);
//    }

    @Override
    public void update2(int articleId, String articleTitle,String articleDesc) {
        articleMapper.update2(articleId,articleTitle,articleDesc);
    }

    @Override
    public void addComment(String commentDesc) {
        articleMapper.comment(commentDesc);
    }



//    @Override
//    public void update(Article article) {
//        articleMapper.update(article);
//    }

//    @Override
//    public void update(String articleTitle,String articleImg,String articleTime,String articleDesc,int articleId) {
//        articleMapper.update(articleTitle,articleImg,articleTime,articleDesc,articleId);
//    }
}
