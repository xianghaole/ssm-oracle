<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/12/1
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>发表文章</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <link rel="stylesheet" href="../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../res/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="../res/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="../res/css/style.css">
    <script src="../res/js/jquery.min.js"></script>
    <script src="../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <!-- 富文本编辑器 -->
    <link rel="stylesheet" href="../res/kindeditor/themes/default/default.css" />
    <script charset="utf-8" src="../res/kindeditor/kindeditor-min.js"></script>
    <script charset="utf-8" src="../res/kindeditor/lang/zh_CN.js"></script>
</head>

<body class="hold-transition skin-red sidebar-mini" >

<!-- 正文区域 -->
<section class="content">

    <div class="box-body">

        <!--tab页-->
        <div class="nav-tabs-custom">

            <!--tab头-->
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#home" data-toggle="tab">发表文章</a>
                </li>
            </ul>
            <!--tab头/-->

            <!--tab内容-->
            <div class="tab-content">
                <!--表单内容-->
                <form action="${pageContext.request.contextPath}/article/addArticle?userId=${loginUser.userId}" method="post" enctype="multipart/form-data">
                <div class="tab-pane active" id="home">
                    <div class="row data-type">
                        <div class="col-md-2 title">文章标题</div>
                        <div class="col-md-10 data">
                            <input type="text" class="form-control"    placeholder="请输入文章标题" name="articleTitle" required>
                        </div>
                        <div class="col-md-2 title">文章图片</div>
                        <div class="col-md-10 data">
                            <input type="file" class="form-control" name="file" required>
                        </div>
                        <div class="col-md-2 title">文章分类</div>
                        <div class="col-md-10 data">
                            <%--<input type="text" class="form-control"    placeholder="请输入文章标题" name="articleItemId">--%>

                            <select class="form-control" name="articleItemId" required>
                                <option>请选择分类</option>
                                <c:forEach items="${items}" var="item">
                                        <option value="${item.itemId}">${item.itemName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-2 title editer">文章内容</div>
                        <div class="col-md-10 data editer">
                            <textarea test="content" style="width:800px;height:400px;visibility:hidden;" name="articleDesc" ></textarea>
                        </div>
                    </div>
                </div>
                    <button class="btn btn-success"  data-dismiss="modal" aria-hidden="true">立即发表</button>
            </form>
            </div>
        </div>
    </div>

</section>
<%--<div class="modal-footer">--%>
    <%--<a class="btn btn-success"  data-dismiss="modal" aria-hidden="true" style="position:absolute;left:100px;">发表文章</a>--%>
<%--</div>--%>



<!-- 正文区域 /-->
<script type="text/javascript">

    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('textarea[test="content"]', {
            allowFileManager : true
        });
    });


</script>

</body>

</html>