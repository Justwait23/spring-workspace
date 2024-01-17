<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>여기는 oㅅㅇ하는 사람이 없어서 좋다</h1>
	
	
	<c:forEach items="${replies}" var="reply">
		<div>
			[${reply.reply_writer}]
			${reply.reply_content}
			<span>${reply.reply_date}</span>		
		</div>
	</c:forEach>

</body>
</html>