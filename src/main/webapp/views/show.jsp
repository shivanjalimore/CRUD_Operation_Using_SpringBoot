<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.util.List"%>
<%@page import="com.example.demo.beans.Student"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        .action-buttons {
            display: flex;
        }

        .action-buttons button {
            margin-right: 5px;
        }
    </style>
</head>
<body>

<h1> Student Data </h1>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Mobile Number</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
    </thead>
    
    <%
       List<Student> list =(List)session.getAttribute("students");
       for(Student s : list){
    %>
    
    <tbody>       
            <tr>
                <td><%=s.getId()%></td>
                <td><%=s.getFname()%></td>
                <td><%=s.getLname()%></td>
                <td><%=s.getEmailID()%></td>
                <td><%=s.getMobNo()%></td>
                <td><%=s.getPassword()%></td>
                <td class="action-buttons">
                   <a href="editAction?id=<%=s.getId()%>">
                    <button type="button" style="background-color:green;">Edit</button>
                    </a>
                    <form action="deleteAction" method="post">
                    <input type="hidden" name="id" value="<%=s.getId()%>">
                    <button type="submit"  style="background-color:red;">Delete</button>
                    </form>
                </td>
            </tr>
       
    </tbody>
    <%} %>
</table>
<a href="form">
<button type="button" style="background-color:Blue;">Insert Data</button>
</a>

</body>
</html>