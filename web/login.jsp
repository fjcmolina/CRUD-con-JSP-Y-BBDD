<%-- 
    Document   : login
    Created on : 19-abr-2018, 9:25:13
    Author     : Francis
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilo2.css" rel="stylesheet"/>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

        <title>WSL</title>
    </head>
    <body>
        <%

          HashMap<String, String> login = new HashMap();

          login.put("admin", "admin");
          login.put("usuario", "usuario");
          login.put("francis", "francis");

          String nombre = request.getParameter("usuario");
          String contraseña = request.getParameter("contraseña");

          if (login.containsKey(nombre)) {
            if (login.get(nombre).equals(contraseña)) {
              session.setAttribute("nombre", nombre);
              response.sendRedirect("principal.jsp");
            } else {
              out.println("<div class='alert alert-success' role='alert'>Contraseña incorrecta</div>");
              out.println("<a href='index.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Login </button></a>");
            }
          } else {
            out.println("<div class='alert alert-success' role='alert'>El usuario no existe</div>");
            out.println("<a href='index.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Login</button></a>");
          }
        %>
    </body>
</html>
