<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.isd.user" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome - IoT Bay</title>
    </head>
    <body>
        <%
            user user = new user();
            String submitted = request.getParameter("submit");
            String username = user.getUsername();
            String password = user.getPassword();
            if (session != null) {
            if (submitted != null){
                String typedUsername = request.getParameter("username");
                String typedPassword = request.getParameter("password");
            if (username.equals(typedUsername) && password.equals(typedPassword)){
                String email = (String) session.getAttribute("emailAddress");
                String name = (String) session.getAttribute("name");
%>
            <h1>Welcome back: <%= name %></h1>
            <p>You are logged as <%= name %>, <%= email %></p>
            <p>[ <a href="logout.jsp">Logout</a> ]</p>
<%
        } else {
%>
            <p>Incorrect Username and/or password! Click <a href="login.jsp">here</a> to retry login.</p>
<%
        }
    }
    else{ out.println("Unauthorised access!"); }
    } else {
        out.println("Internal Error!");
    }
%>
    </body>
</html>
