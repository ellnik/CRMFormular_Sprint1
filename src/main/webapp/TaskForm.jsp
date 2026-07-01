<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f2f2f2;
    margin:0;
    padding:0;
}

.container{
    width:450px;
    margin:50px auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,.2);
}

h2{
    text-align:center;
    color:#333;
}

label{
    display:block;
    margin-top:15px;
    font-weight:bold;
}

input{
    width:100%;
    padding:10px;
    margin-top:5px;
    font-size:15px;
    box-sizing:border-box;
}

button{
    width:100%;
    padding:12px;
    margin-top:20px;
    font-size:16px;
    background:#1976D2;
    color:white;
    border:none;
    border-radius:6px;
    cursor:pointer;
}

button:hover{
    background:#125ca1;
}

</style>

</head>
<body>

<div class="container">

<h2>Task bearbeiten</h2>

<%
String task = (String) request.getAttribute("task");
%>

<label>Gewählte Task-ID</label>

<input type="text"
       value="<%=task%>"
       readonly>

<form action="IndexServlet" method="get">

<button type="submit">
Zurück zur Task-Liste
</button>

</form>

</div>

</body>
</html>