<%-- 
    Document   : login
    Created on : Jan 6, 2020, 7:48:20 PM
    Author     : siji4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="logincss.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <form name="LoginForm" action="verification.jsp" method="POST">
        <div class="login-box">
            <div>
            <h1>Login</h1>
            </div>
            
                      
            <div class="textbox">    
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type ="text" placeholder="Username" name="username" value="" required>
            </div>

            <div class="textbox">      
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input type="password" placeholder="Password" name="password" value="" required>
            </div>
                                    
            <div>
            <label for="checkbox" > Admin Login?</label>
            <input type="checkbox" id="checkbox" name="adminbox" value="admin"> 
            </div>

            <input class ="btn" type="submit" name="" value="Sign In">
            
            <label style="color: black">
                <% if(session.getAttribute("err")!=null)
                out.println(session.getAttribute("err"));
                %>
            </label>
            
            <div>
                <li><a style="color: green" href='registration.jsp'>New User? Register Here</a></li>
            </div>
            
        </div>
        </form>
    </body> 
</html>
