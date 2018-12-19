package com.xjl.oracle.domain;

import java.util.List;

public class Article {
    private int articleId;
    private String articleTitle;
    private String articleImg;
    private String articleDesc;
    private String articleTime;
    private int articleItemId;
    private int articleUserId;
    private User user;



    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getArticleUserId() {

        return articleUserId;
    }

    public void setArticleUserId(int articleUserId) {
        this.articleUserId = articleUserId;
    }

    private Item item;

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public int getArticleItemId() {

        return articleItemId;
    }

    public void setArticleItemId(int articleItemId) {
        this.articleItemId = articleItemId;
    }

    public String getArticleTime() {

        return articleTime;
    }

    public void setArticleTime(String articleTime) {
        this.articleTime = articleTime;
    }

    public String getArticleDesc() {

        return articleDesc;
    }

    public void setArticleDesc(String articleDesc) {
        this.articleDesc = articleDesc;
    }

    public String getArticleImg() {

        return articleImg;
    }

    public void setArticleImg(String articleImg) {
        this.articleImg = articleImg;
    }

    public String getArticleTitle() {

        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public int getArticleId() {

        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }
}
