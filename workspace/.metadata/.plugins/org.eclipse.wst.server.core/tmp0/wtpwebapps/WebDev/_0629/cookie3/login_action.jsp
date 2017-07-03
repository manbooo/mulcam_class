<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	String user_pw = DigestUtils.sha512Hex(request.getParameter("user_pw"));
	String user_name = null;
	
	Connection cn = null;
	PreparedStatement st = null;
	ResultSet rs = null;
	
	StringBuffer sql = new StringBuffer();
	sql.append(" SELECT user_name");
	sql.append(" FROM   t_mem");
	sql.append(" WHERE  user_id=?");
	sql.append(" and    user_pw=?");
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		cn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", 
				"bigdata", 
				"bigdata");
		st = cn.prepareStatement(sql.toString());
		st.setString(1, user_id);
		st.setString(2, user_pw);
		rs = st.executeQuery();
		if (rs.next()) {
			user_name = rs.getString("user_name");
		} 
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		if (rs != null) try {rs.close();} catch(Exception e){}
		if (st != null) try {st.close();} catch(Exception e){}
		if (cn != null) try {cn.close();} catch(Exception e){}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-71" data-genuitec-path="/WebDev/WebContent/_0629/cookie3/login_action.jsp">
<% if (user_name != null) {
		out.println(user_name + "회원님이 로그인 되었습니다.");
   } else { %>
<script type="text/javascript" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-71" data-genuitec-path="/WebDev/WebContent/_0629/cookie3/login_action.jsp">
alert('아이디 혹은 비밀번호가 틀립니다.');
location.href='login.jsp';
</script>
<% } %>
</body>
</html>