<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
<title>Busqueda</title>

</head>
<body class="card-panel white accent-1">
<%@page import="java.sql.*" %>
<%
String vehiculo = request.getParameter("vehiculo");
System.out.println("sii" + vehiculo);
out.println("<center><hr color='#003399'/><div id=contenedor><h3>Consulta de Propietarios</h3><FORM ACTION=index.jsp METHOD=post>");

Class.forName("org.postgresql.Driver").newInstance();
                        String user = "postgres";
                        String password = "1234";
                        String connect = "jdbc:postgresql://localhost:5432/finalbase";
			Connection conexion = DriverManager.getConnection(connect, user, password);
Statement Estamento = conexion.createStatement();
String valor = request.getParameter("valor");
System.out.println("valor " + valor);
ResultSet rs1 = Estamento.executeQuery("select v.PlacaActual, p.Nombres,p.Apellidos from Propietario as p inner join Vehiculo as v on v.Cedulapropietario = p.cedula where v.PlacaActual = '"+valor+"'or cedulapropietario='"+valor+"'");
//ResultSet rs1 = Estamento.executeQuery("select marca ,añofabricacion ,placaactual from vehiculo where placaactual='"+valor+"'");
while(rs1.next()) {
out.println("<h3>Nombre   : "+rs1.getString("Nombres")+"</h3>"); 
out.println("<h3>Apellidos: "+rs1.getString("Apellidos")+"</h3>");
out.println("<h3>Placa: "+rs1.getString("placaactual")+"</h3>");
}

ResultSet rs = Estamento.executeQuery("select codigo,fechadematriculacionanterior,fechadematriculacionactual,caduca,jefatura,totaldematricula,revision,multa,placaactual,cedulapropietario from matricula where placaactual='"+valor+"' or cedulapropietario='"+valor+"'");

System.out.println("select codigo,fechadematriculacionanterior,fechadematriculacionactual,caduca,jefatura,totaldematricula,revision,multa,placaactual,cedulapropietario from matricula where placaactual='"+valor+"' or cedulapropietario='"+valor+"'");

out.println("<form action='ConsultarNota.jsp'>");
out.println("<TABLE ><div></center>");
out.println("<TR>");
out.println("<Td >MATRICULA</Td>");
out.println("<Td >Codigo</Td>");
out.println("<Td >Fecha Ma. Anterior</Td>");
out.println("<Td >Fecha Ma. Actual</Td>");
out.println("<Td >Caduca</Td>");
out.println("<Td >Jefatura</Td>");
out.println("<Td >Valor</Td>");
out.println("<Td >Revision</Td>");
out.println("<Td >Multa</Td>");
out.println("<Td >Placa</Td>");
out.println("<Td >Cedula</Td>");
out.println("</TR>");

while(rs.next()) {
out.println("<TR>");
out.println("<TD >DATOS</TD>");
out.println("<TD >"+rs.getString("codigo")+"</TD>");
out.println("<TD >"+rs.getString("fechadematriculacionanterior")+"</TD>");
out.println("<TD >"+rs.getString("fechadematriculacionactual")+"</TD>");
out.println("<TD >"+rs.getString("caduca")+"</TD>");
out.println("<TD >"+rs.getString("jefatura")+"</TD>");
out.println("<TD >"+rs.getString("totaldematricula")+"</TD>");
out.println("<TD >"+rs.getString("revision")+"</TD>");
out.println("<TD >"+rs.getString("multa")+"</TD>");
out.println("<TD >"+rs.getString("placaactual")+"</TD>");
out.println("<TD >"+rs.getString("cedulapropietario")+"</TD>");
out.println("</TR>");
};
rs.close();
Estamento.close();
conexion.close();

out.println("</TABLE></form></div></center>");
out.println("<br>");
out.println("<br>");
out.println("<center><form><input type='button' class='btn waves-effect blue lighten-3' onclick='window.print();' value='Imprimir'/></form></center>");
out.println("<br>");
out.println("<br>");
out.println("<br>");
out.println("</form></div></center>");
out.println("<center><form action=Consultar.jsp><input class='btn waves-effect blue lighten-3' value=Volver type=submit></form></center>");
%>
</body>
</html>