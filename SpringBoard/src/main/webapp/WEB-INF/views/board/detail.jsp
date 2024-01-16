<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>조회 잘 됨</h3>
	
	<button id="listBtn">목록으로</button> <br />
	
	제목 : <input type="text" value="${detail.board_title}" readonly/> <br>
	작성자 : <input type="text" value="${detail.board_writer}" readonly/> <br />
	조회수 : ${detail.view_count} 작성일 : ${detail.write_date}<br />
	<textarea name="" id="" cols="30" rows="10" readonly>${detail.board_content }</textarea>
	
	<input id="inputPassword" type="password" name="board_password" />
	<button id="modiBtn">수정하기</button>
	<button id="delBtn">삭제하기</button>
	<button id="delBtn2">삭제하기(팝업창)</button>
	
	<form action="./delete" id="delForm" method="POST">
		<input type="hidden" name="board_id" value="${detail.board_id}"/>
		<input type="hidden" name="check_password" value="${detail.board_password}"/>
		<input type="hidden" name="board_password" id="hiddenPassword"/> <!-- 전달용 -->
	</form>
	
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
	
	<c:url value="/resources/board/js/detail.js" var="detailJS"></c:url>
	<c:url value="/resources/board/js/detailReply.js" var="detailReplyJS"></c:url>
	<c:url value="/resources/board/js/sha256.js" var="sha256"></c:url>
	
	<script>
		const boardPassword = '${detail.board_password}';
		const board_id = ${detail.board_id};
	</script>
	
	<script src="${sha256}"></script>
	<script src="${detailJS}"></script>
	<script src="${detailReplyJS}"></script>

</body>
</html>
