<%@ page contentType="text/html; charset=utf-8" %> 
<%@ page language="java" import="java.sql.*" %> 
<HTML>
<HEAD>
<SCRIPT language="javascript">
function check() {
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
<%@include file="link.txt"%>
</HEAD>
<BODY>
<%@ include file="dbconn.jsp" %>

<P>
<%
 String sql=null;
// Connection con= null;
 PreparedStatement st =null;
 ResultSet rs =null;
 int cnt=0;
 int id = Integer.parseInt(request.getParameter("id"));
 String p= request.getParameter("page");
 
 
 try {
  sql = "select * from freeboard where id=? ";
  st = con.prepareStatement(sql);
  st.setInt(1, id);
  rs = st.executeQuery();
  if (!(rs.next()))  {
   out.println("해당 내용이 없습니다");
  } else {
%>
<div class="container">
    	<form name = "msgwrite" action="freeboard_upddb.jsp?id=<%=id%>&page=<%=p%>" class="form-horizontal" method="post">
    		<div class="form-group">
    			<hr style="border : solid 1px green;">
    			<h3 class="text-center bg-info">글 수정하기</h3>
    			<hr style="border : solid 1px green;">
    		</div>
    		<div class="form-group row">
			<label class="col-2">이름</label>
			<div class="col-6">
				<input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("name")%>">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-2">E-mail</label>
			<div class="col-6">
				<input type="text" id="email" name="email" class="form-control" value="<%=rs.getString("email")%>">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-2">제목</label>
			<div class="col-10">
				<input type="text" id="subject" name="subject" class="form-control" value="<%=rs.getString("subject")%>">
			</div>
		</div>		
		<div class="form-group row">
			<label class="col-2">내용</label>
			<div class="col-10">
				<textarea cols="65" rows="10" id="content" name="content" class="form-control"><%=rs.getString("content")%></textarea>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-2">암호</label>
			<div class="col-6">
				<input type="password" id="password" name="password" class="form-control">
			</div>
			<div class="offset-md-2 col-12">
				비밀번호를 입력하면 수정 또는 삭제가 가능합니다.
			</div>
		</div>

 		<div class="form-group">
			<hr style="border: solid 1px green;">
		</div>
			<div class="form-group row">
				<div class="col-12" style="display:inline-block; text-align:center;">
				<a herf="#" onClick="check();"><img src="image/ok.gif" class="img-fluid"></a>
				&nbsp;&nbsp;
				<a href="#" onClick="history.go(-1)"><img src="image/cancle.gif"  border="0"></a>
				<a href="freeboard_list.jsp?go=<%=request.getParameter("page")%>"><img src="image/list.jpg" border=0></a>
				&nbsp;&nbsp;
			</div>
</form>
</div>
<%
  }
  rs.close();
  st.close();
  con.close();
 } catch (SQLException e) {
  out.println(e);
 } 
%>
<script src="../bootstrap-4.6.0-dist/jquery/jquery-3.5.1.js"></script>
<script src="../bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js"></script>
</BODY>
</HTML>