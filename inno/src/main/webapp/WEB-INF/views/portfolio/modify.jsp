<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!-- Google Font: Source Sans Pro -->
    <!--   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"> -->
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">


    <jsp:include page="/WEB-INF/views/include/js.jsp" />
    <!-- summernote -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.css">

    <!--     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"> -->
    <!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
    <script src="<%=request.getContextPath() %>/resources/js/ad.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/ad_style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/menu_bt4.css">

</head>

<body>
    <div class="hidden_menu">
        <div class="list2">
            <ul>
                <li><a href="<%=request.getContextPath() %>/about">ABOUT</a></li>
                <li><a href="<%=request.getContextPath() %>/portfolio/list">WORKS</a></li>
                <li><a href="#">TEAM</a></li>
                <li><a href="<%=request.getContextPath() %>/contact">CONTACT</a></li>
            </ul>
        </div>
        <div class="list2_etc">
            <button id="down" onclick="location.href='<%=request.getContextPath() %>/fileDown.do'">
                <img src="<%=request.getContextPath() %>/resources/img/menu1.png" alt="#">
            </button>
            <c:if test="${loginUser == null }">
                <button id="login" onclick="location.href='/common/loginForm'">
                    <img src="<%=request.getContextPath() %>/resources/img/menu2.png" alt="#">
                </button>
            </c:if>
            <c:if test="${loginUser != null }">
                <button type="button" id="logout" onclick="location.href='/common/logout'">
                    <img src="<%=request.getContextPath() %>/resources/img/logout.png" alt="#">
                </button>
            </c:if>
            <span>COPYRIGHT INNOVATION-T COOPERATION. ALL RIGHT RESERVED.</span>
        </div>
    </div>
    <div class="header">
        <div class="hea_inner">
            <div class="logo">
                <a href="#" class="img-box"><img src="<%=request.getContextPath() %>/resources/img/black_logo.png" alt="logo"></a>
            </div>
            <div class="menu">
                <div class="list cell-right">
                    <a href="<%=request.getContextPath() %>/contact" class="list1">
                        <span>프로젝트 의뢰</span>
                    </a>
                    <a class="menu-trigger" href="#">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap">
        <!--  -->
        <form action="<%=request.getContextPath()%>/portfolio/modify.do" role="form" method="post" name="modifyForm">
            <div>
                <label for="por_title">제목: </label><input type="text" id="por_title" name="por_title" value="${portfolio.por_title }">
            </div>
            <br>
            <div>
                <label for="por_title">소제목: </label><input type="text" id="por_subtitle" name="por_subtitle" value="${portfolio.por_subtitle }">
            </div>
            <br>
            <div>
                <label for="por_category">분류: </label><select name="por_category" id="por_category">
                    <option value="web">Web</option>
                    <option value="app">App</option>
                    <option value="maintenance">Maintenance</option>
                </select>
            </div>
            <br>
            <div>
                <label for="por_writer">작성자: </label><input type="text" id="por_writer" name="por_writer" value="${loginUser.mem_name }" readonly="readonly">
            </div>
            <br>
            <div>
                <label for="por_content">내용:</label>
                <textarea class="textarea" name="por_content" id="por_content" rows="20" placeholder="1000자 내외로 작성하세요." style="display: none;">
                ${fn:escapeXml(portfolio.por_content) }
                </textarea>
            </div>
            <input type="hidden" name="por_num" id="por_num" value="${portfolio.por_num }">
            <div>
                <button type="button" id="registBtn" onclick="modify_go();">등 록</button>
                <button type="button" id="cancleBtn" onclick="history.go(-1);">취 소</button>
            </div>
        </form>
    </div>






    <script>
        window.onload = function() {
            Summernote_start($('#por_content'));
        }

        function modify_go() {
            var form = document.modifyForm;
            if (form.por_title.value == "") {
                alert("제목은 필수입니다.");
                return;
            }

            form.submit();
        }
    </script>
    <%@ include file="/WEB-INF/views/common/summernote.jsp" %>

</body>

</html>
