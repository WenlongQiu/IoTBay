<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.isd.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome - IoT Bay</title>
    </head>
    <body>
        <%
            user user = (user) session.getAttribute("user");
            String submitted = request.getParameter("submit");
            if (user != null && submitted != null) {
                String typedUsername = request.getParameter("username");
                String typedPassword = request.getParameter("password");
                String realUsername = user.getEmailAddress();
                String realPassword = user.getPassword();
            if (typedUsername.equals(realUsername) && typedPassword.equals(realPassword)){
                String email = user.getEmailAddress();
                String name = user.getFullName();
                String address = user.getAddress();
                session.setAttribute("logged","true");
        %>
        <h1>Welcome - <%= name %></h1>
        <p>You are logged as <%= name %>, <%= email %></p>
        <p>Your address is: <%= address %></p>
        <p>[ <a href="index.jsp">Back to homepage</a> ]</p>
        <p>[ <a href="logout.jsp">Logout</a> ]</p>
        <%
                } else {
        %>
        <p>Incorrect Username and/or password! Click <a href="login.jsp">here</a> to retry login.</p>
        <%
                }
            }
            else{ 
                if (user == null){ %>
                <p>It seems like you did not registered with us. Click <a href="register.jsp">here</a> to register.</p>
            <%    }
                else {
                    out.println("Unauthorised access!");
                }
            }
        %>
    </body>
</html>
