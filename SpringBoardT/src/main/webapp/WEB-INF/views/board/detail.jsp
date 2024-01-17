<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board.board_id}번 글의 상세 내용</title>
</head>
<body>

	<h3>${board.board_id}</h3>
	
	<table border="3">
		<tr>
			<th>글 번호</th>
			<td>${board.board_id}</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${board.view_count}</td>
		</tr>
		<tr>
			<th>글 제목</th>
			<td>${board.board_title}</td>
		</tr>
		<tr>
			<th>글쓴이</th>
			<td>${board.board_writer}</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" /></td>
		</tr>
		<tr>
			<th>글 내용</th>
			<td><textarea name="" id="" cols="30" rows="10" readonly>${board.board_id}</textarea></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${board.write_date}</td>
		</tr>
		<tr>
			<th>최근 수정일</th>
			<td>몰라</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file" /></td>
		</tr>
	</table>
	
	<hr />
	
	<c:forEach items="${replies}" var="reply">
		<div>
			[${reply.reply_writer}]
			${reply.reply_content}
			<span>${reply.reply_date}</span>		
		</div>
	</c:forEach>
	
	<hr />
	
	
	<div id=replyWriteDiv>
		<textarea id="replyContent" name="reply_content" cols="60" rows="5" form="replyForm"></textarea><br />
		댓작성자<input id="replyWriter" type="text" name="reply_writer" form="replyForm"/>
		비밀번호<input id="replyPassword" type="password" name="reply_password" form="replyForm"/>
		<button id="replyWriteBtn" form="replyForm">댓글 쓰기</button>
	</div>
	
	<form action="./reply/add" id="replyForm" method="POST">
		<input type="hidden" name="board_id" value="${detail.board_id }"/>
	</form>

</body>
</html>