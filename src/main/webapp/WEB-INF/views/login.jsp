<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
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
        #list td input[type="password"],
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
<h1>Login</h1>
<form action="loginOk" method="post">
    <table id="list">
        <tr><td>User ID: </td><td><input type='text' name='userid' /></td></tr>
        <tr><td>Password: </td><td><input type='password' name='password' /></td></tr>
    </table>
    <button type='submit'>Login</button>
</form>
</body>
</html>