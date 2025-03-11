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
            color:#eeeeee;
            background-color:#00838f;
            border:0;
            border-radius:5px;
            cursor:pointer;
        }
    </style>
    <section>
        <div id="image">
            <img src="${pageContext.request.contextPath}/resources/images/rectangle-160.png" alt="twilight" width="100%">
        </div>
        <div class="title">
            <h4>시범강의 예약</h4>
            <img src="" alt="calendar_icon"><h3>Please select a date and time</h3>
        </div>
        <div class="calendarbutton">
            <img src="" alt="left">     <!-- 이벤트 추가하기 -->
            <h3>2025.2</h3>
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
                <%-- 틀:강사채용 리스트(달력) --%>
<%--                <c:forEach var="" items="">--%>
<%--                    <td>--%>
<%--                        <div>--%>
<%--                            <p>날짜(일)</p>--%>
<%--                            <c:forEach var="" items="">--%>
<%--                                <ul>--%>
<%--                                    --%>
<%--                                </ul>--%>
<%--                            </c:forEach>--%>
<%--                        </div>--%>
<%--                    </td>--%>
<%--                </c:forEach>--%>
            <tr>
                <td>
                    <div>
                        <p>26</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>27</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>28</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>29</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>30</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>31</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <p>2</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>3</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>4</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>5</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>6</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>7</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>8</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <p>9</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>10</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>11</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>12</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>13</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>14</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>15</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <p>16</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>17</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>18</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>19</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>20</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>21</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>22</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <p>23</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>24</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>25</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>26</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>27</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>28</p>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p>
                    </div>
                </td>
            </tr>
        </table>
        <div class="time">
            <h5>AM</h5>
            <table>
                <tr>
                    <td>9:00</td>
                    <td>10:00</td>
                    <td>11:00</td>
                    <td>12:00</td>
                </tr>
            </table>
            <h5>PM</h5>
            <table>
                <tr>
                    <td>2:00</td>
                    <td>3:00</td>
                    <td>4:00</td>
                    <td>5:00</td>
                </tr>
                <tr>
                    <td>6:00</td>
                    <td>7:00</td>
                    <td>8:00</td>
                    <td>9:00</td>
                </tr>
            </table>
        </div>
        <div class="classinfo">
            <h3>Please verify the following information</h3>
            <div>
                <h2>시범강의예약</h2>
                <p>Schedule</p>
                <p id="datetime">날짜 요일</p>
                <p id="timer">시간</p>
                <!-- 또는 날짜 / 시간 -->
            </div>
        </div>
        <button onclick="regist()">신청 완료</button>
    </section>
    <script>
        // 일단 화면만 만들자. 이건 나중에 다룰 것!
        // let date = new Date('2025','01','01');
        // const calendar = Document.querySelector("#calendar");
        // while(date.getMonth()===1){
        //
        // }

        // closure 그냥 생각나서 만듦
        // const a=()=>{
        //     let a = 0;
        //     return ()=>{
        //         console.log(a++);
        //     }
        // }
        // const b = a();

        // 지금 바꾼다? 다음에 바꾼다?
        document.querySelectorAll("td").forEach(td=>{
            td.addEventListener("click",e=>{
                document.querySelector(".classinfo #datetime").innerText = e.target.lastElementChild.innerText
                    + " " + new Date('2025','01',e.target.lastElementChild.innerText).getDay();
            })
        })

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