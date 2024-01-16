<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 수정하기</title>
</head>
<body>

	<h3>글수정</h3>
	
	제목 : <input type="text" name="board_title" value="${oldData.board_title}" form="modiForm"/> <br>
	작성자 : ${oldData.board_writer} <br />
	조회수 : ${oldData.view_count} 작성일 : ${oldData.write_date}<br />
	<textarea cols="30" rows="10" name="board_content" form="modiForm">${oldData.board_content }</textarea> <br />
	
	<button id="modiConfirmBtn">수정</button>
	<button id="listBtn">목록</button>
	
	<!-- POST 방식은 ?id=10방식(GET방식)으로 파라미터를 보낼 수 없어서 hidden타입 input을 사용해야 한다 -->
	<form action="./modify" id="modiForm" method="POST"></form>
	<input type="hidden" name="board_id" value="${oldData.board_id}" form="modiForm"/>

	<c:url value="/resources/board/js/modi.js" var="modiJS"/>
	<script src="${modiJS}"></script>

</body>
</html>