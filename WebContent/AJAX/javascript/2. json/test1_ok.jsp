<%@page import="java.io.BufferedReader"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("utf-8");

	StringBuffer sb=new StringBuffer();
	BufferedReader reader = request.getReader();
	String line;
    while((line = reader.readLine()) != null) {
    	sb.append(line);
	}
%>
<%=sb.toString()%>