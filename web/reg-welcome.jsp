<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.isd.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Complete - Welcome - IoT Bay</title>
    </head>
    <body>
 <%
            String submitted = request.getParameter("submit");
            String ifAgreeTOS = request.getParameter("tos");
            if (submitted != null){
                String email = request.getParameter("email");
                String name = request.getParameter("name");
                String password = request.getParameter("password");
                String address = request.getParameter("address");
                if (if ifAgreeTOS != null){
                    user u = new user(name,password,email,address,ifAgreeTOS);
                    session.setAttribute("user", u); 
%>
                <div>
                    <h2>Register Complete. </h2>
                    <p>Here is your user information: </p>
                    <p>Email: <%= email %></p>
                    <p>Full Name: <%= name %></p>
                    <p>Password: <%= password %></p>
                    <p>Address: <%= address %></p>
                    <p>Agree with ToS: <%= tos %></p>
                    <p>Click <a href="index.jsp">here</a> to homepage.</p>
                </div>
            <% 
                }
                else { %>
                    <p>You did not agree with our Terms of Service!</p>
                    <p>Click <a href="javascript:history.back();">Here</a> to modify your registration.</p>
        <%    }
        }
        %>
    </body>
</html>
