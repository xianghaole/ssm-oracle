package com.xjl.oracle.domain;

import java.util.List;

public class Item {
    private int itemId;
    private String itemName;
    private List<Article> listArticle;

    public List<Article> getListArticle() {
        return listArticle;
    }

    public void setListArticle(List<Article> listArticle) {
        this.listArticle = listArticle;
    }

    public String getItemName() {

        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getItemId() {

        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }
}
