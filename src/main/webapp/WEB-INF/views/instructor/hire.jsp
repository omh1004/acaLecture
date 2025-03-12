<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <title>Twilight - 강사채용</title>
    <style>
        section{
            color:#292929;
            text-align:center;
        }
        section>.title{
            width:75%;
            min-width:1060px;
            margin:auto;
            text-align:start;
        }
        section>.title>h3{
            margin:30px 0;
            display:inline-block;
        }
        section>.calendarbutton{
            display:flex;
            justify-content:center;
        }
        section>.calendarbutton>h3{
            margin:0 10px;
        }
        section>table{
            width:75%;
            min-width:1060px;
            margin:auto;
        }
        section>table #sun{
            color:#e53935;
        }
        section>table #sat{
            color:#3949ab;
        }
        section>table td{
            min-width:150px;
            min-height:100px;
            width:150px;
            height:100px;
            border:1px solid #292929;
            border-radius:3px;
        }
        @keyframes dateSelect{
            to{
                background-color:#66bb6a;
            }
            from{
                background-color:#ffffff;
            }
        }
        section>table td:hover{
            animation:dateSelect 0.1s forwards;
            /*background-color:#66bb6a;*/
        }
        section>table td>div{
            width:90%;
            height:90%;
            margin:5%;
        }

        section>table ul{
            width:100%;
        }
        section>table li{
            list-style-type:none;
            border:1px solid #292929;
            border-radius:3px;
            margin:5px 0;
            background-color:#e57373;
        }
        section>table li>p{
            display:inline-block;
            margin-right:3px;
        }
        div#image{
            width:75%;
            min-width:1060px;
            height:250px;
            overflow:hidden;
            margin:auto;
            margin-top:20px;
            margin-bottom:20px;
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .time{
            width:75%;
            min-width:1060px;
            min-width:1000px;
            min-height:100px;
            text-align:start;
            padding:10px;
            margin:auto;
            margin-top:30px;
            margin-bottom:30px;
        }
        .time table{
            width:100%;
            margin:5px 0;
        }
        .time table td{
            width:25%;
            text-align:center;
        }
        .time table td.choose{
            border:1px solid #eeeeee;
            border-radius:3px;
        }
        .classinfo{
            width:75%;
            min-width:1060px;
            min-height:150px;
            text-align:start;
            margin:auto;
            margin-top:30px;
            margin-bottom:30px;
        }
        .classinfo>div{
            padding:10px;
            margin:10px 0;
            border:1px solid #292929;
            border-radius:10px;
        }
        .classinfo>div *{
            padding:5px 0 5px 5px;
        }
        .classinfo p{
            display:inline-block;
        }
        section>button{
            min-width:150px;
            min-height:50px;
            font-size:18px;
            font-weight:bold;
            color:#EEEEEE;
            background-color:#00838f;
            border:0;
            border-radius:5px;
            cursor:pointer;
        }
        .disabled{
            color:#EEEEEE;
        }
    </style>
    <section>
        <div id="image">
            <img src="${pageContext.request.contextPath}/resources/images/Rectangle-161.png" alt="twilight" width="100%">
        </div>
        <div class="title">
            <h4>시범강의 예약</h4>
            <img src="" alt="calendar_icon"><h3>Please select a date and time</h3>
        </div>
        <div class="calendarbutton">
            <img src="" alt="left">     <!-- 이벤트 추가하기 -->
            <h3 id="yearMonth"></h3>
            <img src="" alt="right">    <!-- 이벤트 추가하기 -->
        </div>
        <table id="calendar">
            <tr>
                <th id="sun">일</th>
                <th id="mon">월</th>
                <th id="tue">화</th>
                <th id="wed">수</th>
                <th id="thu">목</th>
                <th id="fri">금</th>
                <th id="sat">토</th>
            </tr>
            <!-- 이 아래에 달력 추가됨(javascript) -->
        </table>
        <div class="time">
            <h5>AM</h5>
            <table id="amTime">

            </table>
            <h5>PM</h5>
            <table id="pmTime">

            </table>
        </div>
        <div class="classinfo">
            <h3>Please verify the following information</h3>
            <div>
                <h2>${recruit.recTitle}</h2>
                <p>Schedule</p>
                <p id="datetime">날짜 요일</p>
                <p id="timer">시간</p>
                <!-- 또는 날짜 / 시간 -->
            </div>
        </div>
        <button onclick="regist()">신청 완료</button>
    </section>
    <script>
        const calendar = [];  // 😫
        const time = [];

        console.log(Date.now());
        const year = new Date(Date.now()).getFullYear();
        const month = new Date(Date.now()).getMonth();
        console.log(year);
        console.log(month);
        document.getElementById("yearMonth").innerText=year + "." + (month+1);
        
        let date = new Date(year,month,1);
        console.log(date);
        date = new Date(date - date.getDay()*24*60*60*1000);
        console.log(date);
        
        while(date.getMonth() <= month || date.getDay() != 0){
            const week = [];
            for(let i=0;i<7;i++){
                const j=1;
                console.log((date.getMonth()+1) + "-" + date.getDate());
                week.push(date.getMonth() + "-" + date.getDate());
                date = new Date(date.valueOf() + 1*24*60*60*1000);
                console.log(date);
            }
            calendar.push(week);
        }

        const eCal = document.getElementById("calendar");

        for(let i=0;i<calendar.length;i++){
            const tr = document.createElement("tr");
            for(let j=0;j<calendar[i].length;j++){
                const td = document.createElement("td");
                const div = document.createElement("div");
                const p = document.createElement("p");
                const monthDate = calendar[i][j].split("-");
                p.setAttribute("id",calendar[i][j]);
                p.innerText = monthDate[1];

                div.addEventListener("click",()=>{
                    document.getElementById("datetime").innerText = (monthDate[0]+1) + "월 " + monthDate[1] + "일";
                });

                div.append(p);
                td.append(div);
                tr.append(td);
            }
            console.log(eCal.childNodes);
            eCal.append(tr);
        }

        const insStartTime = '10:00';
        const insEndTime = '18:00';

        let startTime = Number(insStartTime.split(':')[0]);
        const endTime = Number(insEndTime.split(':')[0]);

        console.log(startTime);
        console.log(endTime);

        const amTime = document.getElementById("amTime");
        const pmTime = document.getElementById("pmTime");

        while(startTime<=12){
            const tr = document.createElement("tr");
            for(let i=0; i<4; i++){
                const td = document.createElement("td");
                if(startTime>12){
                    tr.append(td);
                }else if(startTime<=12){
                    td.innerText = startTime + ":00";
                    tr.append(td);
                    startTime++;   
                }
            }
            amTime.append(tr);
        }

        while(startTime<=endTime){
            const tr = document.createElement("tr");
            for(let i=0; i<4; i++){
                const td = document.createElement("td");
                if(startTime>endTime){
                    tr.append(td);
                }else if(startTime>12){
                    td.innerText = startTime + ":00";
                    tr.append(td);
                    startTime++;   
                }
            }
            pmTime.append(tr);
        }
        // closure 그냥 생각나서 만듦
        // const a=()=>{
        //     let a = 0;
        //     return ()=>{
        //         console.log(a++);
        //     }
        // }
        // const b = a();

        const regist=()=>{
            if(confirm("신청하시겠습니까?")){   // controller를 통해 이동하도록 바꾸기
                location.assign("${pageContext.request.contextPath}");
                alert("신청 완료되었습니다!");
            }else{
                console.log("😴");
            }
        }
    </script>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>