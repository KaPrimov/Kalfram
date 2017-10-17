<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page='./pages/layouts/header.jsp' />
</head>
<body>
	<div id='container'>
		<form id='form-input' name=fr_add method=post action="AddNumbers">
			<h2>Welcome!</h2>
			<input type='text' id='expression' name='expression'
				placeholder='Write your expressions' required='required' /> <input
				type='submit' value='Calculate' id='submit-button' />
		</form>
	</div>

	<c:choose>
		<c:when test="${not empty error}">
			<div id="error">
				<h1>${error}</h1>
			</div>
		</c:when>
	</c:choose>
	<div id='result-div'>
		<c:choose>
			<c:when test="${not empty result}">
				<h1>The result is: ${result}</h1>
			</c:when>
		</c:choose>
	</div>

	<div id="table-container">
		<table style="width: 100%">
			<tr>
				<th>Operator</th>
				<th>Meaning</th>
			</tr>
			<tr>
				<td> - </td>
				<td>Subtraction</td>
			</tr>
			<tr>
				<td>+</td>
				<td>Addition</td>
			</tr>
			<tr>
				<td>*</td>
				<td>Multiplication</td>
			</tr>
			<tr>
				<td>/</td>
				<td>Division</td>
			</tr>
			<tr>
				<td>%</td>
				<td>Modulus</td>
			</tr>
			<tr>
				<td>^</td>
				<td>Exponentiation</td>
			</tr>
			<tr>
				<td>sin(x)</td>
				<td>Sine of x</td>
			</tr><tr>
				<td>cos(x)</td>
				<td>Cosine of x</td>
			</tr>
			<tr>
				<td>tan(x)</td>
				<td>Tangent of x</td>
			</tr>
			<tr>
				<td>cot(x)</td>
				<td>Cotangent of x</td>
			</tr>
			<tr>
				<td>sec(x)</td>
				<td>Secant of x</td>
			</tr>
			<tr>
				<td>csc(x)</td>
				<td>Cosecant of x</td>
			</tr>
		</table>
	</div>
</body>
</html>