<%-- 
    Document   : grabaCompeticionModificado
    Created on : 16-mar-2018, 10:53:52
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
        <link rel="shortcut icon" type="image/x-icon" href="wslfavicon.ico" />
        <link href="estilo2.css" rel="stylesheet"/>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


        <title>WSL</title>
    </head>
    <body>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");
          Statement s = conexion.createStatement();
          request.setCharacterEncoding("UTF-8");

          String actualizacion = "UPDATE competicion SET "
            + "NombreCompeticion='" + request.getParameter("NombreCompeticion")
            + "', LugarCompeticion='" + request.getParameter("LugarCompeticion")
            + "', idParticipante='" + request.getParameter("idParticipante") + "'"
            + ", NumeroParticipantes='" + Integer.valueOf(request.getParameter("NumeroParticipantes"))
            + "' WHERE idCompeticion='" + request.getParameter("idCompeticion") + "'";

          //out.println(actualizacion);
          s.execute(actualizacion);

          conexion.close();
        %>
        <br>
        <div class="alert alert-success" role="alert">Competicion Modificada</div> 
        <a href="principal.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</button>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</body>
</html>
