<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro de matriculas </title>
</head>
<body>
    
    <%@page import="java.sql.*" %>
<%
out.println("<center><hr color='#003399'/><div id=contenedor>");
Class.forName("org.postgresql.Driver").newInstance();
                        String user = "postgres";
                        String password = "1234";
                        String connect = "jdbc:postgresql://localhost:5432/finalbase";
			Connection conexion = DriverManager.getConnection(connect, user, password);
Statement Estamento = conexion.createStatement();
String valor = request.getParameter("valor");
System.out.println("valor " + valor);
ResultSet rs = Estamento.executeQuery("select codigo,fechadematriculacionanterior,fechadematriculacionactual,caduca,jefatura,totaldematricula,revision,multa,placaactual,cedulapropietario from matricula where placaactual='"+valor+"'");
while(rs.next()) {
String codigo = rs.getString("codigo");
String fechadematriculacionanterior = rs.getString("fechadematriculacionanterior");
String fechadematriculacionactual = rs.getString("fechadematriculacionactual");
String caduca = rs.getString("caduca");
String jefatura = rs.getString("jefatura");
String totaldematricula = rs.getString("totaldematricula");
String revision = rs.getString("revision");
String multa = rs.getString("multa");
String placaactual = rs.getString("placaactual");
String cedulapropietario = rs.getString("cedulapropietario");

%>
    
    <form action="actualizamatricula" method="post">
    <table>
   <tr>
    <th colspan='13'><h3>Registro Mtricula</h3></th><br><br>
   </tr>
   <tr>
    <td width="20">Codigo</td>
    <td width="5">Fecha Matricula anterior</td>
    <td width="5">Fecha matricula actual</td>
    <td width="5">FCaducidad</td>
    <td width="5">Jefatura</td>
    <td width="5">Valor</td>
    <td width="5">Revision</td>
    <td width="5">Multa</td>
    <td width="5">Placa Actual</td>
    <td width="5">Cedula Propietario</td>
  </tr>
  <tr>     
</SELECT></td>
    <td><input type="text"  value="<%= codigo %>"                       name='codigo'     required></td>
    <td><input type="date" value="<%= fechadematriculacionanterior %>"  name='fechadematriculacionanterior'    required></td>
    <td><input type="date" value="<%= fechadematriculacionactual %>"    name='fechadematriculacionactual'  required></td>
    <td><input type="date" value="<%= caduca %>"                        name='caduca' required></td>
    <td><input type="text" value="<%= jefatura %>"                      name='jefatura'  required></td>
    <td><input type="text" value="<%= totaldematricula %>"              name='totaldematricula'   required></td>
    <td><select type="text" value="<%= revision %>"                     name='revision'  required>
    <option value='true'>true</option>
    <option value='false'>false</option>  
    </select></td>
    
    <td><select type="text" value="<%= multa %>"                       name='multa' required>
    <option value='true'>true</option> 
    <option value='false'>false</option>
    </select></td>
    <td><input type="text" value="<%= placaactual %>"                  name='placaactual'  required></td>
    <td><input type="text" value="<%= cedulapropietario %>"            name='cedulapropietario'   required></td>
</select></td>
  </tr>
</table>
<br>
<br>
<br>
<!--<input type="submit" value="Ingresar" >-->
<input type="submit" value="Modificar" >
</form>
<%
}
rs.close();
Estamento.close();
conexion.close();
%>
<br>
<br>
<br>
<form action="eleccion.jsp">
    <input type="submit" value="Regresar">
</form>
</div>
</body>
</html>
<style type="text/css">
input[type=number]{
    width: 50px;
} 
input[type=text]{
    width: 50px;
} 
table th {
  text-align: center;
  color: blue;
}
table td {
  text-align: center;
  background-color: white;
  color: black;
  font-weight: bold;
  font-family: verdana;
  width: 50px;
}
body {
    background-color: white;
}
select{
border-radius:10px;
box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;
height: 35px;
padding: 5px;
margin: 5px;
color: black;
font-family: verdana;
font-style: bold;}
option{
border-radius:10px;
box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;
height: 35px;
padding: 5px;
margin: 5px;
color: black;
font-family: verdana;
font-style: bold;}
input{
border-radius:10px;
box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;
height: 35px;
padding: 5px;
margin: 5px;
color: black;
font-family: verdana;
font-style: bold;}
div.centraTabla{
text-align: center;
}
div.centraTabla table {
margin: 0 auto;
text-align: left;
}
div{
width:100%;    
}
table{
width:100%;
border: 1px solid rgba(155,155,155,0.4);
border-radius: 15px 15px 15px 15px;
box-shadow:0px 10px 25px #0066cc;
border-color: #ffffff;}
#div{
width:100%;
border: 0px solid rgba(155,155,155,0.4);
padding:0px;
margin:0px;
border-radius: 15px 15px 15px 15px;
box-shadow:0px 10px 25px #0066cc;
border-color: #ffffff;}
td{
text-align: center;
font-size: 25px italic;
width: 50px;
font-family: verdana}
th{
text-align: center;
font-size: 25px italic;
width: 200px;
font-family: verdana;}
h3{
font-family: verdana;
font-style: italic;}
.ts{
text-align: left;
}
</style>



