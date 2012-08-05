<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Parent"%>
<%@page import="java.util.List"%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Welcome to Markham College </title>

<script type="text/javascript">

	function loguear()
	{
	
		document.formularioLogueo.accion.value = 'validar';
		document.formularioLogueo.submit();
		
	}
	
</script>


</head>

<body background="images/fondo.jpg" bgcolor= "#FFFFFF">

<form name="formularioLogueo" method="post" action="<%=request.getContextPath()%>/validarUsuario.do">
<input type="hidden" name="accion" value=""/>
	<table border="0" align="center" bgcolor="white" width="350" > 
		<tr height="14%">
			<td align="center"><img src="images/logo.jpg" width="280" height="46"></td>
		</tr>
		<tr height="10%" >
			<td bgcolor="#F5D0A9"><font face="verdana"><b><h4>Matrícula en Línea 2012</h4></b></td></font>
		</tr>
		<tr height="2%">
			<td bgcolor="#B43104"></td>
		</tr>
		<tr height="11%">
			<td align="center"><font color="blue"><font face="verdana"><h5>English Versión -  Versión en Español</font></h5></td>
		</tr>
		<tr height="12%">
			<td><small><font face="verdana">Por favor, ingrese su usurario y contraseña.</font></small></td>
		</tr>
		<tr>
			<td><font face="verdana"><b><h4>Usuario:</h4></b></font>
			<input type="text" name="txtUsuario" value=""></td>
		</tr>
		
		<tr>
			<td><font face="verdana"><b><h4>Contraseña:</h4></b></font>
		
			<input type="password" name= "txtPassword"></td>
		</tr>
		
		<tr>
			<td><input type="submit" name="btnValidar" value="Ingresar" onclick="javascript:loguear();"  />
			<br>
			<font face="verdana" color="red"><b>${model.usuario}</b></font>
			
			
			</td>
		</tr>
		<!-- 
		<tr>
			<td><A href="mk-proceso-mat.jsp"><img src="images/ingresar.png" width="90" height="36" ></A></td>
		</tr>
		 -->
		
</font>
</table>

<br></br>

	<table align="center">
	<tr><td><small><p align="center"><b><font face="verdana", color="#3A2F0B">Early Years: Av. La República 195, Surco, Lima - Perú Tel.: 3158750, Fax 3158751</font></b></p></small></font></td></tr>
	<tr><td><small><p align="center"><b><font face="verdana", color="#3A2F0B">Lower School: Av. La República 111, Surco, Lima - Perú Tel.: 3158700, Fax 3158701</p></small></font></b></td></tr>
	<tr><td><small><font face="verdana", color="#3A2F0B"><b>Upper School: Calle Augusto Angulo 291 San Antonio, Miraflores, Lima - Perú Tel.: 31586750</small></font></b></td></tr>

	</table> 

</form>
</body>


</html>