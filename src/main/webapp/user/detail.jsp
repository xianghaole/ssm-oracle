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
    <%--<meta http-equiv='refresh' content='10000'>--%>
    <title>详情</title>

    <link rel="stylesheet" type="text/css" href="../res/css/main.css">

    <link rel="stylesheet" href="../res/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="../res/css/iconfont.css" >
    <script src="../res/js/jquery.min.js"></script>
    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../res/layer/layer.js"></script>
    <script src="../res/layui/layui.js"></script>

    <!--加载meta IE兼容文件-->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>-->
    <![endif]-->
    <script>
        function message(){
            layer.msg('请先登录', {
                offset: 't',
                anim: 6
            });
        }
    </script>

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
        <li class="layui-nav-item"><a href="index.jsp" class="active">文章</a></li>
        <li class="layui-nav-item"><a href="whisper.jsp">微语</a></li>
        <li class="layui-nav-item"><a href="leacots.jsp">留言</a></li>
        <li class="layui-nav-item"><a href="album.jsp">相册</a></li>
        <li class="layui-nav-item"><a href="about.jsp" class="active">关于</a></li>
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


<div class="content whisper-content leacots-content details-content">
    <div class="cont w1000">
        <div class="whisper-list">
            <div class="item-box">
                <div class="review-version">
                    <div class="form-box">
                        <div class="article-cont">
                            <div class="title">
                                <h3>${onePotal.articleTitle}</h3>
                                <p class="cont-info">
                                    <span class="data">作者:${onePotal.user.username}</span>
                                    <span class="data">发表时间:&nbsp;&nbsp;${onePotal.articleTime}</span>
                                    <span class="data">文章分类:&nbsp;&nbsp;${onePotal.item.itemName}</span>

                                </p>
                            </div>
                            <%--<p>爷每天5点起床，去鸡行里选鸡，选的是大小均匀的老母鸡，送到家里从杀鸡放血开始，--%>
                                <%--鸡血要留着，倒在有盐水的碗里，烧好开水拔了毛连鸡嘴巴鼻子里的粘液都要挤出来--%>
                                <%--。鸡洗干净六只鸡放到一个锅里炖，要炖一个上午，要注意火候鸡皮不能裂。</p>--%>
                            <img src="${pageContext.request.contextPath}/${onePotal.articleImg}" width="1000" height="529">
                            <p>${onePotal.articleDesc}</p>

                            <%--<p>以前爷爷都是用扁担一头面叶一头板鸡挑到街上摊位上卖，现在爷爷年纪大了，只能用三轮车推着。摊位摆好奶奶就会慢--%>
                                <%--悠悠的拎着一个保温桶和一个小红桶过来，保温桶里装的是卤鸡蛋，小红桶留着装别人吃剩的骨头喂狗。他们--%>
                                <%--只有晚上出摊，收完摊已经要9点钟了，回去还要洗一天用的抹布和衣服，爷爷奶奶都非常爱干--%>
                                <%--净，摊上的所有抹布纱布都是白色的每天洗的一个油点都看不到。9年前奶奶去世了，爷爷奶--%>
                                <%--奶青梅竹马感情非常好，奶奶去世的时候爷爷甚至还要求过把奶奶埋在院子里。现在爷爷--%>
                                <%--有时候会偷偷跟我说，你奶奶昨天回来看我了，她还给我掖被子，我知道是她，我跟她说你别挂念我，我好的很 跑题了。</p>--%>
                            <%--<p>昨天我给爷爷打电话，他跟我说他卖板鸡有人给他拍照，他问别人你拍我干嘛，那个人回答他说我给你照--%>
                                <%--片放到网上，你生意会更好，我爷爷说你不用放网上我都不够卖的。</p>--%>
                            <%--<div class="btn-box">--%>
                                <%--<button class="layui-btn layui-btn-primary">上一篇</button>--%>
                                <%--<button class="layui-btn layui-btn-primary">下一篇</button>--%>
                            <%--</div>--%>
                        </div>
                        <div >

                            <form  action="${pageContext.request.contextPath}/comment/addComment?articleId=${onePotal.articleId}" method="post">
                                        <input name="commentUserName" value="${loginUser.username}" hidden="hidden"/>
                                        <input name="commentForUser" value="${loginUser.userId}" hidden="hidden"/>
                                        <input name="commentUserImage" value="${loginUser.userImage}" hidden="hidden"/>
                                        <input name="commentForArticle" value="${onePotal.articleId}" hidden="hidden"/>
                                <c:if test="${!empty loginUser}">
                                    <textarea name="commentDesc" placeholder="既然来了，就说几句" class="layui-textarea" style="margin-bottom:5px;box-shadow: 0 0 5px grey" required></textarea>
                                    <button class="layui-btn layui-btn-normal">确定</button>
                                </c:if>
                            </form>
                            <c:if test="${ empty loginUser}">
                                <textarea name="commentDesc" placeholder="既然来了，就说几句" class="layui-textarea" style="margin-bottom:5px;box-shadow: 0 0 5px grey" required></textarea>
                                <button class="layui-btn layui-btn-normal" onclick="message()">确定</button>
                            </c:if>
                        </div>
                    </div>
                    <div class="volume">
                        全部留言 <span>10</span>
                    </div>
                    <div class="list-cont">
                        <c:forEach items="${commentList}" var="comment">
                            <c:if test="${comment.commentForArticle==onePotal.articleId}">
                            <div class="cont">
                                <div class="img">
                                    <img src="${pageContext.request.contextPath}/${comment.commentUserImage}" alt="" width="30" height="30" style="border-radius: 50%">
                                </div>
                                <div class="text">
                                    <p class="tit"><span class="name">${comment.commentUserName}</span><span class="data">${comment.commentTime}</span></p>
                                    <p class="ct">${comment.commentDesc}</p>
                                </div>
                            </div>
                        </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <%--<div id="demo" style="text-align: center;"></div>--%>
    </div>
</div>
<%--<script type="text/html" id="laytplCont">--%>
    <%--<div class="cont">--%>
        <%--<div class="img">--%>

            <%--<img src="${pageContext.request.contextPath}/${loginUser.userImage}" width="30" height="30" style="border-radius: 50%">--%>

            <%--&lt;%&ndash;<img src="${pageContext.request.contextPath}/${loginUser.userImage}" width="30" height="30" style="border-radius: 50%">&ndash;%&gt;--%>

        <%--</div>--%>
        <%--<div class="text">--%>
            <%--<p class="tit"><span class="name">${loginUser.username}</span><span class="data"></span></p>--%>
            <%--<p class="ct">{{d.cont}}</p>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</script>--%>
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
    }).use(['element','laypage','form','menu'],function(){
        element = layui.element,laypage = layui.laypage,form = layui.form,menu = layui.menu;
        laypage.render({
            elem: 'demo'
            ,count: 70 //数据总数，从服务端得到
        });
        menu.init();
        menu.submit();
    })
</script>

</body>
</html>
