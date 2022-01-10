<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/team_custom.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/team_style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/menu_bt5.css">
<body>
    <div class="wrap margin-0-auto">
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
                        <a href="<%=request.getContextPath() %>/" class="img-box"><img src="<%=request.getContextPath() %>/resources/img/black_logo.png" alt="logo"></a>
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
        <div class="content">
            <div class="team_title">
                <div class="title">
                    <span>Team</span>
                </div>
                <div class="sub_title">
                    <span>소통이 있는 장소 이노베이션티(주)</span>
                </div>
            </div>
            <div class="team_act img-box">
                <div class="te_txt"><span>Team activities</span><br>
                    <span>소통이 있는 장소 이노베이션티(주)</span>
                </div>
            </div>
            <div class="list6">
                <p>최신글</p>
                <ul>
                    <li><span>전체</span></li>
                    <li><span>우수사원</span></li>
                    <li><span>생일자</span></li>
                    <li><span>워크숍</span></li>
                    <li><span>사내교육</span></li>
                    <li><span>사내 시설</span></li>
                    <li><span>기타 활동</span></li>
                </ul>
            </div>
            <div class="team_event">
                <ul>
                    <li>
                        <div class="event_list ev1">
                            <img src="<%=request.getContextPath() %>/resources/img/team1.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>2021년 12월 21일</p>
                            <p>생일파티</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                    <li>
                        <div class="event_list ev2">
                            <img src="<%=request.getContextPath() %>/resources/img/team2.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>10월</p>
                            <p>우수사원 수상</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                    <li>
                        <div class="event_list ev3">
                            <img src="<%=request.getContextPath() %>/resources/img/team3.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>이노베이션티</p>
                            <p>사원증 제작</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                    <li>
                        <div class="event_list ev4">
                            <img src="<%=request.getContextPath() %>/resources/img/team4.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>9월</p>
                            <p>우수사원 수상</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                    <li>
                        <div class="event_list ev5">
                            <img src="<%=request.getContextPath() %>/resources/img/team5.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>8월</p>
                            <p>우수사원 수상</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                    <li>
                        <div class="event_list ev6">
                            <img src="<%=request.getContextPath() %>/resources/img/team6.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>단양 워크숍</p>
                            <p>경품 당첨자 수여식</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                    <li>
                        <div class="event_list ev7">
                            <img src="<%=request.getContextPath() %>/resources/img/team7.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>2021년 추석</p>
                            <p>우수사원 포상</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                    <li>
                        <div class="event_list ev8">
                            <img src="<%=request.getContextPath() %>/resources/img/team8.png" alt="#">
                            <p>INNOVATION-T</p>
                            <p>이노베이션티</p>
                            <p>제주도 워크숍</p>
                            <p>2021-00-00</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="plus">
                <p class="img-box"><img src="<%=request.getContextPath() %>/resources/img/plus1.png" alt="#"></p>
                <p class="img-box"><img src="<%=request.getContextPath() %>/resources/img/plus2.png" alt="#"></p>
            </div>
        </div>
        <div class="footer">
            <div class="foot_logo img-box">
                <img src="<%=request.getContextPath() %>/resources/img/Logo.png" alt="#">
            </div>
            <div class="foot_txt">
                <p>이노베이션티(주)</p>
                <span id="a1">대표자 : 최종인 이원경</span>
                <span>사업자등록번호  582-86-01581</span><br>
                <span id="a2">주소 대전광역시 서구 관저북로 25 월드상가 401호</span>
                <span>지점 서울시 강남구 강남대로 94길 28 유니언타운 강남 701호</span>
            </div>
            <div class="foot_txt2">
                <span id="a3">이용약관</span>
                <span>개인정보처리방침</span>
                <p>COPYRIGHT ⓒ INNOVATION-T COOPERATION.ALL RIGHT RESERVED.</p>
            </div>
        </div>
    </div>

</body>
</html>