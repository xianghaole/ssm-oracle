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
    <title>文章空间</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../res/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../res/css/iconfont.css" >
    <script src="../res/js/jquery.min.js"></script>
    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../res/layer/layer.js"></script>
    <script src="../res/layui/layui.js"></script>

    <script >
        function isDel(articleId){
            layer.confirm('您确认要删除吗？', {
                btn: ['确定','取消'] //按钮
            }, function(){
                location.href = "${pageContext.request.contextPath}/article/delete?articleId="+articleId;
                layer.msg('删除成功', {icon: 1});
            }, function(){
                layer.msg('取消成功', {icon: 1});
            });
        }
    </script>
</head>
<body>
       <div class="container">
           <div class="row" style="margin-top:20px;">
               <div class="col-md-8">
                   <a href="${pageContext.request.contextPath}/item/findAll"><button class="layui-btn layui-btn layui-btn-normal">发表文章</button></a>
                   <a href="${pageContext.request.contextPath}/user/toIndex"><button class="layui-btn layui-btn-warm">回到首页</button></a>
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
        <th>作者</th>
        <th>文章标题</th>
        <th>文章图片</th>
        <th>文章内容</th>
        <th>发表时间</th>
        <th>分类</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${articleList }" var="article" varStatus="vs">
        <%--<c:if test="${article.user.userId==loginUser.userId}">--%>
            <tr>
                <td>${vs.count }</td>
                <td>${article.user.username }</td>
                <td>${article.articleTitle }</td>

                <td><img src="${pageContext.request.contextPath }/${article.articleImg }" width="40px"></td>
                <td>${article.articleDesc }</td>
                <td>${article.articleTime }</td>
                <td>${article.item.itemName }</td>
                <td><a href="${ pageContext.request.contextPath }/article/findOneAdmin?articleId=${article.articleId}" class="layui-btn"><i class="layui-icon"></i>修改</a>
                <a href="#" onclick="isDel('${article.articleId}')" class="layui-btn layui-btn-danger"><i class="layui-icon"></i>删除</a></td>

            </tr>

        <%--</c:if>--%>
    </c:forEach>
    <c:if test="${alert=='您的文章空间空空如也'}">
    <tr><span style="color:red;position: absolute;top:35%;left:42%;font-size:16px;"><i class="iconfont icon-gantanhao-xianxingsanjiaokuang" style="font-size:200px;"></i>${alert}</span></tr>
    </c:if>
    </tbody>
</table>
</body>
</html>
