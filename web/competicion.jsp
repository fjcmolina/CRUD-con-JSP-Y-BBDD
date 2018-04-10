<%-- 
    Document   : index
    Created on : 13-mar-2018, 10:28:41
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
        <title>WSL</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container">
            <br><br>			
            <div class="panel panel-primary">
                <div class="panel-heading text-center" style="background:orange"><h2>Gestión de Competiciones</h2></div>


                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");

                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM wsl2.competicion order by idCompeticion");
                %> 

                <table class="table table-striped">
                    <tr><th>IdCompeticion</th><th>Nombre Competicion</th><th>Lugar Competicion</th><th>Nº Participantes</th><th>IdParticipante</th></tr>
                    <form method="get" action="grabaCompeticion.jsp">
                        <tr><td><input type="text" name="idCompeticion" size="5"></td>
                            <td><input type="text" name="NombreCompeticion" size="25"></td>
                            <td><input type="text" name="LugarCompeticion" size="5"></td>
                            <td><input type="text" name="NumeroParticipantes" size="5"></td>
                            <td><input type="text" name="IdParticipante" size="5"></td>
                            
                            <td><button type="submit" value="Añadir" class="btn btn-primary" style="background: green"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
                    </form>

                    <%
                      while (listado.next()) {
                        out.println("<tr>");
                        out.println("<td>" + listado.getString("idCompeticion") + "</td> ");
                        out.println("<td>" + listado.getString("NombreCompeticion") + "</td>");
                        out.println("<td>" + listado.getString("LugarCompeticion") + "</td>");
                        out.println("<td>" + listado.getString("NumeroParticipantes") + "</td>");
                        out.println("<td>" + listado.getString("IdParticipante") + "</td>");

                      }
                    %>

                    <%
                      conexion.close();
                    %>                 
                </table>
            </div>
            <center>
                <input type="button" onclick="location.href = 'pideCompeticion.jsp';" value="Borrar Competicion" style="background:#ff6666" />
                <input type="button" onclick="location.href = 'modificaCompeticion.jsp';" value="Modificar Competicion" style="background: yellow" />
                <br>
                <input type="button" onclick="location.href = 'index.jsp';" value="Principal"  />
            </center>

    </body>
</html>
