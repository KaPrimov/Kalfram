<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page='../layouts/header.jsp' />
</head>
<body>
	<div id='container'></div>
	<h2>Welcome!</h2>
	<form action='/springmvc/home' id='form-input'>
		<input type='text' id='expression' name='text'/>
		<input type='submit' value='Calculate'/>
	</form>
	<div id='result-div'>${result}</div>
</body>
</html>