<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/12/1
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>相册</title>
    <script src="../res/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">
    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../res/layui/layui.all.js"></script>
    <link rel="stylesheet" href="../res/css/iconfont.css" >
    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../res/layer/layer.js"></script>
    <script src="../res/layui/layui.js"></script>
    <!--加载meta IE兼容文件-->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>-->
    <![endif]-->
</head>
<body>
<div class="header">
    <div class="menu-btn">
        <div class="menu"></div>
    </div>
    <h1 class="logo">
        <a href="${pageContext.request.contextPath}/user/toIndex">
            <span>静心</span>
            <%--<img src="../res/img/logo.png">--%>
            <h3 style="color:rgb(255,127,33)">静心</h3>
        </a>
    </h1>
    <div class="nav">
        <a href="${pageContext.request.contextPath}/user/toIndex">文章</a>
        <%--<a href="whisper.jsp">微语</a>--%>
        <%--<a href="leacots.jsp">留言</a>--%>
        <a href="${pageContext.request.contextPath}/picture/findAll?userId=${loginUser.userId}">相册</a>
        <a href="${pageContext.request.contextPath}/user/toAbout">关于我</a>
        <c:if test="${!empty loginUser}">
            <%--<a href="${pageContext.request.contextPath}/item/findAll"><span style="color:skyblue;font-weight:700;">个人文章管理</span></a>--%>
            <a href="${pageContext.request.contextPath}/article/toFindAll"><span style="color:skyblue;">我的文章空间</span></a>
            <%--<a href="${pageContext.request.contextPath}/user/toFriends"><span style="color:skyblue;">添加好友</span></a>--%>
            <a href="${pageContext.request.contextPath}/friends/findAll"><span style="color:skyblue;">好友管理</span></a>
        </c:if>
    </div>
    <ul class="layui-nav header-down-nav">
        <li class="layui-nav-item"><a href="index.jsp">文章</a></li>
        <li class="layui-nav-item"><a href="whisper.jsp">微语</a></li>
        <li class="layui-nav-item"><a href="leacots.jsp">留言</a></li>
        <li class="layui-nav-item"><a href="album.jsp"  class="active">相册</a></li>
        <li class="layui-nav-item"><a href="about.jsp">关于</a></li>
    </ul>
    <p class="welcome-text">

        <c:if test="${empty loginUser}">
            <a href="${pageContext.request.contextPath}/user/toLogin"><span style="color:skyblue;">登录</span></a>
            <a href="${pageContext.request.contextPath}/user/toRegister"><span style="color:skyblue;">注册</span></a>
        </c:if>
        <c:if test="${!empty loginUser}">
            <img src="${pageContext.request.contextPath}/${loginUser.userImage}" width="25" height="25" style="border-radius: 50%">
            ${loginUser.username }
            <%--<img src="${pageContext.request.contextPath}/${loginUser.userImage}" width="25" height="25">--%>
            <a href="${pageContext.request.contextPath }/user/toSession"><span style="color:skyblue;">注销</span></a>
        </c:if>
    </p>
</div>

<c:if test="${message=='您的相册空间是空的哟,赶快上传图片吧'}">
    <span style="color:red;position: absolute;top:35%;left:42%;font-size:16px;"><i class="iconfont icon-gantanhao-xianxingsanjiaokuang" style="font-size:200px;"></i>${message}</span>
</c:if>
<div class="album-content w1000"  id="layer-photos-demo" class="layer-photos-demo">


        <a href="${pageContext.request.contextPath}/picture/toAddPicture" class="layui-btn layui-btn-normal" style="position: absolute;right:30px;"><i class="layui-icon layui-icon-upload-drag"></i>上传照片</a>


    <div class="img-list">
        <div class="layui-fluid" style="padding:0">
            <div class="layui-row layui-col-space30 space">
                <c:forEach items="${pictureList}" var="picture">
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/${picture.picImg}" width="100px" height="200px">
                        <div class="cont-text">
                            <div class="data">${picture.picTime}</div>
                            <%--<p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>--%>
                            <p class="briefly">${picture.picDesc}</p>
                        </div>
                    </div>

                </div>

                </c:forEach>
            </div>

        </div>

    </div>
</div>


<script type="text/javascript" src="../res/layui/layui.js"></script>

</body>
</html>