<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.placeholder.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.placeholder.min.js"></script>
	<jsp:include page="./js/loginForm_js.jsp" />
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/loginForm.css">

<body>
    <div class="wrap">
        <div class="login_main">
            <div class="header">
                <div class="logo">
                    <a href="<%=request.getContextPath() %>/"><img src="<%=request.getContextPath() %>/resources/img/black_logo.png" alt="logo"></a>
                </div>
                <div class="menu">
                    <a href="#" class="project">
                        <p>프로젝트 의뢰</p>
                    </a>
                    <a class="menu-trigger" href="#">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </div>
            </div>
            <div class="content">
                <div class="tt">
                    <p>Log In</p>
                </div>
                <div class="log_box">
                    <form action="<%=request.getContextPath()%>/common/login.do" method="post" accept-charset="utf-8" name="log_box">
                        <input type="text" value="" placeholder="아이디" id="id" name="id">
                        <br>
                        <input type="password" value="" placeholder="비밀번호" id="pwd" name="pwd">
                    </form>
                </div>
                <div class="log_bt" onclick="test();">
                    <a>
                        <span>로그인</span>
                    </a>
                </div>
                <div class="log_etc">
                    <div class="find_id">
                        <a href="#">
                            <p>아이디/비밀번호 찾기</p>
                        </a>
                    </div>
                    <div class="reg">
                        <a href="<%=request.getContextPath() %>/member/registForm.do">
                            <p>회원가입</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>




<%-- <form action="<%=request.getContextPath()%>/common/login.do" method="post"> --%>
<!--                <input type="text" class="" name="id" placeholder="아이디를 입력하세요." value=""> -->
<!--                <input type="password" class="" name="pwd" placeholder="패스워드를 입력하세요."  value=""> -->

<!--                   <button type="submit" class="">로그인</button> -->

<!-- </form> -->
<jsp:include page="/WEB-INF/views/include/js.jsp" /> 
<script>
function test() {
	  var form = $('form[name="log_box"]');
	  form.submit();
}
</script>
</body>
</html>