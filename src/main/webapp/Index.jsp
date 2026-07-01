<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRM Formular</title>

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

h1{
    text-align:center;
    color:#333;
}

p{
    text-align:center;
}

button{
    width:100%;
    padding:12px;
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
footer{
    margin-top:40px;
    text-align:center;
    color:#777;
    font-size:14px;
}

footer hr{
    margin-bottom:15px;
    border:0;
    border-top:1px solid #ddd;
}
</style>

</head>
<body>

<div class="container">

<h1>💼 CRM Formular</h1>

<p>Willkommen zum CRM-Projekt</p>

<form action="IndexServlet" method="get">

<button type="submit">
Task-Liste anzeigen
</button>

</form>

<hr>

<footer>
    <p>CRMFormular_Sprint1 © 2026</p>
    <p>Java • JSP • Servlet • JavaBean</p>
</footer>

</div>

<footer>
    <hr>
    <p>CRMFormular_Sprint1 © 2026</p>
    <p>Java • JSP • Servlet • JavaBean</p>
</footer>

</body>
</html>