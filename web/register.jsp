<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Hello</h1>
    <form method="POST" action="welcome.jsp">
         <p>email:
         <input type="text" id="email" name="email"></p>
        <p>Full Name:
         <input type="text" id="fullName" name="fullName"></p>
        <p>gender:
        <input type="text" id="gender" name="gender"></p>
        <p>Password:
        <input type="password" id="password" name="password"></p>
        <p>address:
        <input type="text" id="address" name="address"></p>
        <input type="submit" id="button" name="button">
    </form> 
    </body>
</html>
