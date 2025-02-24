<%--
  Created by IntelliJ IDEA.
  User: tjdwn
  Date: 25. 2. 23.
  Time: 오후 7:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Twilight - 강사채용</title>
    <style>
        section{
            text-align:center;
            color:#292929;
        }
        section>h6{
            text-decoration:line-through;
        }
        section>table{
            margin:auto;
        }
        section>table #sun{
            color:#e53935;
        }
        section>table #sat{
            color:#3949ab;
        }
        section>table td{
            min-width:200px;
            min-height:200px;
            width:200px;
            height:200px;
            border:1px solid #292929;
            border-radius:3px;
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
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <section>
        <h2>강사채용</h2>
        <h3>달력으로 대체하기</h3>
        <table>
            <tr>
                <th id="sun">일</th>
                <th id="mon">월</th>
                <th id="tue">화</th>
                <th id="wed">수</th>
                <th id="thu">목</th>
                <th id="fri">금</th>
                <th id="sat">토</th>
            </tr>
            <tr>
                <td>
                    <div>
                        <p>1</p>
                        <ul>

                        </ul>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p><!-- 리스트를 불러와서 일부만 꺼낼 수 있던가? -->
                        <ul>    <!-- 링크는 뭐로 하지? teacher/hire/{id} ? -->
                            <li><p>시간</p><a href="#" onclick="window.open('','_blank','width=800,height=1000')">강의내용</a></li>
                            <li><p>시간</p><a href="#">강의내용</a></li>
                        </ul>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p>
                        <ul>
                            <li><p>시간</p><a href="#">강의내용</a></li>
                            <li><p>시간</p><a href="#">강의내용</a></li>
                        </ul>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p>
                        <ul>
                            <li><p>시간</p><a href="#">강의내용</a></li>
                            <li><p>시간</p><a href="#">강의내용</a></li>
                        </ul>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p>
                        <ul>
                            <li><p>시간</p><a href="#">강의내용</a></li>
                        </ul>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p>
                        <ul>
                            <li><p>시간</p><a href="#">강의내용</a></li>
                        </ul>
                    </div>
                </td>
                <td>
                    <div>
                        <p>1</p>
                        <ul></ul>
                    </div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </section>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>
