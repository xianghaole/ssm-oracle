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
        <%--<a href="whisper.jsp">微语</a>--%>
        <%--<a href="leacots.jsp">留言</a>--%>
        <a href="${pageContext.request.contextPath}/user/toAlbum">相册</a>
        <a href="${pageContext.request.contextPath}/user/toAbout">关于我</a>
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

<div class="album-content w1000"  id="layer-photos-demo" class="layer-photos-demo">

    <div class="img-list">
        <div class="layui-fluid" style="padding:0">
            <div class="layui-row layui-col-space30 space">
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img3.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img4.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img5.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img3.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img4.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img5.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img3.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img4.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img5.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img3.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img4.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img5.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img3.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                    <div class="item">
                        <img src="../res/img/xc_img4.jpg">
                        <div class="cont-text">
                            <div class="data">2018/08/08</div>
                            <p class="address"><i class="layui-icon layui-icon-location"></i><span>江西九江</span></p>
                            <p class="briefly">今日天气晴朗,庐山一日游</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="demo"></div>
    </div>
</div>


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
    }).use(['element','laypage','form','layer','menu'],function(){
        element = layui.element,laypage = layui.laypage,form = layui.form,layer = layui.layer,menu = layui.menu;
        laypage.render({
            elem: 'demo'
            ,count: 70 //数据总数，从服务端得到
        });
        layer.photos({
            photos: '#layer-photos-demo'
            ,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
            ,tab:function(pic,layero){
                console.log(pic,layero)
            }
        });
        menu.init();
    })
</script>
</body>
</html>