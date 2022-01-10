<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
    <style>
.map_wrap {position:relative;overflow:hidden;width:100%;height:350px;}
.radius_border{border:1px solid #919191;border-radius:5px;}     
.custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:130px;height:30px;margin:0;padding:0;z-index:1;font-size:12px;font-family:'Malgun Gothic', '맑은 고딕', sans-serif;}
.custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;}
.custom_typecontrol .btn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}       
.custom_typecontrol .btn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
.custom_typecontrol .btn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}    
.custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
.custom_typecontrol .selected_btn:hover {color:#fff;}   
.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
.custom_zoomcontrol span img {width:15px;height:15px;padding:12px 0;border:none;}             
.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}            
</style>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a606bd75a5efab100648a4b72b6c0cb9"></script>

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
			alert("로그인 성공");
// 			location.reload();
		</script>
	</c:if>


메인입니다
<c:if test="${loginUser == null }">
<button type="button" onclick="location.href='/common/loginForm'">로그인
</button>

<form action="<%=request.getContextPath()%>/member/registForm.do" method="post">
<button type="submit" >회원가입</button>
</form>
</c:if>

<c:if test="${loginUser != null }">
${loginUser.mem_name }님 안녕하세요<br>
<button type="button" id="logout" onclick="location.href='/common/logout'">로그아웃</button>
</c:if>



지 도
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
    <!-- 지도타입 컨트롤 div 입니다 -->
    <div class="custom_typecontrol radius_border">
        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
    </div>
    <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
    <div class="custom_zoomcontrol radius_border"> 
        <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
        <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
    </div>
</div>


<jsp:include page="./js/map.jsp" />
<jsp:include page="/WEB-INF/views/include/js.jsp" /> 


</body>
</html>