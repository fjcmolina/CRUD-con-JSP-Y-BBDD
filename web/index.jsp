<%-- 
    Document   : index
    Created on : 10-abr-2018, 10:15:01
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
        <meta charset="utf-8">
        <link rel="shortcut icon" type="image/x-icon" href="wslfavicon.ico" />
        <title>WSl</title>


        <link href="estilo2.css" rel="stylesheet"/>
    </head>
    <body>
        <div id="wrapper">

            <div id="header" > 
                <div id="titulo">World Surf League</div>

            </div>

            <div id="nav">
                <a href="competicion.jsp">Competiciones </a> <a href="participante.jsp">Participantes</a>
            </div>

            <div id="main">
                <h3>¿Qué es Wsl?</h3>
                <p>Es el campeonato mundial de surf, que organiza varios eventos donde los clasificados para estas pruebas compiten alrededor del mundo<p>

                <h3>¿Qué puedo hacer en esta pagina?</h3>

                <p>En esta pagina podras administrar las competiciones y participantes que estan calsificados en ellas mediante las pestañas de arriba</p>
                <center>
                    <img src="imagenes/wsl.jpg" >
                </center>

            </div>



        </div>
    </body>
</html>
