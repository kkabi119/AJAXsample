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
function send() {
	var query;
	
	var num1=$("#num1").val();
	var operator=$("#operator").val();
	var num2=$("#num2").val();
	
	query="num1="+num1+"&num2="+num2+"&operator="+operator;
	var url="load1_ok.jsp?"+query;

	// AJAX GET 방식 - 1
	$("#resultLayout").load(url);
}
</script>

</head>
<body>

<input type="text" id="num1">
<select id="operator">
	<option value="add">더하기</option>
	<option value="sub">빼기</option>
	<option value="mul">곱하기</option>
	<option value="div">나누기</option>
</select>
<input type="text" id="num2">
<input type="button" value="결과" onclick="send();">
<br>
<hr>

<div id="resultLayout"></div>

</body>
</html>