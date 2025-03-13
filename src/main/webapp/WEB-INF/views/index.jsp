<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    #content>.image{
        width:75%;
        min-width:1060px;
        height:500px;
        margin:auto;
        overflow:hidden;
        display:flex;
        justify-content:center;
        align-items:center;
        margin-top:50px;
        margin-bottom:50px;
    }
    #content>.image>img{
        width:100%;
    }
    #content>.hirelist{
        width:75%;
        min-width:1060px;
        margin:auto;
        text-align:center;
    }
    #content>.hirelist>div{
        display:inline-block;
        width:25%;
        height:250px;
        min-height:250px;
        padding:2%;
        border:1px solid black;
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
    #content .viewAll-button{
        display: flex;
        justify-content: end;
        margin-right: 17%;
    }
</style>

<section id="content">
    <div class="image">
        <img src="${path}/resources/images/Rectangle-161.png" alt="twilight">
    </div>


    <div class="hirelist">
        <c:forEach var="board" items="${boardList}">

            <div>
                <div>
                    <p>${board.recSubj}</p>
                    <h3>${board.recTitle}</h3>
                </div>
                <div>
                    <div>
                        <p>${board.intState}</p>
                        <p>${board.intStartDate}</p>
                    </div>
                    <div>
                        <p>${board.intStartTime}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="viewAll-button">
        <button onclick="viewAll();">VIEW ALL</button>
    </div>
</section>
<script>
    const viewAll = ()=>{
        location.assign('${path}/instructor/hirelist');
    }
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>