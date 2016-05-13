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
   $("#sendButton").click(function(){
	   var params="name="+$.trim($("#name").val())+
	                    "&content="+$.trim($("#content").val());
	   var url="getJSON1_ok.jsp?"+params;
	   
	   $.getJSON(url, function (data) {
			var out="";
			
			out="데이터 개수 : " + data.count;
			for(var idx=0; idx<data.list.length; idx++) {
				var num=data.list[idx].num;
				var name=data.list[idx].name;
				var content=data.list[idx].content;
				
				out+="<br>번호 : "+num;
				out+="<br>이름 : "+name;
				out+="<br>내용 : "+content;
				out+="<br>------------------------<br>";
			}
			
			$("#resultLayout").html(out);
	   });

   });
});
</script>

</head>
<body>

이름 : <input type="text" id="name"><br>
내용 : <textarea rows="2" cols="40" id="content"></textarea><br>
<input type="button" value=" 등록하기 " id="sendButton"><br>
<hr>

<div id="resultLayout"></div>

</body>
</html>