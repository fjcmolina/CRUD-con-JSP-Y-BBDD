<%-- 
    Document   : pideParticipante
    Created on : 10-abr-2018, 10:54:19
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
        <link rel="stylesheet" type="text/css" href="estilo.css" />
<link href="estilo2.css" rel="stylesheet"/>

        <title>WSL</title>
    </head>
    <body>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery("SELECT * FROM participantes");
        %>
        <table align ="center">
            <tr><th>IdParticipante</th><th>Nombre</th><th>Edad</th><th>Sexo</th></tr>
                    <%
                      while (listado.next()) {
                        out.println("<tr><td>");
                        out.println(listado.getString("idParticipantes") + "</td>");
                        out.println("<td>" + listado.getString("Nombre") + "</td>");
                        out.println("<td>" + listado.getString("Edad") + "</td>");
                        out.println("<td>" + listado.getString("Sexo") + "</td>");

                    %>
            <td>
                <form method="get" action="borraParticipante.jsp">
                    <input type="hidden" name="idParticipantes" value="<%=listado.getString("idParticipantes")%>"/>
                    <input align = "center" type="submit" style="background:#ff6666" value="Borrar">
                </form>
            </td></tr>
            <%
              } // while   
              conexion.close();
            %>
    </table>
    <br>
<center>
    <input type="button" onclick="location.href = 'index.jsp';" value="Pagina Principal" style="background:orange" />
</center>
</body>
</html>
