

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Complete - Welcome - IoT Bay</title>
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
                    <p>Click <a href="index.jsp">here</a> to homepage.</p>
                </div>
            <% 
            }
        %>
    </body>
</html>
