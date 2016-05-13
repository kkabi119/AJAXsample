<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
	String cp=request.getContextPath();
	
	int n1=Integer.parseInt(request.getParameter("num1"));
	String operator=request.getParameter("operator");
	int n2=Integer.parseInt(request.getParameter("num2"));
	
	String result="";
	if(operator.equals("add"))
		result=String.format("%d+%d=%d", n1, n2, n1+n2);
	else if(operator.equals("sub"))
		result=String.format("%d-%d=%d", n1, n2, n1-n2);
	else if(operator.equals("mul"))
		result=String.format("%d*%d=%d", n1, n2, n1*n2);
	else if(operator.equals("div"))
		result=String.format("%d/%d=%d", n1, n2, n1/n2);
%>

<%=result%>
