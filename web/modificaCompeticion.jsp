<%-- 
    Document   : modificaCompeticion
    Created on : 16-mar-2018, 11:02:02
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
        <% request.setCharacterEncoding("UTF-8");%>


        <div class="container">
            <br><br>
            <div class="panel panel-info">
                <div class="panel-heading text-center">Modificación de Competicion</div>
                <form method="get" action="grabaCompeticionModificado.jsp">
                    <div class="form-group"> 
                        <label>&nbsp;&nbsp;IdCompeticion:&nbsp;</label><input type="text" size="5" name="idCompeticion" value="<%= request.getParameter("idCompeticion")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Nombre de la Competicion:&nbsp;</label><input type="text" size="35" name="NombreCompeticion" value="<%= request.getParameter("NombreCompeticion")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Lugar de la Competicion:&nbsp;</label><input type="text" name="LugarCompeticion" size="20" value="<%= request.getParameter("LugarCompeticion")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;NºParticipantes:&nbsp;</label><input type="text" size="5" name="NumeroParticipantes" value="<%= request.getParameter("NumeroParticipantes")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;IdParticipante:&nbsp;</label><select name="idParticipante">

                            <%
                              Class.forName("com.mysql.jdbc.Driver");
                              Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");

                              Statement s = conexion.createStatement();

                              ResultSet listado2 = s.executeQuery("SELECT idParticipantes,Nombre FROM wsl2.participantes order by idParticipantes");
                              while (listado2.next()) {

                                String idParticipantes = listado2.getString("idParticipantes");

                                String Nombre = listado2.getString("Nombre");

                                out.println("<option value='" + idParticipantes + "'> " + idParticipantes + " " + Nombre + "</option>");

                              }
                            %>

                        </select>
                    </div>
                    <hr>
                    &nbsp;&nbsp;<a href="principal.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
                    <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
                </form>

            </div>
            <div class="text-center"></div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    <center>
        <a href="principal.jsp"><span class="glyphicon glyphicon-home"></span> Página principal</button>
    </center>
</body>
</html>
