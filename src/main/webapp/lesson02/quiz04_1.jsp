<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
	int number1 = Integer.valueOf(request.getParameter("number1"));
	int number2 = Integer.valueOf(request.getParameter("number2"));
	String operator = request.getParameter("operator");
	
	double result = 0;
	String printOperator = null;
	
	switch (operator) {
	case "plus":
		result = number1 + number2;
		printOperator = "+";
		break;
	case "minus":
		result = number1 - number2;
		printOperator = "-";
		break;
	case "multiple":
		result = number1 * number2;
		printOperator = "X";
		break;
	case "divide":
		result = number1 / number2;
		printOperator = "/";
		break;
	}
%>
	
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-3">
			<%  
				out.print(number1 + " " + printOperator + " " + number2 + " = ");
			%>
			<span class="text-info">
				<%= result %>
			</span>
		</div>
	</div>
</body>
</html>






