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
<c:forEach items="${myFriends}" var="friends">
    <c:if test="${loginUser.userId==friends.friendsBId}">
        <div class="container" style="margin-top: 100px;border-bottom: 1px solid skyblue">

            <div class="row" style="margin-top:30px;">
                <div class="col-md-2" style="height:20px;line-height: 20px; color:red;font-size:17px;">用户名:</div>
                <div class="col-md-10" style="height:20px;line-height: 20px; color:green;font-size:17px;padding-left: 80px">${friends.friendsAName}</div>
            </div>

            <%--<div class="row" style="margin-top:30px;" >--%>
                <%--<div class="col-md-2" style="height:20px;line-height: 20px; color:red;font-size:17px;">用户注册时间:</div>--%>
                <%--<div class="col-md-4" style="height:20px;line-height: 20px; color:green;font-size:17px;padding-left: 80px">${user.startTime}</div>--%>
                <%--<div class="col-md-6"> <button  class="layui-btn layui-btn-warm layui-btn-radius"   >添加好友</button></div>--%>
            <%--</div>--%>
        </div>
</c:if>

</c:forEach>
</body>
</html>
