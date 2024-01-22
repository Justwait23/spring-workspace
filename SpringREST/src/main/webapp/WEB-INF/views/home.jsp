<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:url value="/resources/js/home.js" var="homeJS" />
<html>
<head>
	<title>Home</title>
</head>
<body>

	<h1>Home!</h1>
	
	<h3>Quiz. 추첨 버튼을 누르면 랜덤으로 10명의 사원을 골라와서 화면에 출력해주는 기능을 만들어보세요. (JSON버전과 XML버전으로 한번씩) </h3>
	
	<h3>Quiz2. REST 방식으로 과일 테이블에 INSERT, UPDATE, DELETE를 구현해보세요</h3>
	
	
	<button id="btn1">버튼1</button>
	<button id="btn2">버튼2(JSON)</button>
	<button id="btn3">버튼3(XML)</button>
	<hr />
	<button id="btn4">버튼4(PUT방식 xhttp요청)</button>
	<hr />
	<button id="quiz2-1">Fruit Insert</button> <hr />
	<input id="modify-fruit-id" type="number" />
	<button id="quiz2-2">Fruit Update</button>
	<button id="quiz2-3">Fruit Delete</button>
	
	<div id="out"></div>
	
	<div id="employees" style="display:grid; grid-template-columns: 1fr 1fr 1fr;"></div>
	
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

	

	<script src="${homeJS}"></script>

</body>
</html>
