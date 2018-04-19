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

          String borrado = "DELETE FROM participantes WHERE idParticipantes='" + request.getParameter("idParticipantes") + "'";
          //out.print(borrado);
          s.execute(borrado);

        %>	
          
        <div class="alert alert-success" role="alert">Participante Borrado</div>    
        <a href="principal.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</button></a>
        <a href="participante.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Gestion Participantes</button></a>
    </body>
</html>
