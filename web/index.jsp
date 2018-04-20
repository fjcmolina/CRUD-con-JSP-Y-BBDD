<%-- 
    Document   : index
    Created on : 19-abr-2018, 8:20:17
    Author     : Francis
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Scanner"%>
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
        <h1>LOGIN</h1>
        <form method="get" action="login.jsp">
            <center>
                <table border="1" width="30%" cellpadding="10">
                    <tr>
                        <td>Usuario</td>
                        <td><center><input type="text" name="usuario" />

                    </center></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><center><input type="password" name="contrasena" value="" /></center></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><center><input type="submit" value="Acceder" /></center></td>
                    </tr>
                </table>
            </center>
        </form>
        <br>
    </body>
</html>

