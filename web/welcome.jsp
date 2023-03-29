<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="user.java.user" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome - IoT Bay</title>
    </head>
    <body>
        <%
            
        %>
        <h1>Welcome back: <%  out.println(name); %></h1>
        <p>You are logged as <%  out.println(name); %>, <<% out.println(email); %>></p>
        <p>[ <a href="logout.jsp">Logout</a> ]</p>
    </body>
</html>
