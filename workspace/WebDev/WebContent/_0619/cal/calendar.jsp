<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- html 주석 --%>
<% //scriptlet
	Calendar sDay = Calendar.getInstance();

	int year = 2017;
	int month = 6;
	int startWeek = 0;
	int endDay = 0;

	sDay.set(year, month - 1, 1);
	startWeek = sDay.get(Calendar.DAY_OF_WEEK);

	endDay = sDay.getActualMaximum(Calendar.DATE);
%>

<%= year + " 년 " + month + " 월 " %>
<table>
<tr>
	<td>일</td>
	<td>월</td>
	<td>화</td>
	<td>수</td>
	<td>목</td>
	<td>금</td>
	<td>토</td>
</tr>
<tr>
<%
	for(int d = 1; d < startWeek; d++) {
		out.println("<td></td>");
	} //end for

	for(int i = 1, w = startWeek; i <= endDay; i++, w++) {

		out.println("<td>" + i + "</td>");

		if((w % 7)== 0) {
			out.println("</tr><tr>");
		} //end if : print next line
	} //end for
%>
</tr>
</table>

</body>
</html>