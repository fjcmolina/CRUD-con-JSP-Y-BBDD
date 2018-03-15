<%-- 
    Document   : grabaCompeticion
    Created on : 14-mar-2018, 11:42:52
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
          request.setCharacterEncoding("UTF-8");

          String insercion = "INSERT INTO competicion (idCompeticion,NombreCompeticion,LugarCompeticion,NumeroParticipantes) VALUES ('"
            + request.getParameter("idCompeticion") + "'"
            + ", '" + request.getParameter("NombreCompeticion")+ "'"
            + ", '" + request.getParameter("LugarCompeticion")+ "'"
            + ", '" + request.getParameter("NumeroParticipantes") +"')";
          s.execute(insercion);
          
        conexion.close();
        %> 
        
        <div class="alert alert-success" role="alert">Competicion Añadida</div>    
    </body>
</html>
