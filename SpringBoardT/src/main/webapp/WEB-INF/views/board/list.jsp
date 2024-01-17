<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<c:url value="/assets/board/css/list.css" var="listCSS"/>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="${listCSS}" />
</head>
<body>

	<h1>게시판 목록</h1>
	
	<c:if test="${!empty boards}">
	<div class="board-list">
		<c:forEach items="${boards}" var="board">
		<c:set value="${board.board_id}" var="bid"/>
		<div class="board-id">${bid}</div>
		<div class="board-title">
			<a href="./detail?board_id=${bid}">${board.board_title}</a>
			<c:if test="${board.reply_count ne 0}">
				<span id="replyBtn" name="${bid}">[&nbsp;<c:out value="${board.reply_count}"/>&nbsp;]</span>
			</c:if>
		</div>
		<div class="board-writer">${board.board_writer}</div>
		<div class="write-date">${board.write_date}</div>		
		<div class="view-count">${board.view_count}</div>
		
		</c:forEach>
		
		<a href="./write" id="write-link">글쓰기</a>
	
	</div>
	</c:if>
	
	<c:url value="/assets/board/js/list.js" var="listJS"></c:url>
	
	<script src="${listJS}"></script>
</body>
</html>