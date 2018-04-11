<%-- 
    Document   : listadoCompeticion
    Created on : 14-mar-2018, 9:26:44
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
        <title>Listado de Competiciones</title>
    </head>
    <body>
        <h1>Listado de Competiciones</h1>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");

          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery("SELECT * FROM wsl2.competicion order by idCompeticion");
          while (listado.next()) {
            out.println(listado.getString("idCompeticion") + " " + listado.getString("NombreCompeticion") + "<br>");
          }
          conexion.close();
        %>

    </body>
</html>
