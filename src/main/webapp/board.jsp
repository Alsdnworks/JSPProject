<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@include file="dbconn.jsp"%>
<%
Statement st = null;
ResultSet rs = null;
Vector subject = new Vector();
Vector content = new Vector();
Vector inputdate = new Vector();
Vector masterid = new Vector();
Statement st2 = null;
ResultSet rs2 = null;
Vector subject2 = new Vector();
Vector content2 = new Vector();
Vector inputdate2 = new Vector();
Vector masterid2 = new Vector();
try {
	st = con.createStatement();
	String tablename = request.getParameter("table");
	if (tablename == null)
		tablename = "freeboard";
	String sql = "select * from " + tablename + " order by";
	sql = sql + " masterid desc, replynum, step, id";
	rs = st.executeQuery(sql);
	while (rs.next()) {
		subject.addElement(rs.getString("subject"));
		content.addElement(rs.getString("content"));
		inputdate.addElement(rs.getString("inputdate"));
		masterid.addElement(rs.getString("masterid"));
	}
} catch (java.sql.SQLException e) {
	out.println(e);
}
%>

<%
try {
	st2 = con.createStatement();
	String sql = "select * from dataroom order by";
	sql = sql + " masterid desc, replynum, step, id";
	rs2 = st2.executeQuery(sql);
	while (rs2.next()) {
		subject2.addElement(rs2.getString("subject"));
		content2.addElement(rs2.getString("content"));
		inputdate2.addElement(rs2.getString("inputdate"));
		masterid2.addElement(rs2.getString("masterid"));
	}
} catch (java.sql.SQLException e) {
	out.println(e);
}
%>

<div class="main-content-wrap01 cms-edit" id="cms-conWtent">
	<div class="main-content-box main-content-box01">
		<div class="main-mini-wrap">
			<div class="main-mini-box main-mini-box01">
				<div class="mini-tab-box">
					<ul>
						<li class="active">
							<a class="mini-board-tab " href="#a" title="공지사항">공지사항</a>
							<div class="mini-board-content">
								<div class="main-notice-box temp08">
									<ul>
										<li>
											<%
											for (int i = 0; i < masterid.size(); i++) {
											%>
											<p class="mini-date">
												<span>
													<%
													out.print(masterid.elementAt(i));
													%>
												</span>
												<%
												out.print((((String)inputdate.elementAt(i)).substring(0, 5)).replace('-', '.'));
												%>
											</p>
											<div class="mini-txt-box">
												<p class="mini-title">
													<a href="./freeboard_read.jsp?table=freeboard&id=1&page=<%=i %>" title="자세히보기">
														<%
														out.print(subject.elementAt(i));
														%>
													</a>
												</p>
												<p class="mini-txt">
													<a href="./freeboard_read.jsp?table=freeboard&id=1&page=<%=i %>" title="자세히보기">
														<%
														out.print(content.elementAt(i));
														%>
													</a>
												</p>
											</div>
											<%
											}
											%>
										</li>
									</ul>
								</div>
							</div>
							<a class="btn-more" href="./freeboard_list.jsp?table=freeboard" title="공지사항 바로가기 ">더보기</a>
						</li>
						<li>
							<a class="mini-board-tab" href="#a" title="갤러리">갤러리</a>
							<div class="mini-board-content">
								<div class="main-notice-box temp08">
									<ul>
										<li>게시판에 올린 글이 없습니다</li>
									</ul>
								</div>
							</div>
							<a class="btn-more" href="./freeboard_list.jsp?table=gallery" target="_blank" title="갤러리 바로가기">더보기</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="main-mini-box main-mini-box02">
				<h3 class="main-title">서식자료실</h3>
				<div class="mini-board-content">
					<div class="main-notice-box temp08">
						<ul>
							<li>
								<%
								for (int i = 0; i < masterid2.size(); i++) {
								%>
								<p class="mini-date">
									<span>
										<%
										out.print(masterid2.elementAt(i));
										%>
									</span>
									<%
									out.print((((String)inputdate2.elementAt(i)).substring(0, 5)).replace('-', '.'));
									%>
								</p>
								<div class="mini-txt-box">
									<p class="mini-title">
										<a href="./freeboard_read.jsp?table=dataroom&id=1&page=1" title="자세히보기">
											<%
											out.print(subject2.elementAt(i));
											%>
										</a>
									</p>
									<p class="mini-txt">
										<a href="./freeboard_read.jsp?table=dataroom&id=1&page=1" title="자세히보기">
											<%
											out.print(content2.elementAt(i));
											%>
										</a>
									</p>
								</div>
								<%
								}
								%>
							</li>
						</ul>
					</div>
				</div>
				<a class="btn-more" href="./freeboard_list.jsp?table=dataroom" title="서식자료실 바로가기 ">더보기</a>
			</div>
		</div>
	</div>