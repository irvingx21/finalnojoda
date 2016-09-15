<%-- 
    Document   : q3
    Created on : 12/09/2016, 22:07:38
    Author     : Usuario
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
    String fechadematriculacionanterior = request.getParameter("fechadematriculacionanterior");
    String fechadematriculacionactual = request.getParameter("fechadematriculacionactual");
    String caduca = request.getParameter("caduca");
    String jefatura = request.getParameter("jefatura");
    String totalmatricula = request.getParameter("totaldematricula");
    String revision = request.getParameter("revision");
    String multa = request.getParameter("multa");
    String placaactual = request.getParameter("placaactual");
    String cedulapropietario = request.getParameter("cedulapropietario");
    String codigo = request.getParameter("codigo");
   String user = "postgres";
   String pwd = "1234";
   String connectionURL = "jdbc:postgresql://localhost:5432/finalbase";
   Connection connection = null;
   PreparedStatement pstatement = null;
   Class.forName("org.postgresql.Driver").newInstance();
   int updateQuery = 0;
           try{
               connection = DriverManager.getConnection(connectionURL, user, pwd);
               //String queryString = "Update quimestre1 Set i = "+i+", ci = '"+ci+"', ii = "+ii+", cii = '"+cii+"', iii = "+iii+", ciii = '"+ciii+"', ochenta = "+ochenta+", examen = "+examen+", veinte = "+veinte+", q1 = "+q1+", c = '"+c+"' Where id_materia = "+materia+" and matricula_estudiante = "+matricula+" ";
               //System.out.println("  Update quimestre1 Set i = "+i+", ci = '"+ci+"', ii = "+ii+", cii = '"+cii+"', iii = "+iii+", ciii = '"+ciii+"', ochenta = "+ochenta+", examen = "+examen+", veinte = "+veinte+", q1 = "+q1+", c = '"+c+"' Where id_materia = "+materia+" and matricula_estudiante = "+matricula+" ");
               
               String queryString = "update matricula set fechadematriculacionanterior='"+fechadematriculacionanterior+"'"
                       + ",fechadematriculacionactual='"+fechadematriculacionactual+"',"
                    + "caduca='"+caduca+"',jefatura='"+jefatura+"',totaldematricula='"+totalmatricula+"',revision='"+revision+"',"
                    + "multa='"+multa+"',placaactual='"+placaactual+"',cedulapropietario='"+cedulapropietario+"' where  codigo='"+codigo+"'";
               
               
              System.out.println("update matricula set fechadematriculacionanterior='"+fechadematriculacionanterior+"'"
                       + ",fechadematriculacionactual='"+fechadematriculacionactual+"',"
                    + "caduca='"+caduca+"',jefatura='"+jefatura+"',totaldematricula='"+totalmatricula+"',revision='"+revision+"',"
                    +"multa='"+multa+"',placaactual='"+placaactual+"',cedulapropietario='"+cedulapropietario+"' where  codigo='"+codigo+"'");
               
               pstatement = connection.prepareStatement(queryString);
                  updateQuery = pstatement.executeUpdate();
                  if (updateQuery != 0) { %>
                  <br>
                  <%
              }
            } 
            catch (Exception ex) {
            out.println("Unable to connect to database.");
    
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
        
%>

<form action=q2.jsp>
<div class=centraTabla>
<table>
<td>Registro Modificado Correctamente</td>
<td><input type=submit value=Regresar></td>
</table>
</body>
</html>
