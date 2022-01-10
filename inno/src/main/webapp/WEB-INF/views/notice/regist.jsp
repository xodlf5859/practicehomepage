<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
    

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

</head>
<body>

<form action="regist.do" role="form" method="post" name="registForm">
<div>
<label for="notice_title">제목: </label><input type="text" id="notice_title" name="notice_title" >
</div>
<div>
<label for="notice_writer">작성자: </label><input type="text" id="notice_writer" name="notice_writer" value="${loginUser.mem_name }">
</div>
<div>
<label for="notice_content">내용:</label>
<textarea class="textarea" name="notice_content" id="notice_content" rows="20"
	placeholder="1000자 내외로 작성하세요." style="display: none;"></textarea>
</div>
<div>
	<button type="button" id="registBtn" onclick="regist_go();">등 록</button>
	<button type="button" id="cancleBtn" onclick="history.go(-1);">취 소</button>
</div>
</form>





<script>
window.onload=function(){
	Summernote_start($('#notice_content')); 
}

function regist_go(){
	var form = document.registForm;
	if(form.notice_title.value==""){
		alert("제목은 필수입니다.");
		return;
	}
	
	form.submit();
}

</script>
<%@ include file="/WEB-INF/views/common/summernote.jsp" %>

</body>
</html>