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
<script src="<%=request.getContextPath() %>/resources/js/con_custom.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/datepicker.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/i18n/datepicker.ko.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/con_style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/menu_bt2.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/datepicker.min.css">


<body>

    <c:if test="${from eq 'regist' }">
        <script>
            alert("문의 성공!");
            location.reload();
        </script>
    </c:if>


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
            <div class="title">
                <span>Contact</span>
            </div>
            <div class="sub_title">
                <span>이노베이션티의 특별한 노하우가 담긴 최신 트렌드의 디자인으로 고객님들을 모십니다!</span>
            </div>
            <div class="location">
                <span class="t1">Location</span>
                <div class="map">
                    <img src="<%=request.getContextPath() %>/resources/img/map1.png" alt="#">
                </div>
                <div class="address">
                    <span>대전광역시 서구 관저북로 25 월드프라자 401호</span>
                </div>
                <div class="tell">
                    <span>TEL ) </span>
                    <span>1611 - 1783</span>
                </div>
            </div>
            <div class="Inquire">
                <form role="form" method="post" name="contactForm" action="<%=request.getContextPath()%>/contact/regist.do">
                    <div class="t2">
                        <span>당신의 프로젝트에 대해 이야기 해주세요.</span>
                    </div>
                    <span class="t1">Inquire</span>
                    <div class="check_box box1">
                        <span class="tt1">
                            프로젝트 형태
                        </span>
                        <span class="tt2">
                            다중 선택 가능합니다.
                        </span>
                        <div class="bx">
                            <ul>
                                <li><input type="checkbox" name="con_project" value="쇼핑몰"><span>쇼핑몰</span></li>
                                <li><input type="checkbox" name="con_project" value="홈페이지"><span>홈페이지</span></li>
                                <li><input type="checkbox" name="con_project" value="반응형 웹"><span>반응형 웹</span></li>
                                <li><input type="checkbox" name="con_project" value="유지보수"><span>유지보수</span></li>
                                <li><input type="checkbox"><span>기타</span>
                                </li>
                                <li><input type="text" name="con_project" placeholder="직접 입력"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="check_box box2">
                        <span class="tt1">
                            프로젝트 기간
                        </span>
                        <span class="tt2">
                            예상시간만 적어주셔도 됩니다.
                        </span>
                        <div class="bx">
                            <input id="datepicker1" type="text" name="con_startTerm" placeholder="시작 날짜"> <span>부터</span>
                            <input id="datepicker2" type="text" name="con_endTerm" placeholder="종료 날짜">
                            <div><input type="checkbox"><span>기간 미정</span></div>
                        </div>
                    </div>
                    <div class="check_box box3">
                        <span class="tt1">
                            의뢰인 정보
                        </span>
                        <div class="bx">
                            <ul>
                                <li><input type="text" name="con_name" placeholder="성명/회사명"></li>
                                <li><input type="text" name="con_mail" placeholder="이메일"></li>
                                <li><input type="text" name="con_tel" placeholder="연락처"></li>
                                <li><input type="text" name="con_budget" placeholder="예산"></li>
                                <li><span>요청사항</span></li>
                                <li><input type="text" name="con_etc"></li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>

            <div class="con_bt">
                <div class="agree">
                    <input type="checkbox" id="chked"><span>개인정보보호정책 </span><span>에 동의합니다.</span>
                </div>
                <button onclick="submit_go();"><span>문의하기</span></button>
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
    <%--     <jsp:include page="/WEB-INF/views/include/js.jsp" /> --%>
    <script>
function submit_go(){
	
	var chk = $('#chked').is(':checked');
    var form = $('form[name="contactForm"]');

	if(!chk){
		alert("개인정보보호정책에 동의해주세요");
		return;
	}
	  form.submit();

	
}
    </script>
</body>

</html>