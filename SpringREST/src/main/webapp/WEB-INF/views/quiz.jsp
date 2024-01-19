<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:url value="/resources/js/quiz.js" var="quizJS" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추첨</title>
</head>
<body>

	<h3>Quiz. 추첨 버튼을 누르면 랜덤으로 10명의 사원을 골라와서 화면에 출력해주는 기능을 만들어보세요. (JSON버전과 XML버전으로 한번씩) </h3>
	
	<button id="btn1">J추첨</button>
	<button id="btn2">X추첨</button>
	
	<div id="out"></div>
	<div id="employeesDiv"></div>
	
	<div id="employees" style="display:grid; grid-template-columns: 1fr 1fr 1fr;"></div>

	

	<script src="${quizJS}"></script>

</body>
</html>