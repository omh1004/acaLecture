<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"/>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
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
    </style>
    <section>
        <div class="container">
            <div>
                <span>강사 회원가입 신청 리스트</span>
            </div>
            <table>
                <thead>
                <tr>
                    <th>강사이름</th>
                    <th>출신대학교</th>
                    <th>이메일</th>
                    <th>주소</th>
                    <th>구분</th>
                </tr>
                </thead>
                <tbody>
                <%--
                실제 구현시에는 여기서 데이터베이스에서 정보를 가져와 반복문을 사용하여 표시할 수 있습니다.
                아래는 예시 코드입니다.
                --%>
                <%--
                <c:forEach var="item" items="${auditList}">
                    <tr>
                        <td>
                            <div class="blue-text">${item.companyName}</div>
                            <div>${item.auditTitle}</div>
                        </td>
                        <td>${item.region}</td>
                        <td>${item.startDate}</td>
                        <td>${item.endDate}</td>
                        <td>${item.limitDate}</td>
                        <td>
                            <c:choose>
                                <c:when test="${item.status eq 'COMPLETED'}">
                                    <span class="status-completed">배정완료</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="status-canceled">일정취소</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
                --%>

                <%-- 아래는 정적 데이터 예시입니다 --%>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
                <tr>
                    <td>강성민</td>
                    <td>인제대학교</td>
                    <td>123@naver.com</td>
                    <td>서울시 금천구</td>
                    <td><button onclick="admission();"></button></td>
                </tr>
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
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>