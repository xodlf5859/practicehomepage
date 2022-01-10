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
    <script src="<%=request.getContextPath() %>/resources/js/info_custom.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/info_style.css">
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
                    <a href="#" class="img-box"><img src="<%=request.getContextPath() %>/resources/img/black_logo.png" alt="logo"></a>
                </div>
                <div class="menu">
                    <div class="list cell-right">
                        <a href="#" class="list1">
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
        <div class="info">
            <div class="info_top">
                <div class="first_img img-box">
                ${portfolio.por_first }
                </div>
                <div class="info_sub">
                    <ul>
                        <li>
                            <div class="project">
                                <p>PROJECT</p>
                                <input type="hidden" id="por_title" name="por_title" value="${portfolio.por_title }">
                                <p id="project">${portfolio.por_title }</p>
                            </div>
                        </li>
                        <li>
                                <input type="hidden" id="por_title" name="por_title" value="${portfolio.por_title }">
                            <div class="type">
                                <p>TYPE</p>
                                <p id="type">${portfolio.por_category }</p>
                            </div>
                        </li>
                        <li>
                            <div class="client">
                                <p>CLIENT</p>
                                <p id="client"></p>
                            </div>
                        </li>
                        <li>
                            <div class="make">
                                <p>MAKE</p>
                                <p id="make">InnovationT</p>
                            </div>
                        </li>
                        <li>
                            <div class="concept">
                                <p>CONCEPT</p>
                                <p id="concept">${portfolio.por_subtitle }</p>
                            </div>
                        </li>
                    </ul>
                </div>
                
            </div>
            <div class="info_main">
                <div class="info_img img-box">
                ${portfolio.por_content }

                </div>
            </div>
        </div>
       <form role="form">
			<input type="hidden" name="por_num" id="por_num" value="${portfolio.por_num }">
       </form>
       
       <c:if test="${loginUser.mem_role eq 1 }">
        <div class="bton2">
            <button id="bt3" onclick="modify_go();">수정</button>
            <button id="bt4" onclick="remove_go();">삭제</button>
        </div>
        </c:if>
        <div class="bton">
            <button id="bt1" onclick="history.go(-1);">리스트로 돌아가기</button>
            <button id="bt2" onclick="location.href='<%=request.getContextPath() %>/'">메인으로 가기</button>
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

<script>
function remove_go() {
	var formObj = $("form[role='form']");
	// 		alert("click remove btn");
	var answer = confirm("정말 삭제하시겠습니까?");
	if (answer) {
		formObj.attr("action", "remove.do");
		formObj.attr("method", "post");
		formObj.submit();

	}

}

function modify_go() {
	var formObj = $("form[role='form']");
// 			alert("click modify btn");
	formObj.attr({
		'action' : 'modifyForm.do',
		'method' : 'post'
	});
	formObj.submit();

}

</script>
</body>
</html>