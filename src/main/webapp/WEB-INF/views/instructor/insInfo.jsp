<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 게시물</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Apple SD Gothic Neo', 'Noto Sans KR', sans-serif;
        }

        body {
            background-color: #f5f5f5;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 24px;
            padding: 20px;
            border-bottom: 1px solid #e1e1e1;
        }

        .table-wrapper {
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #f9f9f9;
            padding: 12px 8px;
            font-size: 14px;
            text-align: center;
            border-bottom: 1px solid #e1e1e1;
        }

        td {
            padding: 16px 8px;
            text-align: center;
            border-bottom: 1px solid #e1e1e1;
            font-size: 14px;
        }

        .type-badge {
            display: inline-block;
            background-color: #f1f1f1;
            border: 1px solid #ddd;
            border-radius: 30px;
            padding: 6px 12px;
            font-size: 12px;
            margin-bottom: 8px;
        }

        .title {
            font-weight: bold;
            text-align: left;
        }

        .detail-btn {
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 6px 12px;
            font-size: 12px;
            cursor: pointer;
        }

        .detail-btn:hover {
            background-color: #4cae4c;
        }

        .separator {
            height: 1px;
            background-color: #e1e1e1;
            margin: 40px 0;
        }
    </style>
</head>
<body>
<div class="container" style="min-height: 100%;">
    <h1>내 게시물</h1>

    <div class="table-wrapper">
        <table>
            <thead>
            <tr>
                <th>상의/문의정보</th>
                <th>지역</th>
                <th>강의 시작일</th>
                <th>등록일</th>
                <th>제안 마감일</th>
                <th>구분</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="title">
                    <div class="type-badge">한국어 / 영어</div>
                    <div>역사 검색 신청남</div>
                </td>
                <td>서울</td>
                <td>2025년 03월 13일</td>
                <td>2025년 02월 18일</td>
                <td>2025년 03월 10일</td>
                <td><button class="detail-btn">비대면 강의</button></td>
            </tr>
            <tr>
                <td class="title">
                    <div class="type-badge">한국어 / 영어</div>
                    <div>역사 참여 신청남</div>
                </td>
                <td>서울</td>
                <td>2025년 03월 13일</td>
                <td>2025년 02월 18일</td>
                <td>2025년 03월 10일</td>
                <td><button class="detail-btn">비대면 강의</button></td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="separator"></div>
</div>

</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>