<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/memberRegistStyle.css">
<body>
  <header class="ma-0-auto flex-sb align-items-cen">
      <h1 id="logo"><a href="<%=request.getContextPath() %>/"><img src="<%=request.getContextPath() %>/resources/img/logo_black.png" alt="로고이미지"></a></h1>
      <div id="headerRightCon" class="flex-sb align-items-cen">
          <p id="headerRequestMenu"><a href="#" class="font-18px">프로젝트 의뢰</a></p>
          <div><a href="#"><img src="<%=request.getContextPath() %>/resources/img/header_menu_icon.png" alt="햄버거메뉴"></a></div>
      </div>
  </header>

  <section class="ma-0-auto">
      <div>
          <h2 class="font-60px main-color-yellow txt-center">Sign In</h2>
      </div>
      <div class="margin-bottom-12px">
          <p class="font-bold font-28px">회원 정보</p>
      </div>
      <form role="form" action="<%=request.getContextPath()%>/member/regist.do" method="post">
          <input type="hidden" name="mem_photo" id="mem_photo" value="" />
          <div id="inputContainer" class="flex-sb margin-bottom-44px">
              <div class="flex-sb flex-column">
                  <div id="inputIdWraper" class="flex-sb align-items-cen">
                      <input type="text" placeholder="아이디" id="mem_id" name="mem_id">
                      <p class="txt-center cur-pointer" onclick="idCheck_go();">중복확인</p>
                  </div>
                  <input type="password" name="mem_pwd" id="mem_pwd" placeholder="비밀번호">
                  <input type="text" name="mem_name" id="mem_name" placeholder="*이름">
              </div>
              <div class="flex-sb flex-column">
                  <input type="email" name="mem_mail" id="mem_mail" placeholder="이메일">
                  <input type="password" name="mem_pwd2" id="mem_pwd2" placeholder="비밀번호 확인">
                  <input type="tel" maxlength="11" name="mem_phone" id="mem_phone" placeholder="연락처">
              </div>
          </div>
          <div>
              <div class="flex-str margin-left-30px margin-bottom-2vh">
                  <div class="posi-re">
                      <img src="<%=request.getContextPath() %>/resources/img/check_icon_gray.png" alt="체크 전" class="posi-ab-00 cur-pointer unchecked">
                      <img src="<%=request.getContextPath() %>/resources/img/check_icon_yellow.png" alt="체크 후" class="posi-ab-00 display-none cur-pointer checked">
                  </div>
                  <p class="color-red margin-left-30px"><a href="">개인정보 수집 및 이용 동의</a> </p>
                  <p>에 동의합니다.</p>
                  <p class="color-red">(필수)</p>
              </div>
              <div class="flex-str margin-left-30px">
                  <div class="posi-re">
                      <img src="<%=request.getContextPath() %>/resources/img/check_icon_gray.png" alt="체크 전" class="posi-ab-00 cur-pointer unchecked">
                      <img src="<%=request.getContextPath() %>/resources/img/check_icon_yellow.png" alt="체크 후" class="posi-ab-00 display-none cur-pointer checked">
                  </div>
                  <p class="color-red margin-left-30px"><a href="">이용약관 동의</a></p>
                  <p>에 동의합니다.</p>
                  <p class="color-red">(필수)</p>
              </div>
          </div>
          <div id="signInButtonWraper" class="flex-sb ma-0-auto">
              <div class="flex-cen-cen cur-pointer">
                  <p class="font-20px font-bold" onclick="history.go(-1);">취소하기</p>
              </div>
              <div class="flex-cen-cen cur-pointer">
                  <p class="font-20px font-bold" onclick="regist_go();return false;">가입하기</p>
              </div>
          </div>
      </form>

  </section>

<script>
	const check = document.querySelector('.checked');
	const unchecked = document.querySelector('.unchecked');
	
	unchecked.addEventListener('click', ()=>{
	  
	});

</script>

<%-- <form role="form" action="<%=request.getContextPath()%>/member/regist.do" method="post"> --%>
<!--  <span>이메일</span> <input type="text" id="mem_mail" name="mem_mail" placeholder="이메일을 입력해주세요"> -->
<!--  <button type="button" onclick="idCheck_go();">중복 체크</button> -->
<!--  <br> -->
<!--  <span>비밀번호</span> <input type="password" id="mem_pwd" name="mem_pwd" placeholder="비밀번호를 입력해주세요"><br> -->
<!--  <span>비밀번호확인</span> <input type="password" id="mem_pwd2" name="mem_pwd2" placeholder="비밀번호를 입력해주세요"><br> -->
<!--  <span>이름</span> <input type="text" id="mem_name" name="mem_name" ><br> -->
<!--  <span>전화번호</span> <input type="text" id="mem_phone" name="mem_phone" ><br> -->
<!--  <input type="hidden" name="mem_photo" id="mem_photo" value=""/> -->
 
<!--  <button type="button" id="registBtn" onclick="regist_go();return false;">등 록</button> -->
<!--  <button type="button" id="cancelBtn" onclick="history.go(-1);">취 소</button> -->
<!-- </form> -->
<jsp:include page="/WEB-INF/views/include/js.jsp" /> 

<jsp:include page="./js/regist_js.jsp" />

</body>
</html>