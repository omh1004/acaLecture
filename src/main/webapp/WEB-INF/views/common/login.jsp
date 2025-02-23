<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<div style="display: flex;justify-content: center">
    <div>
        <img alt="로고" src="${path}/resources/img/students.png" height="300px">
    </div>
</div>
<section style="display: flex;justify-content: center">

    <h2>로그인</h2>
    <div style="width:80%">
    <form action="${pageContext.request.contextPath}/loginend.do" method="post">
        <div class="modal-body" >
            <input type="text" name="userId" class="form-control"
                   placeholder="아이디입력"  style="display: flex;justify-content: center" required><br/>
            <input type="password" name="pw" class="form-control"
                   placeholder="패스워드입력" required>	<br/>
            <label><input type="checkbox" name="saveUser">로그인유지</label>
        </div>
        <div class="modal-footer"  style="display: flex;justify-content: center">

            <button type="submit" class="btn btn-outline-success">로그인</button>
            <button type="button" class="btn btn-outline-success"
                    data-dismiss="modal">취소</button>
        </div>
    </form>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
