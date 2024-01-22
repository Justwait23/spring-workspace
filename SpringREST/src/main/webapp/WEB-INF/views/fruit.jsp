<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:url value="/resources/js/fruit.js" var="fruitJS" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과일 재고 목록</title>
<link rel="stylesheet" href="./" />
</head>
<body>

	<h1>과일 재고</h1>
	
	<table border="1">
		<tr>
			<th>FRUIT_ID</th>
			<th>FRUIT_NAME</th>
			<th>FRUIT_PRICE</th>
			<th>FRUIT_GRADE</th>
			<th>COUNTRY_ID</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${fruits}" var="fruit">
		<tr>
			<td>${fruit.fruit_id}</td>
			<td>${fruit.fruit_name}</td>
			<td>${fruit.fruit_price}</td>
			<td>${fruit.fruit_grade}</td>
			<td>${fruit.country_id}</td>
			<td><button onclick="location.href='./update?fruit_id=${fruit.fruit_id}';">수정</button></td>
			<td>
				<form action="./delete" method="POST">
					<input type="hidden" name="fruit_id" value="${fruit.fruit_id}"/>
					<button type="submit">삭제</button>
				</form>
			</td>
		</tr>
		</c:forEach>
	</table>
	
	<form action="./update" method="POST">
	<table border="3">
		<tr>
			<th>과일번호</th>
			<td>
				${fruit.fruit_id}
				<input name="fruit_id" type="hidden" value="${fruit.fruit_id}"/>
			</td>
		</tr>
		<tr>
			<th>과일이름</th>
			<td><input name="fruit_name" type="text" value="${fruit.fruit_name}" /></td>		
		</tr>
		<tr>
			<th>과일가격</th>
			<td><input name="fruit_price" type="number" value="${fruit.fruit_price}" step="100" /></td>		
		</tr>
		<tr>
			<th>과일등급</th>
			<td>
				<c:set value="A+/A/B/C/D" var="grades"/>
				<select name="fruit_grade">
				<c:forTokens items="${grades}" delims="/" var="grade">
					<c:choose>
						<c:when test="${grade == fruit.fruit_grade}">
							<option value="${grade}" selected>${grade}</option>
						</c:when>
						<c:otherwise>
							<option value="${grade}">${grade}</option>
						</c:otherwise>
					</c:choose>
				</c:forTokens>
				</select>
			</td>		
		</tr>
		<tr>
			<th>국가코드</th>
			<td>
				<select name="country_id">
					<c:forEach items="${countries}" var="country">
					<option value="${country.country_id}">${country.country_name}</option>
					</c:forEach>
				</select>	
			</td>		
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정하기" />
			</td>
		</tr>
	</table>
	</form>
</body>
</html>