<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="net.sf.json.JSONArray"%>
<%@ page import="net.sf.json.JSONObject"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
	String cp=request.getContextPath();
	
    String name=request.getParameter("name");
    String content=request.getParameter("content");
    
    JSONObject job=new JSONObject();
    job.put("count", 5);
    
 	JSONArray jarr=new JSONArray();
    for(int n=1; n<=5; n++) {
    	JSONObject ob=new JSONObject();
    	ob.put("num", n);
    	ob.put("name", name);
    	ob.put("content", n+":"+content);
    	
    	jarr.add(ob);
    }
    job.put("list", jarr);
    
    out.println(job.toString());
    
%>

