<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<div>
		<label for="notice_title">제 목</label> <input type="text"
			id="notice_title" name="notice_title" readonly="readonly"
			value="${notice.notice_title }">
	</div>
	<div>
		<label for="notice_title">작 성 자</label> <input type="text"
			id="notice_writer" name="notice_writer" readonly="readonly"
			value="${notice.notice_writer }">
	</div>
	<div>
		<label for="notice_regdate">작 성 일</label> <input type="text"
			id="notice_writer" name="notice_regdate" readonly="readonly"
			value="${notice.notice_regdate }">
	</div>
	<div>
		<label for="notice_view">조 회 수</label> <input type="text"
			id="notice_view" name="notice_view" readonly="readonly"
			value="${notice.notice_view }">
	</div>
	<div>
		<label for="notice_content">내 용</label>
		<div id=notice_content>${notice.notice_content }</div>
		테슷흐
		<br>
${notice.notice_test }	</div>

	<c:set value="${loginUser.mem_name }" var="mem_name" />
	<c:set value="${notice.notice_writer }" var="notice_name" />

	<c:if test="${mem_name eq notice_name }">
		<button type="button" id="modifyBtn" onclick="modify_go();">수
			정</button>
		<button type="button" id="removeBtn" onclick="remove_go();">삭
			제</button>
	</c:if>

	<form role="form">
		<input type="hidden" name="notice_num" id="notice_num"
			value="${notice.notice_num }">
	</form>


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
			// 		alert("click modify btn");
			formObj.attr({
				'action' : 'modifyForm.do',
				'method' : 'post'
			});
			formObj.submit();

		}
	</script>


	<jsp:include page="/WEB-INF/views/include/js.jsp" />

</body>
</html>