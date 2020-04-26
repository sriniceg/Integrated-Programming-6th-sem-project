<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login validation</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
          try
          {
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","");
              
              PreparedStatement ps = con.prepareStatement("select * from customer");
              
              ResultSet rs = ps.executeQuery();
              String username = request.getParameter("username");
              String password = request.getParameter("password");
              String cpassword = request.getParameter("confirm_password");
              if(!password.equals(cpassword))
                  response.sendRedirect("signup.html");
              
              
              while(rs.next())
              {
                  if(rs.getString(1).equals(username))
                      response.sendRedirect("signup.html");
              }
              session.setAttribute("username",username);
              session.setAttribute("password",password);
              response.sendRedirect("signup_done");
          }
          catch(Exception e)
          {
              
          }
            
        %>
    </body>
</html>
