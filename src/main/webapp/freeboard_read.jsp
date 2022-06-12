<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.util.*"%>

<HTML>
<HEAD>
<TITLE>글 읽기</TITLE>
<%@include file="link.txt" %>
</HEAD>
<BODY>
	<%@ include file="dbconn.jsp"%>
	<%
	String sql = null;
	// Connection con= null;
	PreparedStatement st = null;
	ResultSet rs = null;

	int id = Integer.parseInt(request.getParameter("id"));
	String tablename = request.getParameter("table");

	try {
		if (tablename == null)
			tablename = "freeboard";
		sql = "select * from " + tablename + " where id=? ";
		st = con.prepareStatement(sql);
		st.setInt(1, id);
		rs = st.executeQuery();
		if (!(rs.next())) {
			out.println("해당 내용이 없습니다");
		} else {
			String em = rs.getString("email");
			if ((em != null) && (!(em.equals(""))))
		em = "<A href=mailto:" + em + ">" + rs.getString("name") + "</A>";
			else
		em = rs.getString("name");
			out.println("<table class='table'>");
			out.println("<thread>");
			out.println("<tr>");
			out.println("<th colspan=\"2\" scope=\"col\">제목 : " + rs.getString("subject") + "</th>");
			out.println("</tr>");
			out.println("</thread>");
			out.println("<tboard>");
			out.println("<tr>");
			out.println("<td colspan=\"2\" scope=\"row\">글쓴이 : " + em + "</td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td colspan=\"2\" scope=\"row\">작성일 : " + rs.getString("inputdate") + "</td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td colspan=\"2\" scope=\"row\">조회 : " + rs.getInt("readcount") + "</td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td colspan=\"2\" scope=\"row\">" + rs.getString("content").replaceAll(" ", "&nbsp;")
			.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
			out.println("</tr>");
			out.println("</tboard>");
			out.println("</table>");
	%>
	<div class="container" style="display: inline-block; text-align: center;">
		<tr>
			<td align="right" width="450"><A href="freeboard_list.jsp?go=<%=request.getParameter("page")%>">
					<img src="image/list.jpg" border=0>
				</a></td>
			<td width="70" align="right"><A href="freeboard_rwrite.jsp?id=<%=request.getParameter("id")%>&page=<%=request.getParameter("page")%>">
					<img src="image/reply.jpg" border=0>
				</A></td>
			<td width="70" align="right"><A href="freeboard_upd.jsp?id=<%=id%>&page=1">
					<img src="image/edit.jpg" border=0>
				</A></td>
			<td width="70" align="right"><A href="freeboard_del.jsp?id=<%=id%>&page=1&table=<%=tablename%>">
					<img src="image/del.jpg" border=0>
				</A></td>
		</tr>
	</div>
	<%
	sql = "update "+ tablename +" set readcount= readcount + 1 where id= ?";
	st = con.prepareStatement(sql);
	st.setInt(1, id);
	st.executeUpdate();
	}
	rs.close();
	st.close();
	con.close();
	} catch (SQLException e) {
	out.println(e);
	}
	%>
	<script src="../bootstrap-4.6.0-dist/jquery/jquery-3.5.1.js"></script>
	<script src="..bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js"></script>

</BODY>
</HTML>