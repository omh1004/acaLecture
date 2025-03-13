<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"/>
<style>
    .main{
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>

    <section style="min-height: 100%;">
        <div class="main">
            <button onclick="teacherAdd();">강사 회원가입 신청</button>
        </div>
    </section>

<script>
    teacherAdd = ()=>{
        location.assign("${path}/admin/teacheradd");
    }
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>