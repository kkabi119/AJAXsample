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
// 화면 중앙에 위치
jQuery.fn.center = function () {
    this.css("position","absolute");
    this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) + 
                                                $(window).scrollTop()) + "px");
    this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) + 
                                                $(window).scrollLeft()) + "px");
    return this;
}

$(function(){
	$("#sendButton").click(function(){
		   var params="name="+$.trim($("#name").val())+
                   "&content="+$.trim($("#content").val());

           $.ajax({
                  type:"POST"
                  ,url:"loading_ok.jsp"
                  ,data:params
                  ,success:function(data) {
                       $("#resultLayout").html(data);
	
                       $("#name").val("");
                       $("#content").val("");
                       $("#name").focus();
                 }
                ,beforeSend:check
                ,error:function(e) {
	                  alert(e.responseText);
                }
          });

	});

    $(document)
        .ajaxStart(function(){ // AJAX 시작시
        	 $("#loading").center(); // 이미지를 화면 중앙에
        	 $("#loadingLayout").fadeTo("slow",0.5); // 불투명으로

	        $("#resultLayout").hide();
       })
       .ajaxComplete(function(){ // AJAX 종료시
	        $("#loadingLayout").hide();
       
	        $("#resultLayout").show();
      });  
    
});

function check() {
	if(!$.trim($("#name").val())) {
		$("#name").focus();
		return false;
	}

	if(!$.trim($("#content").val())) {
		$("#content").focus();
		return false;
	}
	
	return true;
}

</script>

</head>
<body>

이름 : <input type="text" id="name"><br>
내용 : <textarea rows="3" cols="50" id="content"></textarea><br>
<input type="button" value=" 등록하기 " id="sendButton"><br>

<div id="loadingLayout" style="display: none; position:absolute; left:0; top:0; width: 100%; height: 100%; z-index:9000;  background: #eee;">
	<img id="loading" src="loading.gif" border="0">
</div>

<hr>
<div id="resultLayout"></div>

</body>
</html>