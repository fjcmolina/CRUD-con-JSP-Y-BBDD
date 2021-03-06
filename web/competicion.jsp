<%-- 
    Document   : index
    Created on : 13-mar-2018, 10:28:41
    Author     : Francis
--%>

<%@page import="java.util.ArrayList"%>
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
                %> 

                <table class="table table-striped">
                    <tr><th>IdCompeticion</th><th>Nombre Competicion</th><th>Lugar Competicion</th><th>Nº Participantes</th><th>IdParticipante</th></tr>
                    <form method="get" action="grabaCompeticion.jsp">
                        <tr>
                            <td><input type="text" name="idCompeticion" size="5"></input></td> </input>
                            <td><input type="text" name="NombreCompeticion" size="25"></input></td>

                            <td>   
                                <%
                                  ArrayList<String> lugar = new ArrayList();

                                  lugar.add("Australia");
                                  lugar.add("Brasil");
                                  lugar.add("Estados Unidos");
                                  lugar.add("Indonesia");
                                  lugar.add("Tahiti");
                                  lugar.add("Portugal");
                                  lugar.add("Sudafrica");
                                %>
                                <select name="LugarCompeticion">
                                    <%
                                      for (String n : lugar) {
                                        out.println("<option>" + n + "</option>");
                                      }
                                    %>  
                                </select>
                            </td>

                            <td><input type="text" name="NumeroParticipantes" size="5"></input></td>

                            <td>
                                <select name="idParticipante">

                                    <%
                                      ResultSet listado2 = s.executeQuery("SELECT idParticipantes,Nombre FROM wsl2.participantes order by idParticipantes");
                                      while (listado2.next()) {

                                        String idParticipantes = listado2.getString("idParticipantes");

                                        String Nombre = listado2.getString("Nombre");

                                        out.println("<option value='" + idParticipantes + "'> "+ idParticipantes+ " " + Nombre + "</option>");

                                      }
                                    %>

                                </select>

                            </td>

                            <td><button type="submit" value="Añadir" class="btn btn-primary" style="background: green"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
                    </form>

                    <%
                      ResultSet listado = s.executeQuery("SELECT * FROM wsl2.competicion order by idCompeticion");
                      while (listado.next()) {
                        out.println("<tr>");
                        String idCompeticion = listado.getString("idCompeticion");
                        String NombreCompeticion = listado.getString("NombreCompeticion");
                        String LugarCompeticion = listado.getString("LugarCompeticion");
                        String NumeroParticipantes = listado.getString("NumeroParticipantes");
                        String IdParticipante = listado.getString("IdParticipante");

                        out.println("<td>" + idCompeticion + "</td> ");
                        out.println("<td>" + NombreCompeticion + "</td>");
                        out.println("<td>" + LugarCompeticion + "</td>");
                        out.println("<td>" + NumeroParticipantes + "</td>");
                        out.println("<td>" + IdParticipante + "</td>");
                        out.println("<td><button style='background: orange'><a href='borraCompeticion.jsp?idCompeticion=" + idCompeticion + "'>Borrar</a></button> "
                          + "<button style='background: yellow'><a href='modificaCompeticion.jsp?idCompeticion=" + idCompeticion + "&NombreCompeticion=" + NombreCompeticion
                          + "&LugarCompeticion=" + LugarCompeticion + "&NumeroParticipantes=" + NumeroParticipantes + "&IdParticipante=" + IdParticipante + "'>Modificar</button></td>");

                      }
                    %>

                    <%
                      conexion.close();
                    %>                 
                </table>
            </div>
            <center>

                <input type="button" onclick="location.href = 'principal.jsp';" value="Pagina Principal"  />
            </center>

    </body>
</html>
