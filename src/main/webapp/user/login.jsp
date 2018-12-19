<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/11/30
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>欢迎登录</title>
    <link rel="icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="../res/css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="../res/css/pages-shoplogin.css" />
</head>

<body>
<div class="login-box">
    <!--head-->
    <div class="py-container logoArea">
        <a href="" class="logo"></a>
    </div>
    <!--loginArea-->
    <div class="loginArea">
        <div class="login ">
            <div class="py-container">
                <div class="loginform">
                    <ul class="sui-nav nav-tabs tab-wraped">
                        <li style="font-size:15px;font-weight:700;">欢迎登录</li>
                        <%--<li>--%>
                            <%--<a href="#index" data-toggle="tab">--%>
                                <%--<h3>扫描登录</h3>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                        <%--<li class="active">--%>
                            <%--<a href="#profile" data-toggle="tab">--%>
                                <%--<h3>账户登录</h3>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    </ul>
                    <div class="tab-content tab-wraped">
                        <div id="index" class="tab-pane">


                        </div>
                        <div id="profile" class="tab-pane  active">
                            <form class="sui-form" action="${pageContext.request.contextPath}/user/login" method="post">
                                <div class="input-prepend"><span class="add-on loginname"></span>
                                    <input id="prependedInput" type="text" placeholder="请输入用户名" class="span2 input-xfat" name="username" required>
                                </div>
                                <div class="input-prepend"><span class="add-on loginpwd"></span>
                                    <input id="prependedInput" type="password" placeholder="请输入密码" class="span2 input-xfat" name="password" required>
                                </div>


                                <span style="color:red;">${error}</span>
                                <div class="logined">
                                    <%--<a class="sui-btn btn-block btn-xlarge btn-danger" href="../../admin/index.html" target="_blank">登&nbsp;&nbsp;录</a>--%>
                                    <button class="sui-btn btn-block btn-xlarge btn-danger">登&nbsp;&nbsp;录</button>
                                </div>
                            </form>
                            <div class="otherlogin">
                                <div class="types">
                                    <ul style="height:35px;">

                                    </ul>
                                </div>
                                <span class="register"><a href="${pageContext.request.contextPath}/user/toRegister">立即注册</a></span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>

<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-placeholder/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="js/pages/shoplogin.js"></script>
</body>

</html>