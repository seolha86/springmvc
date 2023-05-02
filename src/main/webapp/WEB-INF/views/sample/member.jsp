<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2023-04-27
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>member</title>
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/scss/bootstrap.scss" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.js"></script>
</head>
<body class="bg-white text-center">
<h1>member</h1>
<a href="all">all</a>
<a href="admin">admin</a>
<p>${_csrf}</p>
<form action="/sample/logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <button class="btn btn-primary text-white">로그아웃</button>
</form>
</body>
</html>
