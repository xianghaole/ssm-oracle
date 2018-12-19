package com.xjl.oracle.dao;

import com.xjl.oracle.domain.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper {
    public void addArticle(Article article);
//    public List<Article> findAll();
    public Article findOne(int articleId);
    public Article findOnePotal(int articleId);
    public List<Article> findAllWithPage();

    public List<Article> findAll(int userId);
    //删除文章
    public void delete(int articleId);
    public Article findOneAdmin(int articleId);
    //更新
//    public void update(@Param("articleTitle") String articleTitle ,@Param("articleUserId")int articleUserId, @Param("articleItemId")int articleItemId, @Param("articleDesc")String articleDesc,@Param("articleImg") String articleImg, @Param("articleTime") String articleTime
//    , @Param("articleId")int articleId);
    //更新尝试二
      public void update2(@Param("articleId") int articleId,@Param("articleTitle") String articleTitle,@Param("articleDesc") String articleDesc);
      //文章评论
    public void comment(String commentDesc);

}
