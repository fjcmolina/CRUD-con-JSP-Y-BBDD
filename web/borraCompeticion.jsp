<%-- 
    Document   : borraCompeticion
    Created on : 15-mar-2018, 10:10:08
    Author     : Francis
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WSL</title>
    </head>
    <body>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");
          Statement s = conexion.createStatement();

          String borrado = "DELETE FROM competicion WHERE idCompeticion='" + request.getParameter("idCompeticion") + "'";
          //out.print(borrado);
          s.execute(borrado);

        %>	
        <script>document.location = "pideCompeticion.jsp"</script>
    </body>
</html>
