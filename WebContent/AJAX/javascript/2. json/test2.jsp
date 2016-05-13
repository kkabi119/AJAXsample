<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring</title>

<script type="text/javascript">
//AJAX 객체 생성
function createXMLHttpRequest() {
    var xmlReq = null;

    if (window.XMLHttpRequest) { // IE 7.0 이상, Non-Microsoft browsers
        xmlReq = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
		try {
			// XMLHttpRequest in later versions of Internet Explorer
			xmlReq = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e1) {
			try {
				// Try version supported by older versions of Internet Explorer
				xmlReq = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e2) {
				// Unable to create an XMLHttpRequest with ActiveX
			}
		}
	}

	return xmlReq;
}

var xmlHttp;
function send() {
	var name=document.getElementById("name").value;
	var age=document.getElementById("age").value;
	var url="test2_ok.jsp";
	var params="name="+name+"&age="+age;
	
	xmlHttp=createXMLHttpRequest();
	xmlHttp.onreadystatechange = callback;
	
	xmlHttp.open("POST", url, true);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");	
	xmlHttp.send(params);
}

function callback() {
	if(xmlHttp.readyState==4) {  // 응답요청 완료
		if(xmlHttp.status==200) {  // 성공한 경우
			printData();
		}
	}
}

function printData() {
	var doc=xmlHttp.responseText;
	var result = JSON.parse(doc); // JSON 파싱
	
	var layout = document.getElementById("resultLayout");
	var outHtml = "";

	outHtml = "이름 : " + result.name + "<br>";
	outHtml += "나이 : " + result.age;

	layout.innerHTML = outHtml;
}
</script>

</head>
<body>

이름 : <input type="text" id="name"><br>
나이 : <input type="text" id="age"><br>
<input type="button" value="보내기" onclick="send();"><br>
<hr>

<div id="resultLayout"></div>
  
</body>
</html>