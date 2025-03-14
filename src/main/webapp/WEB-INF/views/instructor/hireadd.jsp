<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <title>Title</title>
    <style>
      body {
        font-family: 'Malgun Gothic', sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        max-width: 800px;
        margin: 20px auto;
        border: 1px solid #ccc;
      }
      .header {
        display: flex;
        justify-content: space-between;
        padding: 10px 20px;
        align-items: center;
      }
      .header h1 {
        font-size: 18px;
        margin: 0;
      }
      .register-btn {
        background-color: white;
        border: 1px solid #ccc;
        border-radius: 15px;
        padding: 5px 15px;
        cursor: pointer;
      }
      .selection-area {
        padding: 15px;
        border-bottom: 1px solid #ddd;
      }
      .dropdown-container {
        margin-bottom: 15px;
        position: relative;
      }
      .dropdown-select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        appearance: none;
        background-image: url('data:image/svg+xml;utf8,<svg fill="black" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
        background-repeat: no-repeat;
        background-position: right 10px center;
        cursor: pointer;
      }
      .input-field {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }
      .toolbar {
        display: flex;
        justify-content: space-between;
        background-color: #4a6184;
        padding: 5px 10px;
        color: white;
      }
      .toolbar-left, .toolbar-right {
        display: flex;
        align-items: center;
      }
      .toolbar select {
        margin-left: 5px;
        height: 25px;
      }
      .toolbar-buttons {
        display: flex;
      }
      .toolbar-buttons a {
        display: block;
        width: 25px;
        height: 25px;
        background-color: #ddd;
        margin: 0 2px;
        text-align: center;
        line-height: 25px;
        color: #333;
        text-decoration: none;
        border: 1px solid #bbb;
      }
      .toolbar-icons a {
        color: white;
        font-size: 20px;
        margin-left: 10px;
        text-decoration: none;
      }
      .content-table {
        width: 100%;
        border-collapse: collapse;
      }
      .content-table th {
        background-color: #f8f8f8;
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
      }
      .content-table td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
      }
      .circle-avatar {
        width: 50px;
        height: 50px;
        background-color: #7749f8;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-weight: bold;
        font-size: 24px;
        position: absolute;
        top: 50px;
        left: 50%;
        transform: translateX(-50%);
        z-index: 10;
      }
      .editor-area {
        height: 300px;
        position: relative;
      }
    </style>
    <section style="min-height: 100%;">
      <div class="container" style="min-height: 700px;">
        <div class="header">
          <h1>구인 등록 글쓰기</h1>
          <button class="register-btn">등록</button>
        </div>

        <div class="selection-area">
          <div class="dropdown-container">
            <select class="dropdown-select">
              <option>카테고리를 선택해 주세요.</option>
            </select>
          </div>

          <div>
            <input type="text" class="input-field" placeholder="제목을 입력해 주세요.">
          </div>
        </div>

        <div class="toolbar">

        </div>

        <table class="content-table">
          <tr>
            <th>제목</th>
            <td>한국사 선생님</td>
            <th>검토 시작일</th>
            <td>2025년 03월 13일</td>
            <th>마감일</th>
            <td>2025년 03월 16일</td>
          </tr>
          <tr>
            <th>시간</th>
            <td>09:00 - 18:00</td>
            <th>장소</th>
            <td>서울시 금천구</td>
            <th>대상</th>
            <td>고등학생</td>
          </tr>
        </table>

        <div class="editor-area">
          <!-- 에디터 내용 영역 -->
        </div>
      </div>
    </section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>