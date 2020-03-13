<%-- 
    Document   : Registration
    Created on : Nov 30, 2019, 3:33:29 PM
    Author     : Olabisi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <style>
            body {
                display: block;
                background: teal;
                position: fixed;
            }
            #content {
                font-family: Garamond;
                height: 490px;
                width: 1190px;
                overflow-y: scroll;
                margin: 40px 40px 40px 40px;
                display: block;
                background-color: white;
                position: fixed;
            }
            h4 {
                text-align: center;
                font-size: 35px;
            }
            .menu1 {
                font-size: 50px;
                padding-top: 30px;
                padding-left: 40px;
            }
            .menu2 {
                font-size: 20px;
                padding-left: 350px;
                padding-top: 40px;
            }
            .menu3 {
                font-size: 20px;
                padding-left: 50px;
                padding-top: 40px;
            }
            .menu4 {
                font-size: 20px;
                padding-left: 50px;
                padding-top: 40px;
            }
            .menu5 {
                font-size: 20px;
                padding-left: 50px;
                padding-top: 40px;
            }
            .description {
                color: gray;
                font-weight: 500;
                padding-left: 40px;
            }
            p {
                font-size: 30px;
                padding-left: 40px;
                padding-top: 30px;
                padding-right: 700px;
            }
            #table1 {
                padding-left: 400px;
            }
            a {
                text-decoration: none;
                color: black;
            }
            alink {
                text-decoration: none;
            }
            a:visited {
                text-decoration: none;
            }
            a:hover {
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div id="content">
            <table border="0">
                <tbody>
                    <tr>
                        <td class="menu1"><a href="Home.jsp">Maelstorm</a></td>
                        <td class="menu2"><a href="Registration.jsp">Register</a></td>
                        <td class="menu3"><a href="Login.jsp">Login</a></td>
                        <td class="menu4"><a href="PrepChecklist.jsp">Prep Checklist</a></td>
                        <td class="menu5"><a href="KitChecklist.jsp">Kit Checklist</a></td>
                    </tr>
                    <tr>
                        <td class="description">Storm Prepper</td>
                    </tr>
                </tbody>
            </table>
            <h4>Take the very first step to storm preparedness. Sign up here.</h4>
            <form name="register" action="InsertReg.jsp" method="POST">
                <table border="0" id="table1">
                    <tbody>
                        <tr>
                            <td>First Name</td>
                            <td><input type="text" name="firstName" value=""></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><input type="text" name="lastName" value=""></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><textarea name="address" type="text" rows="4" cols="20"></textarea></td>
                        </tr>
                        <tr>
                            <td>Phone Number</td>
                            <td><input type="text" name="phoneNo" value=""></td>
                        </tr>
                        <tr>
                            <td>Sex</td>
                            <td>
                                <select name="sex">
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="text" name="password" value=""></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="submit" value="Sign up"></td>
                        </tr>
                    </tbody>
                </table>
            </form>    
        </div>
    </body>
</html>
