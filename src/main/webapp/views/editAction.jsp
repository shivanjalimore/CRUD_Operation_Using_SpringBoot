<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.example.demo.beans.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Student Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%
    Student data = (Student)session.getAttribute("studentToEdit");
%>
<form action="editsubmit" method="post">
    <label for="fname">First Name:</label>
    <input type="text" id="fname" name="fname" value="<%= (data != null) ? data.getFname() : "" %>">

    <label for="lname">Last Name:</label>
    <input type="text" id="lname" name="lname" value="<%= (data != null) ? data.getLname() : "" %>">

    <label for="mobNo">Mobile Number:</label>
    <input type="text" id="mobNo" name="mobNo" value="<%= (data != null) ? data.getMobNo() : "" %>">

    <label for="emailID">Email:</label>
    <input type="email" id="emailID" name="emailID" value="<%= (data != null) ? data.getEmailID() : "" %>">

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" value="<%= (data != null) ? data.getPassword() : "" %>">
     
    <input type="hidden" name="id" value="<%= data.getId()%>">
    <button type="submit">Edit</button>
</form>

</body>
</html>