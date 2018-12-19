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
    <title>好友管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../res/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../res/css/iconfont.css" >
    <script src="../res/js/jquery.min.js"></script>
    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../res/layer/layer.js"></script>
    <script src="../res/layui/layui.js"></script>
    <script>
        function refresh(){
            window.location.reload();
        }
        setTimeout('refresh()', 5000);
    </script>
    <script >
        function isAgree(articleId){
            layer.confirm('您确认要同意吗？', {
                btn: ['确定','取消'] //按钮
            }, function(){
                location.href = "${pageContext.request.contextPath}/friends/updateStatus?friendsBId="+${loginUser.userId};
                layer.msg('同意成功', {icon: 1});
            }, function(){
                layer.msg('取消同意', {icon: 1});
            });
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row" style="margin-top:20px;">
        <div class="col-md-8">
            <a href="${pageContext.request.contextPath}/user/toFriends"><button class="layui-btn layui-btn layui-btn-normal">添加好友</button></a>
            <a href="${pageContext.request.contextPath}/user/toIndex"><button class="layui-btn layui-btn-warm">回到首页</button></a>
            <a href="${pageContext.request.contextPath}/friends/myFriends"><button class="layui-btn">好友列表</button></a>
        </div>
        <div class="col-md-4">
            <img src="${pageContext.request.contextPath}/${loginUser.userImage}" width="45" height="45px" style="border-radius:50%;" >
            <span style="color:deepskyblue;font-weight:700;">${loginUser.username},您好</span>
        </div>
    </div>
</div>
<table class="layui-table">
    <colgroup>
        <col width="150">
        <col width="200">
        <col>
    </colgroup>
    <thead>
    <tr>
        <th>序号</th>
        <th>用户名</th>
        <th>备注信息</th>
        <th>请求时间</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${friendsList }" var="friends" varStatus="vs">
        <c:if test="${friends.friendsBId==loginUser.userId}">
            <tr>
                <td>${vs.count }</td>
                <td>${friends.friendsAName }</td>
                <td>${friends.friendsDesc }</td>


                <td>${friends.friendsTime }</td>

               <td> <%--<a href="${ pageContext.request.contextPath }/article/findOneAdmin?articleId=${article.articleId}"  onclick="isDel('${article.articleId}')" class="layui-btn"><i class="layui-icon"></i>同意</a>--%>
                   <a href="#"  onclick="isAgree('${loginUser.userId}')" class="layui-btn">
                       <i class="layui-icon"></i>同意</a>
                    <a href="#" onclick="isDel('${article.articleId}')" class="layui-btn layui-btn-danger"><i class="layui-icon"></i>拒绝</a></td>
            </tr>
        </c:if>
    </c:forEach>


    </tbody>
</table>
</body>
</html>
