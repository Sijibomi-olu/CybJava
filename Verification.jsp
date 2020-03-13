<%-- 
    Document   : Verification
    Created on : Nov 30, 2019, 4:54:02 PM
    Author     : Olabisi
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String usernameStored, passwordStored;
            Connection con;
            PreparedStatement st;
            ResultSet res;
        %>
        <%
            try {
                usernameStored = passwordStored = "";
                String usernameEntered = request.getParameter("name");
                String passwordEntered = request.getParameter("password");
                
                String x = "SELECT * FROM verify WHERE (firstName = '" + usernameEntered + "'" + "AND password = '" + passwordEntered + "')";
                boolean verify = false;
                
                con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/storm", "root", "");
                st = (PreparedStatement) con.prepareStatement(x);
                res = st.executeQuery();
                boolean recordExists = res.absolute(1);
                if (recordExists == true)
                {
                    verify = true;
                }
                if (verify == true)
                {
                    response.sendRedirect("PrepChecklist.jsp");
                }
                else {
//                    JOptionPane.showMessageDialog(null, "Incorrect username or password");
                    response.sendRedirect("Registration.jsp");
                }
                con.close();
            }
            catch (SQLException ex)
            {
                out.write("An error occured: " + ex.toString());
            }
        %>
    </body>
</html>
