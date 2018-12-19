<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/12/1
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>欢迎来到静心心情分享博客</title>
    <script src="../res/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">
    <link rel="stylesheet" href="../res/css/style.css">

    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../res/layui/layui.all.js"></script>
    <link rel="stylesheet" href="../res/css/iconfont.css">
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
            <h1 style="color:rgb(255,127,33)">静心</h1>
        </a>
    </h1>
    <div class="nav">
        <a href="${pageContext.request.contextPath}/user/toIndex" class="active">文章</a>
        <%--<a href="${pageContext.request.contextPath}/user/toWhisper">微语</a>--%>
        <%--<a href="${pageContext.request.contextPath}/user/toLeacots">留言</a>--%>
        <a href="${pageContext.request.contextPath}/user/toAlbum">相册</a>
        <a href="${pageContext.request.contextPath}/user/toAbout">关于我</a>
        <c:if test="${!empty loginUser}">
            <%--<a href="${pageContext.request.contextPath}/item/findAll"><span style="color:skyblue;font-weight:700;">个人文章管理</span></a>--%>
            <a href="${pageContext.request.contextPath}/article/toFindAll"><span style="color:skyblue;">我的文章空间</span></a>
            <%--<a href="${pageContext.request.contextPath}/user/toFriends"><span style="color:skyblue;">添加好友</span></a>--%>
            <a href="${pageContext.request.contextPath}/friends/findAll"><span style="color:skyblue;">好友管理</span></a>
        </c:if>
    </div>
    <ul class="layui-nav header-down-nav">
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/toIndex" class="active">文章</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/toWhisper">微语</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/toLeacots">留言</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/toAlbum">相册</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/toAbout">关于</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/toLogin">登录</a></li>
        <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/user/toRegister">注册</a></li>
    </ul>
    <%--<ul class="layui-nav header-down-nav">--%>
        <%--<li class="layui-nav-item"><a href="index.jsp">文章</a></li>--%>
        <%--<li class="layui-nav-item"><a href="whisper.jsp"  class="active">微语</a></li>--%>
        <%--<li class="layui-nav-item"><a href="leacots.jsp">留言</a></li>--%>
        <%--<li class="layui-nav-item"><a href="album.jsp">相册</a></li>--%>
        <%--<li class="layui-nav-item"><a href="about.jsp">关于</a></li>--%>
    <%--</ul>--%>
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
<%--<div class="banner">--%>
    <%--<div class="cont w1000">--%>
        <%--<div class="title">--%>
            <%--&lt;%&ndash;<h3>MY<br />BLOG</h3>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<h4>well-balanced heart</h4>&ndash;%&gt;--%>
        <%--</div>--%>
        <%--<div class="amount">--%>
            <%--&lt;%&ndash;<p><span class="text">访问量</span><span class="access">1000</span></p>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<p><span class="text">日志</span><span class="daily-record">1000</span></p>&ndash;%&gt;--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<div id="banner" style="width:1226px;
	height:460px;
	background: pink;
	margin:0 auto;
	position:relative;">

    <div class="layui-carousel" id="test10">
        <div carousel-item="" >
            <div><img src="../res/img/20.jpg" width="1226px"></div>
            <div><img src="../res/img/21.jpg" width="1226px"></div>
            <div><img src="../res/img/25.jpg" width="1226px"></div>
            <div><img src="../res/img/23.jpg" width="1226px"></div>
            <div><img src="../res/img/24.jpg" width="1226px"></div>
        </div>
    </div>
    <script>
        layui.use(['carousel', 'form'], function(){
            var carousel = layui.carousel
                ,form = layui.form;



            //图片轮播
            carousel.render({
                elem: '#test10'
                ,width: '1226px'
                ,height: '460px'
                ,interval: 3000
                ,anim: 'fade'
            });


            var $ = layui.$, active = {
                set: function(othis){
                    var THIS = 'layui-bg-normal'
                        ,key = othis.data('key')
                        ,options = {};

                    othis.css('background-color', '#5FB878').siblings().removeAttr('style');
                    options[key] = othis.data('value');
                    ins3.reload(options);
                }
            };

            //监听开关
            form.on('switch(autoplay)', function(){
                ins3.reload({
                    autoplay: this.checked
                });
            });

            $('.demoSet').on('keyup', function(){
                var value = this.value
                    ,options = {};
                if(!/^\d+$/.test(value)) return;

                options[this.name] = value;
                ins3.reload(options);
            });

            //其它示例
            $('.demoTest .layui-btn').on('click', function(){
                var othis = $(this), type = othis.data('type');
                active[type] ? active[type].call(this, othis) : '';
            });
        });
    </script>

</div>

<div class="content">
    <div class="cont w1000">
        <div class="title">
        <span class="layui-breadcrumb" lay-separator="|">
          <a href="javascript:;" class="active">文章列表</a>
          <%--<a href="javascript:;">前端文章</a>--%>
          <%--<a href="javascript:;">旅游杂记</a>--%>
        </span>
        </div>
        <div class="list-item">
            <c:forEach items="${pageArticleList.list}" var="article">
            <div class="item">
                <div class="layui-fluid">
                    <div class="layui-row">
                        <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                            <div class="img"><img src="${pageContext.request.contextPath}/${article.articleImg}" alt="" width="420" height="280"></div>
                        </div>
                        <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                            <div class="item-cont">
                                <h3><i class="iconfont icon-biaoti"></i>${article.articleTitle}<button class="layui-btn layui-btn-danger new-icon">new</button></h3>
                                <h5><i class="iconfont icon-icon-test"></i>${article.item.itemName}</h5>
                                <h5><i class="iconfont icon-zuozhe"></i>${article.user.username}</h5>
                                <h5><i class="iconfont icon-shijian"></i>${article.articleTime}</h5>
                                <%--<%--%>
                                    <%--String   s   =   a;--%>
                                    <%--if   (s.length()>12)--%>
                                    <%--{--%>
                                        <%--s   =   s.subString(0,12)+"...";--%>
                                    <%--}--%>
                                <%--<p>${ article.articleDesc}</p>--%>
                                <%--<p><c:if test="${fn:length(article.articleDesc) > 10}">${fn:substring(article.articleDesc,0, 10)}...</c:if>--%>
                                    <%--<c:if test="${fn:length(article.articleDesc) <= 10}">${article.articleDesc}</c:if></p>--%>
                                <%--%>--%>
                                <%--<p><c:if test="${article.articleDesc.length()>30 }">${ article.articleDesc.substring(0, 30)}</c:if>--%>
                                    <%--<c:if test="${article.articleDesc.length()<30 }">${ article.articleDesc}</c:if></p>--%>
                                <a href="${pageContext.request.contextPath}/article/findOne?articleId=${article.articleId}" class="layui-btn layui-btn-normal layui-btn-radius">阅读全文</a>
                                <%--<a href="${pageContext.request.contextPath}/comment/findAll" class="layui-btn layui-btn-normal layui-btn-radius">阅读全文</a>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>



        <%--<div id="demo" style="text-align: center;"></div>--%>
            <%--分页开始--%>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        当前<span style="background: black;color:white;">${pageArticleList.pageNum}</span>页,总共<span style="background: black;color:white;">${pageArticleList.pages}</span>页
                        ,总共<span style="background: black;color:white;">${pageArticleList.total}</span>记录
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath}/article/findAllWithPage?pageNum=1">首页</a></li>
                                <c:if test="${pageArticleList.hasPreviousPage}">


                                    <li>
                                        <a href="${pageContext.request.contextPath}/article/findAllWithPage?pageNum=${pageArticleList.pageNum-1}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>


                                <c:forEach items="${pageArticleList.navigatepageNums}" var="page_num">
                                    <c:if test="${page_num==pageArticleList.pageNum}">
                                    <li class="active"><a href="#">${page_num}</a></li>
                                    </c:if>
                                    <c:if test="${page_num!=pageArticleList.pageNum}">
                                        <li><a href="${pageContext.request.contextPath}/article/findAllWithPage?pageNum=${page_num}">${page_num}</a></li>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${pageArticleList.hasNextPage}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/article/findAllWithPage?pageNum=${pageArticleList.pageNum+1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>


                                </c:if>


                                <li><a href="${pageContext.request.contextPath}/article/findAllWithPage?pageNum=${pageArticleList.pages}">末页</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

            </div>
    </div>
</div>

<%--<div class="footer-wrap">--%>
    <%--<div class="footer w1000">--%>
        <%--<div class="qrcode">--%>
            <%--<img src="../res/img/erweima.jpg">--%>
        <%--</div>--%>
        <%--<div class="practice-mode">--%>
            <%--<img src="../res/img/down_img.jpg">--%>
            <%--<div class="text">--%>
                <%--<h4 class="title">我的联系方式</h4>--%>
                <%--<p>微信<span class="WeChat">1234567890</span></p>--%>
                <%--<p>手机<span class="iphone">1234567890</span></p>--%>
                <%--<p>邮箱<span class="email">1234567890@qq.com</span></p>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<script type="text/javascript" src="../res/layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: '../res/js/util/'
    }).use(['element','laypage','jquery','menu'],function(){
        element = layui.element,laypage = layui.laypage,$ = layui.$,menu = layui.menu;
        laypage.render({
            elem: 'demo'
            ,count: 70 //数据总数，从服务端得到
        });
        menu.init();
    })
</script>
</body>
</html>