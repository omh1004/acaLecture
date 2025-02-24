<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Twilight</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .header {
      display: flex;
      justify-content: space-between;
      padding: 20px;
      border-bottom: 1px solid #ddd;
    }
    .logo {
      font-size: 24px;
      font-weight: bold;
    }
    .login-btn {
      padding: 5px 15px;
      border: 1px solid #ddd;
      border-radius: 4px;
      text-decoration: none;
      color: #333;
    }
    .form-container {
      padding: 20px;
    }
    .form-title {
      font-size: 18px;
      margin-bottom: 20px;
    }
    .dropdown-container {
      margin-bottom: 20px;
    }
    .input-field {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 4px;
      margin-bottom: 20px;
    }
    .info-table {
      width: 100%;
      border-collapse: collapse;
    }
    .info-table th, .info-table td {
      border: 1px solid #ddd;
      padding: 8px;
    }
    .footer {
      background-color: #333;
      color: white;
      padding: 20px;
      position: fixed;
      bottom: 0;
      width: 100%;
    }
    .toolbar {
      display: flex;
      gap: 10px;
      margin-bottom: 20px;
    }
    .toolbar select {
      padding: 5px;
    }
  </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div class="form-container">
  <div class="form-title">구인 등록 글쓰기</div>

  <div class="dropdown-container">
    <select name="category" class="input-field">
      <option>카테고리를 선택해 주세요.</option>
    </select>
  </div>

  <input type="text" class="input-field" placeholder="제목을 입력해 주세요.">

  <div class="toolbar">
    <select name="font">
      <option>기본서체</option>
    </select>
    <select name="size">
      <option>15pt</option>
    </select>
    <!-- Text formatting buttons would go here -->
  </div>

  <table class="info-table">
    <tr>
      <th>직종</th>
      <td>한국사 선생님</td>
      <th>검색 시작일</th>
      <td>2025년 03월 13일</td>
      <th>검수 마감일</th>
      <td>2025년 03월 10일</td>
    </tr>
    <tr>
      <th>시간</th>
      <td>09:00 ~ 16:00</td>
      <th>장소</th>
      <td>서울시 금천구</td>
      <th>대상</th>
      <td>고등학생</td>
    </tr>
  </table>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>