<%@page import="net.sf.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
	String cp=request.getContextPath();
	
	String id = request.getParameter("id");
	String callBack = request.getParameter("callback");
	
	String name="스프링";
	int age=20;
	
	JSONObject ob=new JSONObject();
	ob.put("name", name);
	ob.put("age", age);
	
	out.write(callBack + "(" + ob.toString() + ")");
%>
