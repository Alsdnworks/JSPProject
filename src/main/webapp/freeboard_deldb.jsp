<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<HTML>
<HEAD>
<TITLE>글 삭제하기</TITLE>
<link href="filegb.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
	<%@ include file="dbconn.jsp"%>

	[
	<a href="freeboard_list.jsp?table=<%=(String)request.getParameter("table")%>&go=1">게시판 목록으로 </a>
	]
	<%
	String pwd_input = request.getParameter("password");
	String sql = null;
	PreparedStatement st = null;
	ResultSet rs = null;
	int cnt = 0;
	String tablename = (String)request.getParameter("table");
	if(tablename == null) tablename = "freeboard";
	int id = Integer.parseInt(request.getParameter("id"));

	try {
		sql = "select * from " + tablename + " where id=?";
		st = con.prepareStatement(sql);
		st.setInt(1, id);
		rs = st.executeQuery();
		if (!(rs.next())) {
			out.println("해당 내용이 없습니다");
		} else {
			String pwd = rs.getString("password");
			if (pwd.equals(request.getParameter("password"))) {
				sql = "delete from " + tablename + " where id=?";
				st = con.prepareStatement(sql);
				st.setInt(1, id);
			}
			else{
				if(pwd.equals(pwd_input)) out.println("같음");
				else{
					out.println(pwd_input);
					out.println(pwd);
				}
				out.println("비밀번호가 틀립니다.");
			}
		}
		rs.close();
		st.close();
		con.close();
	} catch (SQLException e) {
		out.println(e);
	}
	%>
</BODY>
</HTML>