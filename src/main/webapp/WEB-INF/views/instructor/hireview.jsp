<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<title>Stock Information</title>
<style>
    .container {
        width: 80%;
        margin: 40px auto;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
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
    #btns {
        display: flex;
        justify-content: flex-end;
        gap: 10px;
    }

    #btn1, #btn2 {
        all:unset;
        width: 40px;
        height: 30px;
        padding: 3px 7px;
        border-radius: 10px;
        text-align: center;
        color:#ffffff;
        font-weight: bold;
        cursor: pointer;
    }
    #btn1 {
        background-color: #888888;
    }
    #btn2 {
        background-color: red;
    }
</style>


<section style="min-height: 100%;">
    <div class="container" style="min-height: 600px;">
        <div id="btns">
            <button id="btn1">수정</button>
            <button id="btn2">삭제</button>
        </div>
        <table>
            <tr>
                <th>접수 시작일</th>
                <td>${board.intStartDate}</td>
                <th>접수 마감일</th>
                <td>${board.intEndDate}</td>
                <th>장소</th>
                <td>${board.intState}</td>
            </tr>
            <tr>
                <th>시간</th>
                <td>09:00~18:00</td>
                <th>급여</th>
                <td>${board.salary}</td>
                <th>강의 유형</th>
                <td>
                    <c:choose>
                        <c:when test="${board.lectureType eq '대면강의'}">대면강의</c:when>
                        <c:otherwise>비대면강의</c:otherwise>
                    </c:choose>
                </td>
            </tr>



        <%--            <tr>--%>
<%--                <th>제목</th>           <!-- 바꾸기 -->--%>
<%--                <td>${recruit.recTitle}</td>  <!-- ${recruit.recTitle} -->--%>
<%--                <th>강의 시작일</th>--%>
<%--                <td>${recruit.lecStartDate}</td>   <!-- ${ recruit.lecStartDate }-->--%>
<%--                <th>접수 마감일</th>--%>
<%--                <td>${recruit.intEndDate}</td>   <!-- ${ recruit.intEndDate }-->--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>시간</th>--%>
<%--                <td>${recruit.intStartTime}~${recruit.intEndTime}</td>    <!-- ${ recruit.intStartTime } -->--%>
<%--                <th>장소</th>           <!-- ${ recruit.intEndTime } -->--%>
<%--                <td>${recruit.recSubj}</td>  <!-- ${ recruit.recSubj }-->--%>
<%--                <th>대상</th>--%>
<%--                <td>${recruit.lecTarget}</td>       <!-- ${ recruit.lecTarget }-->--%>
<%--            </tr>--%>
        </table>



        <p>${board.recContent}</p>



    </div>
    <button class="apply-button" onclick="recruitment()">모집 지원</button>
    <script>
        const recruitment=()=>{
            location.assign("${path}/instructor/hire?no=${recruit.recNo}");
        }
    </script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>