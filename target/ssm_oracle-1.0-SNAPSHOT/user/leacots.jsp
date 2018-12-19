<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/12/1
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">
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
        <a href="whisper.jsp">微语</a>
        <a href="leacots.jsp"  class="active">留言</a>
        <a href="album.jsp">相册</a>
        <a href="about.jsp">关于</a>
    </div>
    <ul class="layui-nav header-down-nav">
        <li class="layui-nav-item"><a href="index.jsp">文章</a></li>
        <li class="layui-nav-item"><a href="whisper.jsp">微语</a></li>
        <li class="layui-nav-item"><a href="leacots.jsp"  class="active">留言</a></li>
        <li class="layui-nav-item"><a href="album.jsp">相册</a></li>
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


<div class="content whisper-content leacots-content">
    <div class="cont w1000">
        <div class="whisper-list">
            <div class="item-box">
                <div class="review-version">
                    <div class="form-box">
                        <img class="banner-img" src="../res/img/liuyan.jpg">
                        <div class="form">
                            <form class="layui-form" action="">
                                <div class="layui-form-item layui-form-text">
                                    <div class="layui-input-block">
                                        <textarea name="desc" placeholder="既然来了，就说几句" class="layui-textarea"></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-input-block" style="text-align: right;">
                                        <button class="layui-btn definite">確定</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="volume">
                        全部留言 <span>10</span>
                    </div>
                    <div class="list-cont">
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                        <div class="cont">
                            <div class="img">
                                <img src="../res/img/header.png" alt="">
                            </div>
                            <div class="text">
                                <p class="tit"><span class="name">吳亦凡</span><span class="data">2018/06/06</span></p>
                                <p class="ct">敢问大师，师从何方？上古高人呐逐一地看完你的作品后，我的心久久 不能平静！这世间怎么可能还有如此精辟的作品？我不敢相信自己的眼睛。自从改革开放以后，我就以为再也不会有任何作品能打动我，没想到今天看到这个如此精妙绝伦的作品好厉害！</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="demo" style="text-align: center;"></div>
    </div>
</div>
<script type="text/html" id="laytplCont">
    <div class="cont">
        <div class="img">
            {{#  if(d.avatar){ }}
            <img src="{{d.avatar}}" alt="">
            {{#  } else { }}
            <img src="../res/img/header.png" alt="">
            {{# } }}
        </div>
        <div class="text">
            <p class="tit"><span class="name">{{d.name}}</span><span class="data">2018/06/06</span></p>
            <p class="ct">{{d.cont}}</p>
        </div>
    </div>
</script>
<div class="footer-wrap">
    <div class="footer w1000">
        <div class="qrcode">
            <img src="../res/img/erweima.jpg">
        </div>
        <div class="practice-mode">
            <img src="../res/img/down_img.jpg">
            <div class="text">
                <h4 class="title">我的联系方式</h4>
                <p>微信<span class="WeChat">1234567890</span></p>
                <p>手机<span class="iphone">1234567890</span></p>
                <p>邮箱<span class="email">1234567890@qq.com</span></p>
            </div>
        </div>
    </div>
</div>
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
        menu.submit()
    })
</script>
</body>
</html>
