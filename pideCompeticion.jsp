<%-- 
    Document   : pideCompeticion
    Created on : 15-mar-2018, 10:11:49
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
        <link rel="stylesheet" type="text/css" href="estilo.css" />
        <title>WSL</title>
        
    </head>
    <body>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsl2", "root", "root");
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery("SELECT * FROM competicion");
        %>
        <table>
            <tr><th>IdCompeticion</th><th>Nombre</th><th>Lugar</th><th>Nª Participantes</th></tr>
                    <%
                      while (listado.next()) {
                        out.println("<tr><td>");
                        out.println(listado.getString("idCompeticion") + "</td>");
                        out.println("<td>" + listado.getString("NombreCompeticion") + "</td>");
                        out.println("<td>" + listado.getString("LugarCompeticion") + "</td>");
                        out.println("<td>" + listado.getString("NumeroParticipantes") + "</td>");

                    %>
            <td>
                <form method="get" action="borraCompeticion.jsp">
                    <input type="hidden" name="idCompeticion" value="<%=listado.getString("idCompeticion")%>"/>
                    <input align = "center" type="submit" style="background:#ff6666" value="Borrar">
                </form>
            </td></tr>
            <%
              } // while   
              conexion.close();
            %>
    </table>
</body>
</html>
