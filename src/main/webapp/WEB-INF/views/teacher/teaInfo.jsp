<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<title>Twilight - 내 지원목록</title>
<style>
    .container {
        width: 80%;
        margin: 0 auto;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .content {
        margin-top: 20px;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
    }
    .content-title {
        font-size: 20px;
        margin-bottom: 10px;
        width: 100%;
    }
    .content-box {
        width: calc(33.333% - 20px);
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-sizing: border-box;
    }
    .content-box .details {
        margin-bottom: 10px;
    }
    .content-box .details strong {
        margin-right: 10px;
    }
    .content-box .cancel-button {
        background-color: #dc3545;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-align: center;
    }
</style>

<section class="container" style="min-height: 100%;">
    <div class="content">
        <div class="content-title">내 지원목록</div>
        <div class="content-box">
            <div class="details"><strong>회사:</strong> 한수원</div>
            <div class="details"><strong>직책:</strong> 역사 강사 신입채용</div>
            <div class="details"><strong>상태:</strong> 서류 검토중</div>
            <div class="details"><strong>등록일:</strong> 2023/7/18</div>
            <div class="cancel-button">지원취소</div>
        </div>
        <div class="content-box">
            <div class="details"><strong>회사:</strong> 한수원</div>
            <div class="details"><strong>직책:</strong> 역사 강사 신입채용</div>
            <div class="details"><strong>상태:</strong> 서류 검토중</div>
            <div class="details"><strong>등록일:</strong> 2023/7/18</div>
            <div class="cancel-button">지원취소</div>
        </div>
        <div class="content-box">
            <div class="details"><strong>회사:</strong> 한수원</div>
            <div class="details"><strong>직책:</strong> 역사 강사 신입채용</div>
            <div class="details"><strong>상태:</strong> 서류 검토중</div>
            <div class="details"><strong>등록일:</strong> 2023/7/18</div>
            <div class="cancel-button">지원취소</div>
        </div>
        <!-- 추가적인 content-box를 여기에 추가하면 됩니다 -->
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>