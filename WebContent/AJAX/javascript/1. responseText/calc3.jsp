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
// AJAX 객체 생성
function createXMLHttpRequest() {
    var xmlReq = null;

    if (window.XMLHttpRequest) {    // IE 7.0 이상, Non-Microsoft browsers
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
	var query;
	var num1=document.getElementById("num1").value;
	var oper=document.getElementById("oper").value;
	var num2=document.getElementById("num2").value;
	
	query="num1="+num1+"&num2="+num2+"&oper="+oper;
	var url="calc3_ok.jsp";
	
	// AJAX 객체 생성
	xmlHttp = createXMLHttpRequest();
	// 서버에서 처리하고 결과를 전송 할 자바스크립트 함수 지정
	xmlHttp.onreadystatechange=callback;
	
	// POST 방식
    xmlHttp.open("POST", url, true);
    xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");	
	xmlHttp.send(query);
}

function callback() {
	if(xmlHttp.readyState==4) { // 요청상태(모든요청응답완료)
		if(xmlHttp.status == 200) { // 서버로부터의 상태코드(OK)
			printData();
		}
	}
}

function printData() {
	var layout=document.getElementById("resultLayout");
	
	var result=xmlHttp.responseText;
	
	layout.innerHTML = result;
}

</script>

</head>
<body>

<input type="text" id="num1" size="5">
<select id="oper">
	<option value="add">더하기</option>
	<option value="sub">빼기</option>
	<option value="mul">곱하기</option>
	<option value="div">나누기</option>
</select>
<input type="text" id="num2" size="5">
<input type="button" value="결과" onclick="send();">
<br>
<hr>

<div id="resultLayout"></div>


</body>
</html>