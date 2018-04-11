<%-- 
    Document   : borraParticipante
    Created on : 10-abr-2018, 13:32:09
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

          String borrado = "DELETE FROM participantes WHERE idParticipantes='" + request.getParameter("idParticipantes") + "'";
          //out.print(borrado);
          s.execute(borrado);

        %>	
        <script>document.location = "pideParticipante.jsp"</script>
    </body>
</html>
