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
<title>Registro de Propietarios</title>
</head>
<body>
    
    <form action="registropro" method="get">
    <table>
   <tr>
    <th colspan='13'><h3>Registro Propietarios</h3></th><br><br>
   </tr>
   <tr>
    <td width="20">Cedula</td>
    <td width="5">Nombres</td>
    <td width="5">Apellidos</td>
    <td width="5">Residencia</td>
    <td width="5">Direccion</td>
    <td width="5">Telefono</td>
  </tr>
  <tr>
       
</SELECT></td>
    <td><input type="text" name='cedula' name="cedula" required></td>
    <td><input type="text" name='nombres' name="cedula" required></td>
    <td><input type="text" name='apellidos' name="cedula" required></td>
    <td><input type="text" name='residencia' name="cedula" required></td>
    <td><input type="text" name='direccion' name="cedula" required></td>
    <td><input type="text" name='telefono' name="cedula" required></td>
    
</select></td>
  </tr>
</table>
<br>
<br>
<br>
<input type="submit" value="Ingresar" >
<input type="submit" value="Consultar" >
</form>
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



