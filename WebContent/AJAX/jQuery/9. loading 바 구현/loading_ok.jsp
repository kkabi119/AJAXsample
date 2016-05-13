<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	String content=request.getParameter("content");

	try {
	  Thread.sleep(2000);
	} catch(Exception e) {
	}
%>

이름 : <%=name%><br>
내용 : <%=content%>
