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

<script type="text/javascript">
function send() {
	var f=document.forms[0];
	f.submit();
}
</script>

</head>
<body>

<form action="calc1_ok.jsp" method="post">
    <input type="text" name="num1" size="5">
    <select name="oper">
	    <option value="add">더하기</option>
	    <option value="sub">빼기</option>
	    <option value="mul">곱하기</option>
	    <option value="div">나누기</option>
    </select>
    <input type="text" name="num2" size="5">
    <input type="button" value="결과" onclick="send();"><br>
</form>

</body>
</html>