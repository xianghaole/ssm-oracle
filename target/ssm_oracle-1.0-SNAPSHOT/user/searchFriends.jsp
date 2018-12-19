<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/12/3
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>博客后台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../res/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../res/css/iconfont.css" >
    <script src="../res/js/jquery.min.js"></script>
    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../res/layer/layer.js"></script>
    <script src="../res/layui/layui.js"></script>

</head>
<body>
<form class="form-horizontal" style="margin-top:200px;" action="${pageContext.request.contextPath}/user/searchFriends" method="post">

    <div class="form-group">
        <label for="inputPassword" class="col-md-2 control-label">请输入好友名:</label>
        <div class="col-md-6">
            <input type="text" class="form-control" name="username" id="inputPassword" required>
        </div>
        <div class="col-md-4">
            <button class="layui-btn layui-btn-normal layui-btn-radius"   >查询</button>
        </div>
    </div>

</form>
<c:forEach items="${users}" var="user">
    <form action="${pageContext.request.contextPath}/friends/addFriends" method="post">
        <input type="hidden" name="friendsAName" value="${loginUser.username}">
        <input type="hidden" name="friendsBId" value="${user.userId}">
        <input type="hidden" name="friendsDesc" value="你好">
    <div class="container" style="margin-top: 100px;border-bottom: 1px solid skyblue">
        <div class="row">
            <div class="col-md-2" style="height:200px;line-height: 200px; color:red;font-size:17px;">用户头像:</div>
            <div class="col-md-10"><img src="${pageContext.request.contextPath}/${user.userImage}" alt="" width="200" height="200" style="border-radius: 50%"></div>
        </div>
        <div class="row" style="margin-top:30px;">
            <div class="col-md-2" style="height:20px;line-height: 20px; color:red;font-size:17px;">用户名:</div>
            <div class="col-md-10" style="height:20px;line-height: 20px; color:green;font-size:17px;padding-left: 80px">${user.username}</div>
        </div>

        <div class="row" style="margin-top:30px;" >
            <div class="col-md-2" style="height:20px;line-height: 20px; color:red;font-size:17px;">用户注册时间:</div>
            <div class="col-md-4" style="height:20px;line-height: 20px; color:green;font-size:17px;padding-left: 80px">${user.startTime}</div>
            <div class="col-md-6"> <button  class="layui-btn layui-btn-warm layui-btn-radius"   >添加好友</button></div>
        </div>
    </div>
    </form>

</c:forEach>
</body>
</html>
