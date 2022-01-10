<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${dataMap.pageMaker.cri }"/>
<c:set var="noticeList" value="${dataMap.noticeList }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<c:if test="${loginUser.mem_role eq 1 }">
<button onclick="location.href='/notice/registForm'">게시글 등록</button>
</c:if>

         <div id="keyword" class="card-tools">
                    <div class="input-group row">
                    	<input type="hidden" name="perPageNum" id="perPageNum" value="10">
                    	<input type="hidden" name="searchType" id="searchType" value="t">
                        <input class="form-control" type="text" name="keyword" value="" style="max-width: 193px; width: 100%;">
                        <span class="input-group-append" style="margin-right: 2%">
                            <button class="btn btn-primary" type="button" onclick="listNotice_go(1,'list.do');" data-card-widget="search">
                                <i class="fa fa-fw fa-search"></i>
                            </button>
                        </span> 
                    </div>
                </div>
<table border="1">
	<tr >
		<th style="width: 10%;">No</th>
		<th style="width: 50%;">제목</th>
		<th style="width: 15%;">작성자</th>
		<th>등록일</th>
		<th style="width: 10%;">조회수</th>
	</tr>
	<c:if test="${empty noticeList }">
		<tr>
			<td> 내용이 없습니다</td>
		</tr>
	</c:if>
	<c:forEach items="${noticeList }" var="notice" varStatus="status">
	<c:set value="${notice.notice_content }" var="test"/>
		<tr>
			<td>${status.count}</td>
			<td>
			<a href="/notice/detail?notice_num=${notice.notice_num}&from=list">
			<span>
			${notice.notice_title}
<%-- 			<c:if test="${fn:contains(test,'<img') }" > --%>
<!-- 			포함 -->
<%-- 			</c:if> --%>
			</span>
			</a>
			</td>
			<td>${notice.notice_writer}</td>
			<td>${notice.notice_regdate}</td>
			<td>${notice.notice_view}</td>
			
		</tr>
		
	</c:forEach>
</table>


<script>
	<c:if test="${from eq 'remove'}" >
	alert("삭제되었습니다.");
	window.opener.location.reload();
	window.close();
	</c:if>
	<c:if test="${from eq 'modify'}" >
	alert("수정 되었습니다..");
	window.opener.location.reload();
	window.close();
	</c:if>

	// 공지사항
	function listNotice_go(page,url){
//		alert("test");
		if(!url) url="list.do";
		
		var jobForm=$('#jobForm');
		
		if(!page) page=1;
		
		jobForm.find("[name='page']").val(page);
		jobForm.find("[name='perPageNum']").val(10);
		jobForm.find("[name='searchType']").val('t');
		jobForm.find("[name='keyword']").val($('div.input-group>input[name="keyword"]').val());
		
		jobForm.attr({
			action:url,
			method:'get'
		}).submit();
		
	}
</script>

<jsp:include page="/WEB-INF/views/include/js.jsp" /> 
<%@ include file="/WEB-INF/views/common/paginationNotice.jsp"%>


</body>
</html>