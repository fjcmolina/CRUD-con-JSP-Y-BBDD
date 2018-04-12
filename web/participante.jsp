<%-- 
    Document   : participante
    Created on : 10-abr-2018, 10:36:01
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

        <title>WSL</title>
        <link href="estilo2.css" rel="stylesheet"/>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>

    <body>

        <div class="container" >
            <br><br>			
            <div class="panel panel-primary">
                <div class="panel-heading text-center" style="background:orange"><h2>Gestión de Participantes</h2></div>


                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");

                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM wsl2.participantes order by idParticipantes");
                %> 

                <table class="table table-striped">
                    <tr><th>idParticipante</th><th>Nombre </th><th>Edad</th><th>Sexo</th></tr>
                    <form method="get" action="grabaParticipante.jsp">
                        <tr><td><input type="text" name="idParticipantes" size="5"></td>
                            <td><input type="text" name="Nombre" size="25"></td>
                            <td><input type="text" name="Edad" size="5"></td>
                     
                            <td> <select name="Sexo">
                                <option value="Masculino" size="5">Masculino</option>
                                <option value="Femenino" size="5">Femenino</option>
                            </select>
                            
                            </td>
                           
                            <td><button type="submit" value="Añadir" class="btn btn-primary" style="background: green"><span class="glyphicon glyphicon-plus"></span> Añadir</button>          
                                
                            </td></tr> 
                    </form>
                      
                    <%
                      while (listado.next()) {
                        out.println("<tr>");
                        String idParticipantes =listado.getString("idParticipantes");
                        String Nombre = listado.getString("Nombre") ;
                        String Edad = listado.getString("Edad");
                        String Sexo = listado.getString("Sexo");
                        
                        out.println("<td>" + idParticipantes+ "</td> ");
                        out.println("<td>" + Nombre + "</td>");
                        out.println("<td>" + Edad + "</td>");
                        out.println("<td>" + Sexo + "</td>");
                        out.println("<td><button style='background: orange'><a href='borraParticipante.jsp?idParticipantes=" + idParticipantes +"'>Borrar</a></button>"
                          + "<button style='background: yellow'>"
                          + "<a href='modificaParticipante.jsp?idParticipantes=" + idParticipantes 
                          + "&?Nombre=" + Nombre + "&?Edad=" + Edad + "&?Sexo=" + Sexo +"'>Modificar</button></td>");
                      }
                    %>
                   
                    <%
                      conexion.close();
                    %>                 
                </table>
            </div>
            <center>
       
                <input type="button" onclick="location.href = 'index.jsp';" value="Pagina Principal"/>
            </center>
    </body>
</html>
