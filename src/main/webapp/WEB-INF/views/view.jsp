<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.example.board.BoardVO" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Board</title>
</head>
<body>

<h1>View Board</h1>

<table>
    <tr><td>Title</td><td>${boardVO.title}</td></tr>
    <tr><td>Writer</td><td>${boardVO.writer}</td></tr>
    <tr><td>Content</td><td>${boardVO.content}</td></tr>
</table>
<button type="button" onclick="location.href='../list'">View List</button>
<button type="button" onclick="location.href='../editpost/${boardVO.seq}'">Edit</button>


</body>
</html>