<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49388",secure:"49479"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-14" data-genuitec-path="/MVC_Board_ibatis/WebContent/index.jsp">
<ol data-genuitec-lp-enabled="false" data-genuitec-file-id="wc2-14" data-genuitec-path="/MVC_Board_ibatis/WebContent/index.jsp">
	<li><a href="${context}/article/list">게시판</a></li>
	<li><a href="${context}/watson/text2speech">watson, text to speech</a></li>
	<li><a href="${context}/member/regist">회원가입</a></li>
</ol>
</body>
</html>