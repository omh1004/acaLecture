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
            width: 75%;
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

        #content>.hirelist{
          max-width:1340px;
          margin:auto;
          /* text-align:center; */
          flex-wrap:wrap;
        }
        #content>.hirelist>div{
            display:inline-block;
            width:250px;
            height:250px;
            min-height:250px;
            padding:2%;
            border:1px solid #CBC7C7;
            box-shadow: 5px 5px 3px rgba(0, 0, 10, 0.5);
            text-align:start;
            margin:40px;
        }
        #content>.hirelist>div>div{
            height:50%;
        }
        #content>.hirelist>div>div:last-child{
            display:flex;
            flex-direction:column;
            justify-content:end;
        }
        #content>.hirelist>div>div>div{
            margin:5px 0;
        }
        #content>.hirelist>div>div>div>p:nth-child(1){
            display:inline-block;
            width:50%;
        }
        #content>.hirelist>div>div>div>p:nth-child(2){
            display:inline-block;
            width:50%;
        }
        #content>.hirelist>div>div>div>button:nth-child(2){
            display:inline-block;
            margin-left:20%;
            width:25%;
            height:100%;
        }
    </style>
</head>
<body>
<div id="content" class="container" style="min-height: 100%;">
    <h1>내 게시물</h1>
    <div class="hirelist">
      <c:forEach var="board" items="${myRecruits}">
          <div class="hirelistbox">
              <div>
                  <p>${board.arecruit.recSubj}</p>
                  <h3>${board.arecruit.recTitle}</h3>
              </div>
              <div>
                  <div>
                      <p>${board.arecruit.intState}</p>
                      <p>${board.arecruit.intStartDate}</p>
                  </div>
                  <div>
                      <p>${board.arecruit.lectureType}</p>
                      <button onclick="cancelHire('${board.supNo}')">취소</button>
                  </div>
              </div>
          </div>
      </c:forEach>
    </div>
</div>
<script>
  const cancelHire=(supNo)=>{
    if(confirm("지원을 취소하시겠습니까?")){
      location.assign("${pageContext.request.contextPath}/teacher/cancelhire?no="+supNo);
    }else{
      console.log("😴")
    }
  }
</script>
</body>
</html>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>