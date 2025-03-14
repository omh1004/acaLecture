<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<title>구인 등록 글쓰기</title>

<!-- Quill.js CSS -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">

<style>
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  .form-group {
    margin-bottom: 15px;
  }
  label {
    font-weight: bold;
  }
  input, select {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
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
    width: 100%;
  }

  #editor-container {
    height: 400px !important;  /* 🔥 기존보다 더 큰 높이 설정 */
  }
  .ql-container {
    min-height: 350px !important;  /* 내부 텍스트 입력 영역 확대 */
  }

</style>

<section>
  <div class="container">
    <h2>구인 등록 글쓰기</h2>

    <form action="${path}/instructor/hirewrite" method="post" onsubmit="return validateForm();">
      <!-- 제목 -->
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" id="title" name="recTitle" placeholder="제목을 입력해 주세요.">
      </div>

      <!-- 과목 -->
      <div class="form-group">
        <label for="subject">과목</label>
        <select id="subject" name="recSubj">
          <option value="">과목을 선택해 주세요.</option>
          <option value="국어">국어</option>
          <option value="수학">수학</option>
          <option value="영어">영어</option>
          <option value="과학">과학</option>
          <option value="사회">사회</option>
          <option value="역사">역사</option>
          <option value="지리">지리</option>
        </select>
      </div>

      <!-- 면접 날짜 -->
      <div class="form-group">
        <label>면접 가능 기간</label>
        <input type="date" id="intStartDate" name="intStartDate">
        <input type="date" id="intEndDate" name="intEndDate">
      </div>

      <!-- 면접 시간 -->
      <div class="form-group">
        <label>면접 가능 시간</label>
        <input type="time" id="intStartTime" name="intStartTime">
        <input type="time" id="intEndTime" name="intEndTime">
      </div>

      <!-- 급여 -->
      <div class="form-group">
        <label for="salary">급여</label>
        <input type="number" id="salary" name="salary" placeholder="급여를 입력하세요.">
      </div>

      <!-- 지역 -->
      <div class="form-group">
        <label for="location">지역</label>
        <select id="location" name="intState">
          <option value="">지역을 선택해 주세요.</option>
          <option value="서울">서울</option>
          <option value="부산">부산</option>
          <option value="대구">대구</option>
          <option value="광주">광주</option>
          <option value="대전">대전</option>
        </select>
      </div>

      <!-- 강의 유형 -->
      <div class="form-group">
        <label>강의 유형</label>
        <select id="lectureType" name="lectureType">
          <option value="">강의 유형을 선택해 주세요.</option>
          <option value="대면강의">대면강의</option>
          <option value="비대면강의">비대면강의</option>
        </select>
      </div>

      <!-- 강의 대상 -->
      <div class="form-group">
        <label for="lecTarget">강의 대상</label>
        <input type="text" id="lecTarget" name="lecTarget" placeholder="예: 고등학생, 중학생">
      </div>

      <!-- 내용 -->
      <div class="form-group">
        <label>내용을 입력해 주세요.</label>
        <div id="editor-container"></div>
        <input type="hidden" id="recContent" name="recContent">
      </div>

      <button class="apply-button" type="submit">등록</button>
    </form>
  </div>
</section>

<!-- Quill.js 라이브러리 -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<script>
  var quill = new Quill('#editor-container', {
    theme: 'snow',
    placeholder: '내용을 입력해 주세요...',
    modules: {
      toolbar: [['bold', 'italic', 'underline'], [{ 'header': 1 }, { 'header': 2 }], [{ 'list': 'ordered' }, { 'list': 'bullet' }], ['link', 'image']]
    }
  });

  document.querySelector("form").addEventListener("submit", function(event) {
    document.getElementById("recContent").value = quill.root.innerHTML;
  });

  function validateForm() {
    let requiredFields = ["title", "subject", "intStartDate", "intEndDate", "intStartTime", "intEndTime", "salary", "location", "lectureType", "lecTarget"];

    for (let id of requiredFields) {
      let value = document.getElementById(id).value.trim();
      if (!value) {
        alert("모든 필수 항목을 입력해 주세요.");
        document.getElementById(id).focus();
        return false;
      }
    }

    let content = quill.root.innerHTML.trim();
    if (content === "<p><br></p>" || content === "") {
      alert("내용을 입력해 주세요.");
      return false;
    }

    return true;
  }
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
