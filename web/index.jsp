<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.isd.user" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IoT Bay</title>
    </head>
    <body>
        <h1>Welcome to IoT Bay!</h1>
        <%
            user user = (user) session.getAttribute("user");
            if (user == null || session.getAttribute("logged") == null){ %>
            <p>You have not logged in. Click <a href="login.jsp">here</a> for log in, or click <a href="register.jsp">here</a> for register.</p>
        <% } else {
            String name = user.getFullName();
        %>
            <p>Welcome back, <%= name %></p>
            <p>[ <a href="javascript:history.back();">Back to welcome page</a> ]</p>
            <p>[ <a href="logout.jsp">Logout</a> ]</p>
        <% } %>
    </body>
</html>
