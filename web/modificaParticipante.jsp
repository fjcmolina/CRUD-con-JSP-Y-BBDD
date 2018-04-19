<%-- 
    Document   : modificaParticipante
    Created on : 10-abr-2018, 13:35:42
    Author     : Francis
--%>

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
                <div class="panel-heading text-center">Modificación de Participante</div>
                <form method="get" action="grabaParticipanteModificado.jsp">
                    <div class="form-group"> 
                        <label>&nbsp;&nbsp;IdParticipante:&nbsp;</label><input type="text" size="5" name="idParticipantes" value="<%= request.getParameter("idParticipantes")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Nombre :&nbsp;</label><input type="text" size="35" name="Nombre" value="<%= request.getParameter("Nombre")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Edad:&nbsp;</label><input type="text" name="Edad" size="20" value="<%= request.getParameter("Edad")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Sexo:&nbsp;</label><select name="Sexo">
                                <option value="Masculino" size="5">Masculino</option>
                                <option value="Femenino" size="5">Femenino</option>
                            </select>
                    </div>

                    <hr>
                    &nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
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
