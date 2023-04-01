<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.isd.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <%
            String submitted = request.getParameter("submit");
            if (submitted != null){
                String email = request.getParameter("email");
                String name = request.getParameter("name");
                String password = request.getParameter("password");
                String address = request.getParameter("address");
                user u = new user(name,password,email,address);
                session.setAttribute("user", u); %>
                <div>
                    <h2>Register Complete. </h2>
                    <p>Here is your user information: </p>
                    <p>Email: <%= email %></p>
                    <p>Full Name: <%= name %></p>
                    <p>Password: <%= password %></p>
                    <p>Address: <%= address %></p>
                    <p>Click <a href="login.jsp">here</a> to login.</p>
                </div>
            <% 
            } else {
        %>
        <h1>Thanks for registering.</h1>
        <form method="POST" action="register.jsp">
        <p>email:
         <input type="text" id="email" name="email"></p>
        <p>Hint: The email will becomes your login id.</p>
        <p>Full Name:
         <input type="text" id="name" name="name"></p>
        <p>Password:
        <input type="password" id="password" name="password"></p>
        <p>address:
        <input type="text" id="address" name="address"></p>
        <input type="submit" id="submit" name="submit">
    </form>
        <p>[ <a href="index.jsp">Back to Homepage</a> ]</p>
        <%
            }
        %>
    </body>
</html>
