<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
</head>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/about_custom.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/about_style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/menu_bt3.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a606bd75a5efab100648a4b72b6c0cb9"></script>

<body>
    <div class="wrap margin-0-auto">
        <div class="hidden_menu">
            <div class="list2">
                <ul>
                    <li><a href="<%=request.getContextPath()%>/about">ABOUT</a></li>
                        <li><a href="<%=request.getContextPath() %>/portfolio/list">WORKS</a></li>
                        <li><a href="<%=request.getContextPath() %>/team/list">TEAM</a></li>
                    <li><a href="<%=request.getContextPath()%>/contact">CONTACT</a></li>
                </ul>
            </div>
            <div class="list2_etc">
                <button id="down" onclick="location.href='<%=request.getContextPath()%>/fileDown.do'">
                    <img src="<%=request.getContextPath()%>/resources/img/menu1.png" alt="#">
                </button>
                <c:if test="${loginUser == null }">
                    <button id="login" onclick="location.href='/common/loginForm'">
                        <img src="<%=request.getContextPath()%>/resources/img/menu2.png" alt="#">
                    </button>
                </c:if>
                <c:if test="${loginUser != null }">
                    <button type="button" id="logout" onclick="location.href='/common/logout'">
                        <img src="<%=request.getContextPath()%>/resources/img/logout.png" alt="#">
                    </button>
                </c:if>
                <span>COPYRIGHT INNOVATION-T COOPERATION. ALL RIGHT RESERVED.</span>
            </div>
        </div>
        <div class="header">
            <div class="hea_inner">
                <div class="logo">
                    <a href="<%=request.getContextPath()%>/" class="img-box"><img src="<%=request.getContextPath()%>/resources/img/black_logo.png" alt="logo"></a>
                </div>
                <div class="menu">
                    <div class="list cell-right">
                        <a href="<%=request.getContextPath()%>/contact" class="list1">
                            <span>프로젝트 의뢰</span>
                        </a> <a class="menu-trigger" href="#"> <span></span> <span></span>
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="content1">
            <div class="title">
                <span>About</span>
            </div>
            <div class="sub_title">
                <span>당신의 성공적인 비즈니스 파트너<br>이노베이션티를 소개합니다.
                </span>
                <button onclick="location.href='<%=request.getContextPath()%>/fileDown.do'">
                    <img src="<%=request.getContextPath()%>/resources/img/menu1.png" alt="#"> 기업소개서 다운로드
                </button>
            </div>

            <div class="greetings">
                <div class="gr_img">
                    <div class="gr_txt">
                        <span>Greetings</span><br> <span>이노베이션티를 소개합니다.</span>
                    </div>
                </div>
                <div class="sub_txt">
                    <div class="left_sub">
                        <p>여러분의 비즈니스 파트너</p>
                        <p>이노베이션티(주) 입니다.</p>
                    </div>
                    <div class="right_sub">
                        <p>이노베이션티(주)는 2019년 10월 24일 설립 되었으며 기술력을 바탕으로한 WEB & APP 개발사
                            입니다. 자사는 다양한 프로젝트의 진행 경험을 바탕으로 클라이언트님의 비즈니스 목표실현을 한 걸음 더 앞당겨 드릴 수
                            있는 많은 기획 개발진과 디자인 인력들이 상주하고있습니다.</p>
                        <p>이노베이션티(주)는 글로벌 IT기술을 바탕으로 한 보다 안전하고 편리한 IT서비스를 실현하기 위하여
                            끊임없이 노력해왔으며 '믿을 수 있는 기업' 이라는 사회적 가치를 실현하기 위해 최선을 다하는 기업입니다.</p>
                        <span> 대표 최종인, 이원경 </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="content2">
            <div class="title2">
                <span>Organization Chart</span>
            </div>
            <div class="sub_title">
                <span>이노베이션티의 구조를 소개합니다.</span>
            </div>
            <div class="chart">
                <img src="<%=request.getContextPath()%>/resources/img/chart.png" alt="#">
            </div>
        </div>
        <div class="content3">
            <div class="title2">
                <span>Location</span>
            </div>
            <div class="sub_title">우리는 여기에 있습니다.</div>
            <div class="map_wrap">
                <div id="map"></div>
                <!-- 지도타입 컨트롤 div 입니다 -->
<!--                 <div class="custom_typecontrol radius_border"> -->
<!--                     <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span> -->
<!--                      <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span> -->
<!--                 </div> -->
                <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
                <div class="custom_zoomcontrol radius_border">
                    <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span> <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
                </div>
            </div>

        </div>
        <div class="footer">
            <div class="foot_logo img-box">
                <img src="<%=request.getContextPath()%>/resources/img/Logo.png" alt="#">
            </div>
            <div class="foot_txt">
                <p>이노베이션티(주)</p>
                <span id="a1">대표자 : 최종인 이원경</span> <span>사업자등록번호 582-86-01581</span><br>
                <span id="a2">주소 대전광역시 서구 관저북로 25 월드상가 401호</span> <span>지점
                    서울시 강남구 강남대로 94길 28 유니언타운 강남 701호</span>
            </div>
            <div class="foot_txt2">
                <span id="a3">이용약관</span> <span>개인정보처리방침</span>
                <p>COPYRIGHT ⓒ INNOVATION-T COOPERATION.ALL RIGHT RESERVED.</p>
            </div>
        </div>
    </div>

    <jsp:include page="./js/map.jsp" />

    <jsp:include page="/WEB-INF/views/include/js.jsp" />

</body>

</html>