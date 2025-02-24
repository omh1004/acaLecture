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
</style>
<section id="content">
    <div class="image">
        <img src="${path}/resources/images/rectangle-160.png" alt="twilight">
    </div>
    <div class="hirelist">
        <div>
            <div>
                <p>과목</p>
                <h3>모집 제목</h3>
            </div>
            <div>
                <div>
                    <p>위치</p><p>날짜</p>
                </div>
                <p>모집상태</p>
            </div>
        </div>
        <div>
            <div>
                <p>과목</p>
                <h3>모집 제목</h3>
            </div>
            <div>
                <div>
                    <p>위치</p><p>날짜</p>
                </div>
                <p>모집상태</p>
            </div>
        </div>
        <div>
            <div>
                <p>과목</p>
                <h3>모집 제목</h3>
            </div>
            <div>
                <div>
                    <p>위치</p><p>날짜</p>
                </div>
                <p>모집상태</p>
            </div>
        </div>
        <div>
            <div>
                <p>과목</p>
                <h3>모집 제목</h3>
            </div>
            <div>
                <div>
                    <p>위치</p><p>날짜</p>
                </div>
                <p>모집상태</p>
            </div>
        </div>
        <div>
            <div>
                <p>과목</p>
                <h3>모집 제목</h3>
            </div>
            <div>
                <div>
                    <p>위치</p><p>날짜</p>
                </div>
                <p>모집상태</p>
            </div>
        </div>
        <div>
            <div>
                <p>과목</p>
                <h3>모집 제목</h3>
            </div>
            <div>
                <div>
                    <p>위치</p><p>날짜</p>
                </div>
                <p>모집상태</p>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>