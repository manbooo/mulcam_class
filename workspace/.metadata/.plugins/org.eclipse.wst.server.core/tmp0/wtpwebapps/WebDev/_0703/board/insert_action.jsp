<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	String title = request.getParameter("title");

	BoardVO boardVO = new BoardVO();
	boardVO.setName(name);
	boardVO.setContent(content);
	boardVO.setPwd(pwd);
	boardVO.setTitle(title);
	
	Connection cn = null;
	PreparedStatement ps = null;
	
	boolean result = false;
	StringBuffer sql = new StringBuffer();
	sql.append("INSERT INTO tb_board(no, title, name, content, pwd)");
	sql.append("VALUES(seq_board.nextval, ?, ?, ?, ?)");
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		cn = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
		ps = cn.prepareStatement(sql.toString());
		ps.setString(1, boardVO.getTitle());
		ps.setString(2, boardVO.getName());
		ps.setString(3, boardVO.getContent());
		ps.setString(4, boardVO.getPwd());
		ps.executeUpdate();
		result = true;
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		if (ps != null) try{ps.close();}catch(Exception e){}
		if (cn != null) try{cn.close();}catch(Exception e){}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-80" data-genuitec-path="/WebDev/WebContent/_0703/board/insert_action.jsp">
<script type="text/javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-80" data-genuitec-path="/WebDev/WebContent/_0703/board/insert_action.jsp">
<% if(result) { %>
	alert('글 등록 성공');
	location.href='list.jsp';
<% } else { %>
	alert('글 등록 실패');
	location.href='javascript:history.back();';
<% } %>
</script>
</body>
</html>