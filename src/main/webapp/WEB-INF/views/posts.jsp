<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.myapp.board.BoardDAO, com.example.myapp.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
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
  background-color: #ff9884
}
button, input[type="button"], input[type="submit"], input[type="reset"] {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 7rem;
	height: 2.5rem;
	margin-top: 1rem;
	font-size: 1rem;
	border: black;
	background-color: #ff9884;
	cursor: pointer;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete/' + id;
	}
</script>
</head>
<body>
<h1>D-Day List</h1>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Category</th>
	<th>Event</th>
	<th>For</th>
	<th>Writer</th>
	<th>Memo</th>
	<th>Date</th>
	<th>View</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u" varStatus="status">
	<tr>
		<td>${status.index+1}</td>
		<td>${u.category}</td>
		<td>${u.event}</td>
		<td>${u.ffor}</td>
		<td>${u.writer}</td>
		<td>${u.memo}</td>
		<td>${u.ddate}</td>
		<td><a href="view/${u.seq}">View</a></td>
		<td><a href="editpost/${u.seq}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">Add</button>
</body>
</html>