<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<title>Stock Information</title>
<style>
    .container {
        width: 80%;
        margin: 0 auto;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #f4f4f4;
    }
    .image-container {
        text-align: center;
        margin-top: 20px;
    }
    .apply-button {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        display: block;
        margin: 20px auto 0;
    }
</style>

<section style="min-height: 100%;">
    <div class="container">
        <div>
            <button>수정</button>
            <button>삭제</button>
        </div>
        <table>
            <tr>
                <th>제목</th>
                <td>한국사 선생님</td>
                <th>강의 시작일</th>
                <td>2023년 03월 13일</td>
                <th>접수 마감일</th>
                <td>2025년 03월 10일</td>
            </tr>
            <tr>
                <th>시간</th>
                <td>09:00~18:00</td>
                <th>장소</th>
                <td>서울시 금천구</td>
                <th>대상</th>
                <td>고등학생</td>
            </tr>
        </table>
        <div class="image-container">
            <img src="/resources/images/image-24.png" alt="보고 자료 이미지" width="400">
        </div>
        <button class="apply-button" onclick="recruitment()">모집 지원</button>
    </div>
    <script>
        const recruitment=()=>{
            location.assign("${path}/instructor/hire")
        }
    </script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>