<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	
	<h3>글쓰기</h3>
	
	<form action="./write" method="POST">
	<table border="3">

		<tr>
			<th>글 제목</th>
			<td><input name="board_title" type="text" /></td>
		</tr>
		<tr>
			<th>글쓴이</th>
			<td><input name="board_writer" type="text" /></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input name="board_password" type="password" /></td>
		</tr>
		<tr>
			<th>글 내용</th>
			<td><textarea name="board_content" name="" id="" cols="20" rows="10" >${board.board_id}</textarea></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="글쓰기" /></td>
		</tr>
	</table>
	</form>
	
	
</body>
</html>