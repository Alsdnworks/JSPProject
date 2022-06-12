<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<title>편성교과목 | Al소프트웨어학과</title>
<%@include file="link.txt"%>
</head>
<body>

	<%@include file="menu.jsp"%>

	<div class="container">
		<p class="h2 font-weight-bold">편성교과목</p>
		<br>
	</div>

<SCRIPT language="javascript">
	function check() {
		with (document.msgsearch) {
			if (sval.value.length == 0) {
				alert("검색어를 입력해 주세요!!");
				sval.focus();
				return false;
			}
			document.msgsearch.submit();
		}
	}
	/*
	function rimgchg(p1,p2) {
	 if (p2==1) 
	  document.images[p1].src= "image/open.gif";
	 else
	  document.images[p1].src= "image/arrow.gif";
	 }

	function imgchg(p1,p2) {
	 if (p2==1) 
	  document.images[p1].src= "image/open.gif";
	 else
	  document.images[p1].src= "image/close.gif";
	}
	 */
</SCRIPT>

</HEAD>
<BODY>
	<div class="container">
		<%@include file="freeboard_list_subject.jsp" %>
	</div>
	<br>
	<%@include file="footer.jsp"%>

</body>
</html>