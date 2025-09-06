<%@ page import="com.example.lab03.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 9/4/2025
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result form</title>
</head>
<body>
    <%
        Student student = new Student();
        student = (Student) request.getAttribute("student");

        out.println("First name:" + student.getFname() +
         "<br/> Last name:" + student.getLname() +
        "<br/> Email:" + student.getEmail() +
        "<br/> Gender:" + student.getGender() +
        "<br/> Birthday:" + student.getDob());
    %>
</body>
</html>
