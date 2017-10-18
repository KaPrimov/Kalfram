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
		<form id='form-input' name=fr_add method=post action="Calculate">
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

	<div class="tables-container">
		<h2>Supported Functions And Operators:</h2>
		<table border="1">
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
			<tr>
				<td>asin(x), acos(x), atan(x)</td>
				<td>Reversed trigonometric functions</td>
			</tr>
			<tr>
				<td>sinh(x), cosh(x), tanh(x), coth(x), sech(x), csch(x)</td>
				<td>Hyperbolic trigonometric functions</td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<th>Operator</th>
				<th>Meaning</th>
			</tr>
			<tr>
				<td>asinh(x), acosh(x), atanh(x), acoth(x), asech(x), acsch(x)</td>
				<td>Reversed hyperbolic trigonometric functions</td>
			</tr>
			<tr>
				<td>rad(x)</td>
				<td>Floating-point number to radians function</td>
			</tr>
			<tr>
				<td>deg(x)</td>
				<td>Floating-point number to degrees function</td>
			</tr>
			<tr>
				<td>max(x1, x2 ... xn)</td>
				<td>Finds the biggest number</td>
			</tr>
			<tr>
				<td>min(x1, x2 ... xn)</td>
				<td>Finds the smallest number</td>
			</tr>
			<tr>
				<td>abs(x)</td>
				<td>Finds the absolute value of x</td>
			</tr>
			<tr>
				<td>log(x)</td>
				<td>Finds the logarithm of x</td>
			</tr>
			<tr>
				<td>log(x)</td>
				<td>Finds the base-10 logarithm of x</td>
			</tr>
			<tr>
				<td>round(x, precision)</td>
				<td>Rounds a floating-point number with the given precision</td>
			</tr>
			<tr>
				<td>floor(x)</td>
				<td>Rounds x down</td>
			</tr>
			<tr>
				<td>ceil(x)</td>
				<td>Rounds x up</td>
			</tr>
			<tr>
				<td>sqrt(x)</td>
				<td>Finds the square root of a number</td>
			</tr>
			<tr>
				<td>pi</td>
				<td>Constant for pi</td>
			</tr>
			<tr>
				<td>e</td>
				<td>Constant for the euler number</td>
			</tr>
		</table>
	</div>
</body>
</html>