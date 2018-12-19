package com.xjl.oracle.domain;

public class Comment {
    private int commentId;
    private String commentDesc;
    private String commentTime;
    private String commentUserName;
    private int  commentForUser;
    private int commentForArticle;
    private String commentUserImage;

    public String getCommentUserImage() {
        return commentUserImage;
    }

    public void setCommentUserImage(String commentUserImage) {
        this.commentUserImage = commentUserImage;
    }

    public int getCommentForArticle() {
        return commentForArticle;
    }

    public void setCommentForArticle(int commentForArticle) {
        this.commentForArticle = commentForArticle;
    }

    public int getCommentForUser() {

        return commentForUser;
    }

    public void setCommentForUser(int commentForUser) {
        this.commentForUser = commentForUser;
    }

    public String getCommentUserName() {

        return commentUserName;
    }

    public void setCommentUserName(String commentUserName) {
        this.commentUserName = commentUserName;
    }

    public String getCommentTime() {

        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }

    public String getCommentDesc() {

        return commentDesc;
    }

    public void setCommentDesc(String commentDesc) {
        this.commentDesc = commentDesc;
    }

    public int getCommentId() {

        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }
}
