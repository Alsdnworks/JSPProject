<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<%@include file="link.txt" %>

<SCRIPT language="javascript">                              
function check(){                                         
 with(document.msgwrite){                      
  if(subject.value.length == 0){                  
   alert("제목을 입력");                       
   subject.focus();                           
   return false;                             
  }                                         
  if(name.value.length == 0){                   
   alert("이름을 입력");                  
   name.focus();                              
   return false;                                  
  }                                         
  if(password.value.length == 0){              
   alert("비밀번호를 입력");              
   password.focus();                            
   return false;                               
  }                                        
  if(content.value.length == 0){                    
   alert("내용을 입력");                   
   content.focus();                         
   return false;                           
  }                                        
  document.msgwrite.submit();                       
 }                                          
}                                            
</SCRIPT>
</HEAD>
<BODY>

	<%@include file="menu.jsp" %>
	<%String tablename = request.getParameter("table"); %>
	<div class="container text-center">
	<%
	if(tablename == null) out.println("<form name=\"msgwrite\" action=\"freeboard_save.jsp?table=freeboard\" class=\"form-horizontal\" method=\"post\">");
	else if(tablename.equals("freeboard")) out.println("<form name=\"msgwrite\" action=\"freeboard_save.jsp?table=freeboard\" class=\"form-horizontal\" method=\"post\">");
	else if(tablename.equals("gallery")) out.println("<form name=\"msgwrite\" action=\"freeboard_save.jsp?table=gallery\" class=\"form-horizontal\" method=\"post\">");
	else if(tablename.equals("dataroom")) out.println("<form name=\"msgwrite\" action=\"freeboard_save.jsp?table=dataroom\" class=\"form-horizontal\" method=\"post\">");
	%>
	<form name="msgwrite" action="freeboard_save.jsp?table=<%=tablename%>" class="form-horizontal" method="post">
			<div class="form-group">
				<hr style="border: solid 1px green;">
				<h3 class="text-center bg-info">새글 쓰기</h3>
				<hr style="border: solid 1px green;">
			</div>
			<div class="form-group row">
				<label class="col-2">이름</label>
				<div class="col-6">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-2">E-mail</label>
				<div class="col-6">
					<input type="text" id="email" name="email" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-2">제목</label>
				<div class="col-10">
					<input type="text" id="subject" name="subject" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-2">내용</label>
				<div class="col-10">
					<textarea cols="65" rows="10" id="content" name="content" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-2">암호</label>
				<div class="col-6">
					<input type="password" id="password" name="password" class="form-control">
				</div>
				<div class="offset-md-2 col-12">(비밀번호를 입력하면 수정 또는 삭제가 가능합니다.)</div>
			</div>
			<div class="form-group">
				<hr style="border: solid 1px green;">
			</div>
			<div class="form-group row">
				<div class="col-12" style="display: inline-block; text-align: center;">
					<a href="#" onClick="history.go(-1)">
						<img src="image/cancle.gif" class="img-fluid">
					</a>
					&nbsp;&nbsp;
					<a href="#" onClick="check();">
						<img src="image/ok.gif" class="img-fluid">
					</a>
				</div>
			</div>
		</form>
	</div>
	<br>
	<%@include file="footer.jsp" %>
</BODY>
</HTML>
