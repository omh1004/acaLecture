<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>강사 - 회원가입</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
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
      display: flex;
      align-items: center;
    }
    .logo-icon {
      width: 24px;
      height: 24px;
      margin-right: 5px;
    }
    .nav-links {
      display: flex;
      gap: 20px;
    }
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 40px 20px;
    }
    .form-title {
      text-align: center;
      margin-bottom: 40px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      display: block;
      margin-bottom: 5px;
    }
    .form-group input, .form-group select {
      width: 100%;
      padding: 8px;
      border: 1px solid #ddd;
      border-radius: 4px;
    }
    .form-group .hint {
      font-size: 12px;
      color: #666;
      margin-top: 5px;
    }
    .checkbox-group {
      margin: 30px 0;
    }
    .checkbox-item {
      margin: 10px 0;
    }
    .submit-btn {
      width: 100%;
      padding: 12px;
      background-color: #333;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    footer {
      background-color: #333;
      color: white;
      padding: 20px;
      margin-top: 40px;
    }
    .required {
      color: red;
    }
  </style>
</head>
<body>
<div class="container">
  <h2 class="form-title"> 회원가입</h2>
  <form action="${path}/teacher/teacherMemberend" method="post">
    <div class="form-group">
      <label>이름<span class="required">*</span></label>
      <input type="text" name="name" required placeholder="이름 입력">
    </div>

    <div class="form-group">
      <label>아이디<span class="required">*</span></label>
      <input type="text" name="id" required placeholder="아이디 입력">
      <p class="hint">영문 또는 영문+숫자 조합으로 6~12자리의 아이디를 입력해주세요.</p>
    </div>

    <div class="form-group">
      <label>비밀번호<span class="required">*</span></label>
      <input type="password" name="password" required placeholder="비밀번호 입력">
      <p class="hint">영문 또는 영문+숫자 조합으로 6~12자리의 아이디를 입력해주세요.</p>
    </div>

    <div class="form-group">
      <label>비밀번호 확인<span class="required">*</span></label>
      <input type="password" name="passwordConfirm" required placeholder="비밀번호 확인 입력">
      <p class="hint">비밀번호가 일치하지 않습니다.</p>
    </div>

    <div class="form-group">
      <label>이메일<span class="required">*</span></label>
      <div style="display: flex; gap: 10px;">
        <input type="text" name="email" placeholder="이메일 입력">
        <select name="email">
          <option value="">직접 입력</option>
          <option value="gmail.com">gmail.com</option>
          <option value="naver.com">naver.com</option>
          <option value="daum.net">daum.net</option>
        </select>
      </div>
    </div>

    <div class="form-group">
      <div style="display: flex; gap: 10px;">
<%--        <select name="university">--%>
<%--          <option value="">대학교</option>--%>
<%--        </select>--%>
<%--        <select name="major">--%>
<%--          <option value="">학과</option>--%>
<%--        </select>--%>
        <label>출신대학<span class="required">*</span></label>
        <input type="text" name="unvName">
      </div>
    </div>

    <div class="checkbox-group">
      <h3>약관 및 개인정보처리방침 동의</h3>
      <div class="checkbox-item">
        <input type="checkbox" id="allAgree"> 모두 동의합니다.
      </div>
      <div class="checkbox-item">
        <input type="checkbox" name="agree1"> [필수]이용약관 동의
      </div>
      <div class="checkbox-item">
        <input type="checkbox" name="agree2"> [필수]개인정보 수집 및 이용 동의
      </div>
      <div class="checkbox-item">
        <input type="checkbox" name="agree3"> [필수]본인은 만 14세 이상입니다.
      </div>
      <div class="checkbox-item">
        <input type="checkbox" name="agree4"> [선택]마케팅 정보 수신 동의
      </div>
    </div>

    <button type="submit" class="submit-btn">회원 가입</button>
  </form>
</div>

  <script>
    let isSameUserId = true;

    async function searchId(){
      let userId = document.getElementsByName("id")[0].value;
      let response = await fetch('${path}/teacher/findTeacherById?id='+userId);
      let result = await response.json();

      if(result){
        isSameUserId = true;
        alert("중복된 아이디입니다.");
        document.getElementsByName("id")[0].focus();
      }else {
        isSameUserId = false;
        alert("사용가능한 아이디 입니다.");
        document.getElementsByName("id")[0].setAttribute('placeholder',userId);
      }
    }
  </script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>