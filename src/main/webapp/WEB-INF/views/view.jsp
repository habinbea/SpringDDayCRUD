<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Board</title>
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

<h1>View Board</h1>
<table id="list">
    <tr><td>D-Day</td><td>${boardVO.daysRemaining}</td></tr>
    <tr><td>Event Date</td><td>${boardVO.ddate}</td></tr>
    <tr><td>Category</td><td>${boardVO.category}</td></tr>
    <tr><td>Event</td><td>${boardVO.event}</td></tr>
    <tr><td>For</td><td>${boardVO.ffor}</td></tr>
    <tr><td>Writer</td><td>${boardVO.writer}</td></tr>
    <tr><td>Memo</td><td>${boardVO.memo}</td></tr>
    <fmt:formatDate value="${boardVO.regdate}" pattern="yyyy-MM-dd" var="formattedRegdate"/>
    <tr><td>Registered Date</td><td>${formattedRegdate}</td></tr>
</table>
<button type="button" onclick="location.href='../list'">View List</button>
<button type="button" onclick="location.href='../editpost/${boardVO.seq}'">Edit</button>

</body>
</html>