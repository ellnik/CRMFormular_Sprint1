<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.format.DateTimeFormatter"%>

<%
LocalDate heute = LocalDate.now();
DateTimeFormatter format =
        DateTimeFormatter.ofPattern("dd.MM.yyyy");
%>

<%@ page import="bean.TaskBean"%>
<%@ page import="bean.TaskListBean"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task-Liste</title>

<style>

body{
    font-family: Arial, sans-serif;
    background-color:#f2f2f2;
    margin:0;
    padding:0;
}

.container{
    width:450px;
    margin:50px auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    color:#333;
    margin-bottom:25px;
}

ul{
    list-style:none;
    padding:0;
}

li{
    margin-bottom:15px;
}

button{
    width:100%;
    padding:12px;
    font-size:16px;
    text-align:left;
    background-color:#1976D2;
    color:white;
    border:none;
    border-radius:6px;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    background-color:#125ca1;
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

<h2>📋 Task auswählen</h2>

<p>📅 Heute: <%= heute.format(format) %></p>

<%
TaskListBean taskList = (TaskListBean) request.getAttribute("taskList");
List<TaskBean> list = taskList.getList();

%>

<form action="IndexServlet" method="get">

<ul>

<%
for(TaskBean task : list){
%>

<li>
    <button
        type="submit"
        name="task"
        value="<%=task.getId()%>">

        <%=task.getTitel()%>

    </button>
</li>

<%
}
%>

</ul>

</form>

</div>

<footer>
    <hr>
    <p>CRMFormular_Sprint1 © 2026</p>
    <p>Java • JSP • Servlet • JavaBean</p>
</footer>

</body>
</html>