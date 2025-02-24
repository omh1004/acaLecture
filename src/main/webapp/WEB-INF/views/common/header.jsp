<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="loginMember" value="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal}"/>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Twilight</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
    }

    .header {
      padding: 1rem;
      border-bottom: 1px solid #e0e0e0;
      display: flex;
      justify-content: space-between;
      align-items: center;
      color:#292929;
    }

    .header h1 {
      font-size: 1.5rem;
      font-weight: bold;
    }

    .header-right {
      display: flex;
      gap: 1rem;
    }

    .main {
      max-width: 400px;
      margin: 2rem auto;
      padding: 0 1rem;
    }

    .school-login {
      text-align: center;
      margin-bottom: 2rem;
    }

    .school-login img {
      width: 120px;
      height: auto;
      margin-bottom: 1rem;
    }

    .login-form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }

    .login-form input {
      padding: 0.75rem;
      border: 1px solid #ddd;
      border-radius: 4px;
    }

    .naver-login-btn {
      padding: 0.75rem;
      background-color: #1ec800;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin: 1rem 0;
    }

    .login-buttons {
      display: flex;
      gap: 1rem;
      margin-top: 1rem;
    }

    .login-btn {
      flex: 1;
      padding: 0.75rem;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .login-btn.primary {
      background-color: #f4811f;
      color: white;
    }

    .login-btn.secondary {
      background-color: #e0e0e0;
      color: #333;
    }

    .footer {
      min-width:1420px;
      background-color: #333;
      color: white;
      padding: 2rem;
      margin-top: 2rem;
    }

    .footer-content {
      max-width: 1200px;
      margin: 0 auto;
    }

    .footer-logo {
      font-size: 1.5rem;
      margin-bottom: 1rem;
    }

    .footer-info {
      font-size: 0.9rem;
      color: #ccc;
    }
  </style>
</head>
<body>
<header class="header">
  <h1>Twilight</h1>
  <div class="header-right">
    <span>선생님 찾기</span>
    <span>로그인</span>
    <a href="${path}/member/enrollmember.do">회원가입</a>
  </div>
</header>