<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<HTML>
<HEAD>
<script>
function check(){
 with(document.msgdel){		
  if(password.value.length == 0){
   alert("비밀번호가 틀립니다.");
   password.focus(); 
   return false;
  }
  
  document.msgdel.submit();
 }
}
</SCRIPT>
<%@include file="link.txt"%>
</HEAD>
<BODY>
	<%@include file="menu.jsp"%>
	<br>
	<div class="container">
		<FORM name="msgdel" method=post action=freeboard_deldb.jsp>
		<div class="form-group">
		    	<hr style="border : solid 1px green;">
    			<h3 class="text-center bg-info">글 삭제하기</h3>
    			<hr style="border : solid 1px green;">
    			</div>
			<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
			<input type="hidden" name="page" value="<%=request.getParameter("page")%>">
			<div class="form-group row">
			<label class="col-2">암호</label>
			<div class="col-6">
			<input type="password" name=password class='form-control'>
			</div>
		</div>
			<hr style="border : solid 1px green;">
			<div class="form-group row">
				<div class="col-12" style="display:inline-block; text-align:center;">				
				<a href="freeboard_list.jsp?go=<%=request.getParameter("page")%>"><img src="image/list.jpg" border=0></a>
				&nbsp;&nbsp;
				<a href="#" onClick="check();"><img src="image/del.jpg" class="img-fluid"></a>
				&nbsp;&nbsp;
			</div>
		</form>
		</div>
		<br>
			<%@include file="footer.jsp"%>
</BODY>
</HTML>