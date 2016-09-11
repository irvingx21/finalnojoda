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
//ResultSet rs1 = Estamento.executeQuery("select v.PlacaActual, p.Nombres,p.Apellidos from Propietario as p inner join Vehiculo as v on v.Cedulapropietario = p.cedula where v.PlacaActual = "+valor+"");
ResultSet rs1 = Estamento.executeQuery("select marca ,añofabricacion ,placaactual from vehiculo where placaactual='"+valor+"'");
while(rs1.next()) {
out.println("<h3>Marca: "+rs1.getString("marca")+"</h3>"); 
out.println("<h3>Año de Fa: "+rs1.getString("añofabricacion")+"</h3>");
out.println("<h3>Placa: "+rs1.getString("placaactual")+"</h3>");
}


rs1.close();
Estamento.close();
conexion.close();

out.println("</TABLE></form></div></center>");
out.println("<center><form><input type='button' onclick='window.print();' value='Imprimir'/></form></center>");

out.println("</form></div></center>");
out.println("<center><form action=Consultar.jsp><input value=Volver type=submit></form></center>");
%>
</body>
</html>