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
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registro de Propietarios</title>
</head>
<body class="card-panel white accent-1">
    
 <form action="registropro" method="get">
    <table>
   <tr>
    <th colspan='13'><center><h3>Registro Propietarios</h3></center></th><br><br>
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
    <td><input type="text" name='cedula' name="cedula"  required></td>
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
<center><input class='btn waves-effect blue lighten-3' type="submit" value="Ingresar" >
<input type="button" class='btn waves-effect blue lighten-3' onclick="location.href='Consultar.jsp'" value="Consultar" ></center>
</form>
<form action="registrovehiculo" method="post">
    <table>
   <tr>
       <th colspan='13'><center><h3>Registro de Vehiculos</h3></center></th><br><br>
   </tr>
   <tr>
    <td width="20">Placa</td>
    <td width="5">Marca</td>
    <td width="5">Año Fabricacin</td>
    <td width="5">Modelo</td>
    <td width="5">Tipo</td>
    <td width="5">Cedula Propietario</td>
  </tr>
  <tr>
       
</SELECT></td>
    <td><input type="text"  name='placaactual'  required></td>
    <td><input type="text"  name='marca' required></td>
    <td><input type="text"  name='añofabricacion' required></td>
    <td><input type="text"  name='modelo' required></td>
    <td><input type="text"  name='tipo' required></td>
    <td><input type="text"  name='cedulapropietario' required></td>
    
</select></td>
  </tr>
</table>
<br>
<br>
<br>
<center><input class='btn waves-effect blue lighten-3' type="submit" value="Ingresar" >
    <input type="button" class='btn waves-effect blue lighten-3' onclick="location.href='Consultar.jsp'" value="Consultar" ></center>
</form>
<form action="registromultas" method="post">
    <table>
   <tr>
    <th colspan='13'><center><h3>Registro de Multas</h3></center></th><br><br>
   </tr>
   <tr>
    <td width="20">Fecha Citacion</td>
    <td width="5">N° Citacion</td>
    <td width="5">Multa</td>
    <td width="5">Cedula</td>
    <td width="5">Placa-Actual</td>
  </tr>
  <tr>
       
</SELECT></td>
    <td><input type="date" size="3"  name='fechadecitacion'  required></td>
    <td><input type="text"  name='numerodecitacion' required></td>
    <td><input type="text"  name='valormulta' required></td>
    <td><input type="text"  name='cedulapropietario' required></td>
    <td><input type="text"  name='PlacaActualRevision' required></td>
</select></td>
  </tr>
</table>
<br>
<br>
<br>
<center><input type="submit" class='btn waves-effect blue lighten-3' value="Ingresar" >
<input type="button" class='btn waves-effect blue lighten-3' onclick="location.href='Consultar.jsp'" value="Consultar" ></center>
</form>    
<br>
<br>
<br>
<form action="eleccion.jsp">
    <center><input class='btn waves-effect blue lighten-3' type="submit" value="Regresar"></center>
</form>
</div>
</body>
</html>




