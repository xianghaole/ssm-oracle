<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/11/30
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="../res/css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="../res/css/pages-register.css" />
    <script src="../res/js/jquery.min.js"></script>
</head>
<body >
<div class="register py-container" >
    <!--head-->
    <div class="logoArea">
        <a href="" class="logo"></a>
    </div>
    <div class="registerArea">
        <h3>欢迎注册<span class="go">我有账号，去<a href="${pageContext.request.contextPath}/user/toLogin">登陆</a></span></h3>
        <div class="info">
            <form class="sui-form form-horizontal" action="${pageContext.request.contextPath}/user/register"
                  method="post" enctype="multipart/form-data">
                <div class="control-group">
                    <label class="control-label">昵称:</label>
                    <div class="controls">
                        <input type="text" placeholder="昵称" class="input-xfat input-xlarge" name="username" required id="name">
                    </div>
                    <span id="span1"></span>
                </div>
                <script>
                    $("#name").blur(function(){
                        var username = $("#name").val();
                         //alert(username);
                        $.ajax({
                            url:"${pageContext.request.contextPath}/user/findUserByUsername?username="+ username,
                            data:username,
                            success:function(data){
                                if(data.count===1){
                                    //alert("该用户已经被注册")
                                    $("#span1").html('该用户已经被注册').css({"color":"red","font-weight":700});
                                }else if(data.count===0){
                                    $("#span1").html('该用户可以被注册').css({"color":"green","font-weight":700});
                                }
                            }
                        })
                    });
                </script>
                <div class="control-group">
                    <label class="control-label">密码:</label>
                    <div class="controls">
                        <input type="password" placeholder="密码" class="input-xfat input-xlarge" name="password" required>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">头像:</label>
                    <div class="controls">
                        <input type="file" placeholder="头像" class="input-xfat input-xlarge" name="file" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label"></label>
                    <div class="controls btn-reg">
                        <%--<a class="sui-btn btn-block btn-xlarge btn-danger" >注册</a>--%>
                        <button class="sui-btn btn-block btn-xlarge btn-danger" >注册</button>
                    </div>
                </div>
            </form>
            <div class="clearfix"></div>
        </div>
    </div>

</div>



</body>

</html>
