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
            String submitted = request.getParameter("submit");
            String username = session.getAttribute("username");
            String password = session.getAttribute("password");
            if (submitted != null){
                String typedUsername = request.getParameter("username");
                String typedPassword = request.getParameter("password");
                if (username.equals(typedUsername) && password.equals(typedPassword)){ %>
                    <h1>Welcome back: <%  out.println(name); %></h1>
                    <p>You are logged as <%  out.println(name); %>, <<% out.println(email); %>></p>
                    <p>[ <a href="logout.jsp">Logout</a> ]</p>
           <%   }
                else{ %>
                    <p>Incorrect Username and/or password! Click <a href="login.jsp">here</a> to retry login.</p>
           <%     }
            }
        %>
    </body>
</html>
