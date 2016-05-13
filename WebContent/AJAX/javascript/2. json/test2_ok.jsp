<%@page import="net.sf.json.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("utf-8");

    String name = request.getParameter("name");
    String age = request.getParameter("age");

    JSONObject ob=new JSONObject();
    ob.put("name", name);
    ob.put("age", age+"세");
    
    /*
    // JSON 라이브러리를 사용하지 않는 경우
    StringBuffer obj = new StringBuffer("{");
    obj.append("\"name\": \""+ name+"\"");
    obj.append(",\"age\": \""+ age+"세\"");
    obj.append("}");
    */
    
    out.println(ob.toString());
%>
