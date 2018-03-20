<%-- 
    Document   : altaCompeticion
    Created on : 14-mar-2018, 11:16:35
    Author     : Francis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WSL</title>
    </head>
    <body>
        <h2>Introduzca los datos de la nueva competición</h2>
        <form method="get" action="grabaCompeticion.jsp">
            Codigo de la Competicion <input type="varchar" name="idCompeticion"/></br>
            Nombre <input type="varchar" name="NombreCompeticion"/></br>
            Lugar de la Competicion<input type="varchar" name="LugarCompeticion"/></br>
            Numero de participantes <input type="varchar" name="NumeroParticipantes"/></br>
            
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>
