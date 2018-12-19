<%--
  Created by IntelliJ IDEA.
  User: 蘑菇太狂
  Date: 2018/12/1
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<jsp:forward page="${pageContext.request.contextPath}/article/findAll"></jsp:forward>--%>
<%
response.sendRedirect(request.getContextPath()+"/article/findAllWithPage");
%>
</body>
</html>
