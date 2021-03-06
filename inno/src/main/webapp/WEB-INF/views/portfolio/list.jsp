<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${dataMap.pageMaker.cri }"/>
<c:set var="portfolioList" value="${dataMap.portfolioList }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/works_custom.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/works_style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/menu_bt3.css">
    
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
                            <a href="<%=request.getContextPath() %>/contact" class="list1">
                            <span>???????????? ??????</span>
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
        <div class="works_title">
            <div class="title">
                <span>WORKS</span>
            </div>
            <div class="sub_title">
                <span>????????????????????? ????????? ???????????? ?????? ?????? ???????????? ??????????????? ??????????????? ????????????!</span>
                <c:if test="${loginUser.mem_role eq 1 }">
                <button onclick="location.href='<%=request.getContextPath() %>/portfolio/registForm'" style="float: right">??? ??????</button>
	            </c:if>    
            </div>
        </div>
        <div class="works_list row">
            <div class="list_menu">
                <ul>
                    <li><span>All</span></li>
                    <li><span>Web</span></li>
                    <li><span>App</span></li>
                    <li><span>Maintenance</span></li>
                </ul>
            </div>
            <div class="port">
                <ul>
                	<c:forEach items="${portfolioList }" var="portfolio" varStatus="status">
                
                    <li>
                        <div class="port_list">
                            <p class="b1">${portfolio.por_subtitle }</p>
                            <p class="b2" onclick="location.href='<%=request.getContextPath()%>/portfolio/detail?por_num=${portfolio.por_num}&from=list'">
                            ${portfolio.por_title }</p>
                            <!-- b1=???????????? b2 ????????? -->
                        </div>
                        <div class="port_list_hide img-box">
                            <img src="<%=request.getContextPath() %>/resources/img/works${status.count }.png" alt="#">
                        </div>
                    </li>
                    </c:forEach>
                </ul>
            </div>
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
            <p>??????????????????(???)</p>
            <span id="a1">????????? : ????????? ?????????</span>
            <span>?????????????????????  582-86-01581</span><br>
            <span id="a2">?????? ??????????????? ?????? ???????????? 25 ???????????? 401???</span>
            <span>?????? ????????? ????????? ???????????? 94??? 28 ??????????????? ?????? 701???</span>
        </div>
        <div class="foot_txt2">
            <span id="a3">????????????</span>
            <span>????????????????????????</span>
            <p>COPYRIGHT ??? INNOVATION-T COOPERATION.ALL RIGHT RESERVED.</p>
        </div>
    </div>

<script>
<c:if test="${from eq 'remove'}" >
alert("?????????????????????.");
window.opener.location.reload();
window.close();
</c:if>
<c:if test="${from eq 'modify'}" >
alert("?????? ???????????????..");
window.opener.location.reload();
window.close();
</c:if>

</script>

</body>
</html>