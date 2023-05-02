<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2023-04-27
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>로그인</title>
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/scss/bootstrap.scss" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.js"></script>
</head>
<body class="bg-white">
<form method="post" action="/login">
    <div class="text-center center mt-4">
        <input type="text" name="username" class="d-block mx-auto my-2">
        <input type="password" name="password" class="d-block mx-auto my-2">
        <label>자동로그인<input type="checkbox" name="remember-me"></label>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <button class="btn btn-primary text-white">로그인</button>
    </div>
</form>
</body>
</html>
