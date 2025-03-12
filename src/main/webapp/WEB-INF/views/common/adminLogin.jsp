<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"/>
    <main class="main">
        <div class="school-login" >
            <img src="${path}/resources/images/admin-login-log.png" style="width: 370px; height: 250px" alt="admin Login Icon" />
            <h2>관리자 로그인</h2>
        </div>

        <form class="login-form" action="${pageContext.request.contextPath}/loginend.do" method="post">
            <input type="text"  name="userId"  placeholder="아이디" />
            <input type="password"  name="pw" placeholder="비밀번호" />

            <div class="login-buttons">
                <button  type="submit" class="login-btn primary">로그인</button>
                <button type="button" class="login-btn secondary">취소</button>
            </div>
        </form>
    </main>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>