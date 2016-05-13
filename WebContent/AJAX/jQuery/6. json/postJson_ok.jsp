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
	String oper="";
	if(operator.equals("add")) {
		result=Integer.toString(n1+n2);
		oper="+";
	} else if(operator.equals("sub")) {
		result=Integer.toString(n1-n2);
		oper="-";
	} else if(operator.equals("mul")) {
		result=Integer.toString(n1*n2);
		oper="*";
	} else if(operator.equals("div")) {
		result=Integer.toString(n1/n2);
		oper="/";
	}
	
    // JSON 데이터
       // {"키1":"값1","키2":"값2"}
    // JSON 데이터(배열)
       // [{"키1":"값1","키2":"값2"}, {"키3":"값3","키4":"값4"}]
	
	StringBuffer sb=new StringBuffer();
	sb.append("{");
	sb.append("\"num1\":"+n1);
	sb.append(",\"num2\":"+n2);
	sb.append(",\"operator\":"+"\""+oper+"\"");
	sb.append(",\"result\":"+"\""+result+"\"");
	sb.append("}");
	
	out.print(sb.toString());
%>