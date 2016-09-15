<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Busqueda</title>
<style type="text/css">
input{
border-radius:10px;
box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;
height: 35px;
padding: 5px;
margin: 5px;
color: black;
font-family: verdana;
font-style: bold;}
#contenedor{
width:1000px;
border: 1px solid rgba(155,155,155,0.4);
padding: 10px;
margin: 30px;
border-radius: 15px 15px 15px 15px;
box-shadow:0px 10px 25px #0066cc;
border-color: #ffffff;}
td{
text-align: center;
font-size: 25px italic;
width: 50px;
border-top-style: dotted;
border-right-style: dotted;
border-left-style: dotted;
border-bottom-style: dotted;
border-width: 1px}
th{
text-align: center;
font-size: 25px italic;
width: 200px;
background-color: #4CAF50;
color: white;
}
h3{
font-family: verdana;
font-style: italic;}
h5{
font-family: verdana;
font-style: italic;}
.ts{
text-align: left;
}
table tr:hover {
  background: #FFFF66;
}
</style>
</head>
<body>
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
ResultSet rs1 = Estamento.executeQuery("select v.PlacaActual, p.Nombres,p.Apellidos from Propietario as p inner join Vehiculo as v on v.Cedulapropietario = p.cedula where v.PlacaActual = '"+valor+"'");
//ResultSet rs1 = Estamento.executeQuery("select marca ,añofabricacion ,placaactual from vehiculo where placaactual='"+valor+"'");
while(rs1.next()) {
out.println("<h3>Nombre   : "+rs1.getString("Nombres")+"</h3>"); 
out.println("<h3>Apellidos: "+rs1.getString("Apellidos")+"</h3>");
out.println("<h3>Placa: "+rs1.getString("placaactual")+"</h3>");
}

ResultSet rs = Estamento.executeQuery("select codigo,fechadematriculacionanterior,fechadematriculacionactual,caduca,jefatura,totaldematricula,revision,multa,placaactual,cedulapropietario from matricula where placaactual='"+valor+"'");

System.out.println("select codigo,fechadematriculacionanterior,fechadematriculacionactual,caduca,jefatura,totaldematricula,revision,multa,placaactual,cedulapropietario from matricula where placaactual='"+valor+"'");

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
out.println("<center><form><input type='button' onclick='window.print();' value='Imprimir'/></form></center>");

out.println("</form></div></center>");
out.println("<center><form action=Consultar.jsp><input value=Volver type=submit></form></center>");
%>
</body>
</html>