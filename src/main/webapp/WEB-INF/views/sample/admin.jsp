<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2023-04-27
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>admin</title>
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/scss/bootstrap.scss" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.js"></script>
</head>
<body class="bg-white text-center">
<h1>admin</h1>
<a href="member">member</a>
<a href="all">all</a>
<form action="/sample/logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <button class="btn btn-primary text-white">로그아웃</button>
</form>
<p><sec:authentication property="principal"/></p>
<p><sec:authentication property="principal.username"/></p>
<p><sec:authentication property="principal.member"/></p>
<p><sec:authentication property="principal.member.userid"/></p>
<p><sec:authentication property="principal.member.username"/></p>
<p><sec:authentication property="principal.member.auths"/></p>
</body>
</html>
