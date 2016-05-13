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
   $.getJSON("url 또는 js파일", function (data) {  });
   JSON 파일의 정보를 읽어들임
 */
 
$(function(){
   $("#resultButton").click(function(){

	   $.getJSON("testJSON.js", function (data) {
			var out="";
			
            $.each(data, function (index, entity) {
            	out += index;
            	out += ", 번호:" + entity["Num"];
                if (entity["Name"]) { //특정필드를 비교할때 이러한 표현법
                	out += ", 이름:" + entity["Name"];
                }
                out += '<br>';
            });
			
			$("#resultLayout").html(out);
	   });

   });
});
</script>

</head>
<body>

<input type="button" value=" JSON 가져오기 " id="resultButton"><br>
<hr>

<div id="resultLayout"></div>

</body>
</html>