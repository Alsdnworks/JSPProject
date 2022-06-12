<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<HTML>
<HEAD>
<TITLE>글 삭제하기</TITLE>
<%@ include file="link.txt"%>
</HEAD>
<BODY>
	<br>	
	<%@ include file="dbconn.jsp"%>

	[
	<a href="freeboard_list.jsp?table=freeboard&go=1">게시판 목록으로 </a>
	]
	<%
	String pwd_input = request.getParameter("password");

	String sql = null;
	//Connection con= null;
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
		} 
		else 
		{
			//내용이 있을때 == id값이 일치하는 자료가 있을때
			String pwd = rs.getString("password");
			out.print(pwd);
			out.print(request.getParameter("password"));
			if (pwd.equals(request.getParameter("password"))) 
			{
				//비밀번호가 일치할때
				sql = "delete from " + tablename + " where id=?";
				st = con.prepareStatement(sql);
				st.setInt(1, id);
				cnt = st.executeUpdate();
				if (cnt > 0)
					out.println("정상적으로 삭제되었습니다.");
				else{
					out.println("삭제되지 않았습니다.");
				}
			}
			else{
				//비밀번호가 일치하지 않을때
				out.println("비밀번호가 틀립니다.");
				/* 
				sql = "delete from " + tablename + " where id=?";
				st = con.prepareStatement(sql);
				st.setInt(1, id);
				cnt = st.executeUpdate();
				if (cnt > 0)
					out.println("정상적으로 삭제되었습니다.");
				else{
					out.println("삭제되지 않았습니다.");
				} */
			}
			/* else {
				if(pwd.equals(pwd_input)) out.println("같음");
				else{
					out.println(pwd_input);
					out.println(pwd);
				}
				out.println("비밀번호가 틀립니다.");
			} */
		}
		rs.close();
		st.close();
		con.close();
	} catch (SQLException e) {
		out.println(e);
	}
	%>
	<br>
	<%@include file="footer.jsp"%>
</BODY>
</HTML>