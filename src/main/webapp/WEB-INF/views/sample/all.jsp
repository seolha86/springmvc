<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2023-04-27
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>all</title>
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.js" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/scss/bootstrap.scss" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.js"></script>
</head>
<body class="bg-white text-center">
<h1>all</h1>

<sec:authentication property="principal" var="principal"/>
<sec:authorize access="isAuthenticated()">
    <p><sec:authentication property="principal.member"/></p>
</sec:authorize>
<sec:authorize access="isAnonymous()">
    <p>비로그인</p>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_ADMIN')">
    <p>관리자</p>
</sec:authorize>
${principal}
<a href="member">member</a>
<a href="admin">admin</a>
</body>
</html>
