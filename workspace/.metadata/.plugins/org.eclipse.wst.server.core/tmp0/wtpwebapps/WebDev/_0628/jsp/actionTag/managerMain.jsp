<%@ page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../../favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49316",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body bgcolor="yellow" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-42" data-genuitec-path="/WebDev/WebContent/_0628/jsp/actionTag/managerMain.jsp">

<h3 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-42" data-genuitec-path="/WebDev/WebContent/_0628/jsp/actionTag/managerMain.jsp">매니저로 로그인 성공</h3>
<%=URLDecoder.decode(request.getParameter("userName"),"UTF-8") %>
<%=request.getParameter("userName") %>님 환영합니다.

</body>
</html>