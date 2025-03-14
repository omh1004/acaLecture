<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
        }
        .btn-search {
            background-color: #4169e1;
            color: white;
            border: none;
            padding: 6px 15px;
            border-radius: 4px;
            float: right;
            margin-top: 5%;
            margin-bottom: 5%;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th {
            background-color: #f2f2f2;
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .status-completed {
            background-color: #5cb85c;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 12px;
        }
        .status-canceled {
            background-color: #d9534f;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 12px;
        }
        .blue-text {
            color: #4169e1;
        }
        .pagination {
            margin-top: 20px;
            text-align: center;
        }
        .pagination a {
            display: inline-block;
            padding: 5px 10px;
            border: 1px solid #ddd;
            margin: 0 2px;
            text-decoration: none;
            color: black;
        }
        .pagination a.active {
            background-color: #4169e1;
            color: white;
            border: 1px solid #4169e1;
        }
        .pagination a.arrow {
            border: none;
        }
        #rectitle {
            text-decoration: none;
        }
    </style>
    <section style="min-height: 100%;">
        <div class="container">

            <button class="btn-search" onclick="hireAdd();">구인 등록</button>
            <table>
                <thead>
                <tr>
                    <th>섭외문의정보</th>
                    <th>과목</th>
                    <th>면접 가능 시작일</th>
                    <th>면접 가능 종료일</th>
                    <th>지역</th>
                    <th>급여</th>
                    <th>구분</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${hireList}">
                    <tr>
                        <td class="blue-text">
                            <a href="${path}/board/hireview?recNo=${item.recNo}" id="rectitle" class="blue-text">${item.recTitle}</a>
                        </td>
                        <td>${item.recSubj}</td>
                        <td>${item.intStartDate}</td>
                        <td>${item.intEndDate}</td>
                        <td>${item.intState}</td>
                        <td>${item.salary}</td>
                        <td>
                            <c:choose>
                                <c:when test="${item.lectureType eq '대면강의'}">
                                    <span class="status-completed">대면강의</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="status-canceled">비대면강의</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>




        <%-- 페이지네이션 --%>
            <div class="pagination">
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">7</a>
                <a href="#">8</a>
                <a href="#">9</a>
                <a href="#">10</a>
                <a href="#" class="arrow">▶</a>
            </div>
        </div>
    </section>
    <%-- 필요한 JavaScript --%>
    <script>
        // 페이지네이션 클릭 이벤트 처리
        document.addEventListener('DOMContentLoaded', function() {
            var paginationLinks = document.querySelectorAll('.pagination a');
            paginationLinks.forEach(function(link) {
                link.addEventListener('click', function(e) {
                    e.preventDefault();

                    // 현재 액티브 클래스 제거
                    document.querySelector('.pagination a.active').classList.remove('active');

                    // 클릭된 링크에 액티브 클래스 추가
                    this.classList.add('active');

                    // 여기에 페이지 데이터를 불러오는 AJAX 호출 등을 추가할 수 있습니다
                    // 예: loadPageData(this.textContent);
                });
            });

        });

        const hireAdd= ()=>{
            location.assign("${path}/instructor/hireaddpage");
        }

        const hireView= ()=>{
            location.assign("${path}/instructor/hireview");
        }
    </script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>