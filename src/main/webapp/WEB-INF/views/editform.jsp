<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
 <%@page import="com.example.myapp.board.BoardDAO, com.example.myapp.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 50%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #006bb3;
			color: white;
		}
		#list td:first-child {
			background-color: #ff9884;
		}
		#list td input[type="text"],
		#list td input[type="submit"],
		#list td input[type="button"],
		#list td input[list],
		#list td textarea {
			width: 100%;
			box-sizing: border-box;
		}
		button, input[type="button"], input[type="submit"], input[type="reset"] {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			width: 7rem;
			height: 2rem;
			margin-top: 1rem;
			font-size: 1rem;
			border: black;
			background-color: #ff9884;
			cursor: pointer;
		}
	</style>
</head>
<body>

<h1>Edit Event</h1>
<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="list">
	<tr><td>Category</td>
		<td>
			<input list="categories" name="category" id="category" value="${boardVO.category}">
			<datalist id="categories">
				<option value="Birthday">
				<option value="Cleaning">
				<option value="Party">
				<option value="Travel">
				<option value="School">
			</datalist>
		</td></tr>
	<tr><td>Event</td><td><form:input path="event" /></td></tr>
	<tr><td>For</td><td><form:input path="ffor" /></td></tr>
	<tr><td>Writer</td><td><form:input path="writer" /></td></tr>
	<tr><td>Memo</td><td><form:textarea cols="50" rows="5" path="memo" /></td></tr>
	<tr><td>Event Date</td><td><form:input path="ddate" /></td></tr>
	</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()" />
</form:form>

</body>
</html>