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
              while(rs.next())
              {
                  if(rs.getString(1).equals(username) && rs.getString(2).equals(password))
                  {
                      session.setAttribute("username",username);
                      session.setAttribute("password",password);
                      session.setAttribute("account_number",rs.getInt(3));
                      response.sendRedirect("account.jsp");
                  }
              }
              response.sendRedirect("index.html");
          }
          catch(Exception e)
          {
              
          }
            
        %>
    </body>
</html>
