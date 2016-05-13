<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-1.12.3.min.js"></script>

<script type="text/javascript">
/*
   $.getScript('스크립트를 읽어올파일');
    -  파일안의 다른 스크립트를 포함
 */
 
$(function(){
   $("#resultButton").click(function(){
	   $.getScript('testScript.js');
   });
});
</script>

</head>
<body>

<input type="button" value=" 스크립트 포함 " id="resultButton"><br>
<hr>

<div id="resultLayout"></div>

</body>
</html>