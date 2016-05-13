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
function resultOk() {
    $.ajax({
        url : "http://127.0.0.1:9090/sp1/user/demo.jsp"
        ,data : "id=user"
        ,dataType : "jsonp"
        ,jsonp : "callback"
        ,success: function(data) {
            if(data != null) {
               alert(data.name + ", " +  data.age);
            }
        }
  }); 
}
</script>

</head>
<body>

<input type="button" value="결과" onclick="resultOk();">
<br>
<hr>


</body>
</html>