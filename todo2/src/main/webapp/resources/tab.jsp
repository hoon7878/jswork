<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
	<div id="tab">
		<span data-url="board.jsp">게시판</span>
		<span data-url="resources/todo.html">할일</span>
		<div id ="content"></div>
	</div>
	<script>
	$("span").on("click",function(){
	//	$("#content").load( $(this).data("url") );
	
		$.ajax({
			url : $(this).data("url") ,
		//  method :		
		//	data :
			dataType :	'html'
		}).done(function(result){
			$("#content").html(result);
		});
	})
	</script>
</body>
</html>