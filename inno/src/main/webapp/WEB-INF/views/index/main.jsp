<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/jquery.mousewheel.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/custom.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/menu_bt.css">



<body>
    <c:if test="${msg eq 'false' }">
        <script>
            alert("로그인 실패하였습니다. 아이디나 비밀번호를 확인해주세요");
            location.reload();
        </script>
    </c:if>
    <c:if test="${from eq 'logout' }">
        <script>
            alert("로그아웃 성공!");
            location.reload();
        </script>
    </c:if>
    <c:if test="${msg eq 'true' }">
        <script>
        var name = ${loginUser.mem_name }
            alert(name+"님 안녕하세요");
  			location.reload();
        </script>
    </c:if>

    <div class="wrap">
        <div class="page1">
            <div class="hidden_menu">
                <div class="list2">
                    <ul>
                        <li><a href="<%=request.getContextPath() %>/about">ABOUT</a></li>
                        <li><a href="<%=request.getContextPath() %>/portfolio/list">WORKS</a></li>
                        <li><a href="<%=request.getContextPath() %>/team/list">TEAM</a></li>
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
                        <a href="<%=request.getContextPath() %>/" class="img-box"><img src="<%=request.getContextPath() %>/resources/img/Logo.png" alt="logo"></a>
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
            <div class="text">
                <div class="tt1">
                    <span>YOUR ETERNAL BUSINESS PARTNER</span>
                </div>
                <div class="tt2">
                    <span>당신의 비즈니스 목표 실현의 시작</span>
                </div>
                <div class="tt3">
                    <span>당신의 최적의 서비스를 위한 최상의 서비스를 구현해드리겠습니다</span>
                </div>
            </div>
            <div class="back_img">
                <img src="<%=request.getContextPath() %>/resources/img/sleepapp.png" alt="sleepapp">
            </div>
            <div class="head_sub">
                <div class="talk">
                    <a href="<%=request.getContextPath() %>/contact"><img src="<%=request.getContextPath() %>/resources/img/o1.png" alt="talk"></a>
                </div>
                <div class="view">
                    <div class="app">
                        <span>APP 개발</span>
                    </div>
                    <div class="view_sub">
                        <span>수면을 도와주는 APP</span><br>
                        <span>PEACE OF MIND</span>
                    </div>
                    <div class="view_more">
                        <a href="#">
                            <span>VIEW PROJECT</span>
                        </a>
                        <img src="<%=request.getContextPath() %>/resources/img/o2.png" alt="#" id="o2">
                    </div>
                </div>
            </div>
        </div>
        <div class="page2">
            <div class="text">
                <div class="tt1">
                    <span>YOUR ETERNAL BUSINESS PARTNER</span>
                </div>
                <div class="tt2">
                    <span>당신의 비즈니스 목표 실현의 시작</span>
                </div>
                <div class="tt3">
                    <span>당신의 최적의 서비스를 위한 최상의 서비스를 구현해드리겠습니다</span>
                </div>
            </div>
            <div class="back_img">
                <img src="<%=request.getContextPath() %>/resources/img/back2_2.png" alt="childcode">
            </div>
            <div class="head_sub">
                <div class="talk">
                    <a href="<%=request.getContextPath() %>/contact"><img src="<%=request.getContextPath() %>/resources/img/o1.png" alt="talk"></a>
                </div>
                <div class="view">
                    <div class="app">
                        <span>반응형 웹&앱 개발</span>
                    </div>
                    <div class="view_sub">
                        <span>어린이용 코딩 학습플랫폼</span><br>
                        <span>da코딩</span>
                    </div>
                    <div class="view_more">
                        <a href="#">
                            <span>VIEW PROJECT</span>
                        </a>
                        <img src="<%=request.getContextPath() %>/resources/img/o2.png" alt="#" id="o2">
                    </div>
                </div>
            </div>
        </div>
        <div class="page3">
            <div class="text">
                <div class="tt1">
                    <span>YOUR ETERNAL BUSINESS PARTNER</span>
                </div>
                <div class="tt2">
                    <span>당신의 비즈니스 목표 실현의 시작</span>
                </div>
                <div class="tt3">
                    <span>당신의 최적의 서비스를 위한 최상의 서비스를 구현해드리겠습니다</span>
                </div>
            </div>
            <div class="back_img">
                <img src="<%=request.getContextPath() %>/resources/img/back3_3.png" alt="apt">
            </div>
            <div class="head_sub">
                <div class="talk">
                    <a href="<%=request.getContextPath() %>/contact"><img src="<%=request.getContextPath() %>/resources/img/o1.png" alt="talk"></a>
                </div>
                <div class="view">
                    <div class="app">
                        <span>WEP&APP 개발</span>
                    </div>
                    <div class="view_sub">
                        <span>분양 정보를 빠르게</span><br>
                        <span>땅따먹기</span>
                    </div>
                    <div class="view_more">
                        <a href="#">
                            <span>VIEW PROJECT</span>
                        </a>
                        <img src="<%=request.getContextPath() %>/resources/img/o2.png" alt="#" id="o2">
                    </div>
                </div>
            </div>
        </div>
        <div class="page4">
            <div class="bot">
                <div class="tt4"><span>Innovation-T</span></div>
                <div class="tt5"><span>이노베이션티는 자사의 성과보다 클라이언트의 성과를 중시합니다.</span></div>
                <div class="flex_con">
                    <div class="item">
                        <img src="<%=request.getContextPath() %>/resources/img/skill1.png" alt="#">
                    </div>
                    <div class="item">
                        <img src="<%=request.getContextPath() %>/resources/img/skill2.png" alt="#">
                    </div>
                    <div class="item">
                        <img src="<%=request.getContextPath() %>/resources/img/skill3.png" alt="#">
                    </div>
                    <div class="item">
                        <img src="<%=request.getContextPath() %>/resources/img/skill4.png" alt="#">
                    </div>
                    <div class="item">
                        <img src="<%=request.getContextPath() %>/resources/img/skill5.png" alt="#">
                    </div>
                    <div class="item">
                        <img src="<%=request.getContextPath() %>/resources/img/skill6.png" alt="#">
                    </div>
                </div>
                <div class="talk">
                    <a href="<%=request.getContextPath() %>/contact"><img src="<%=request.getContextPath() %>/resources/img/quick.png" alt="talk"></a>
                </div>
            </div>
        </div>
    </div>




    <jsp:include page="/WEB-INF/views/include/js.jsp" />


</body>

</html>
