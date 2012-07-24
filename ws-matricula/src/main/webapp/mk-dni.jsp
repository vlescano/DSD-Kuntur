<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Persona"%>
<%@page import="java.util.List"%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title> Welcome to Markham College </title>

<script type="text/javascript">

	function buscar()
	{
	
		document.formularioPersona.accion.value = 'buscar';
		document.formularioPersona.submit();
		
	}
	
</script>

</head>

<body bgcolor= "#FFFFFF">

<form name="formularioPersona" method="get" action="<%=request.getContextPath()%>/buscarPersona.do">
<input type="hidden" name="accion" value=""/>
<font face="verdana">
<img src="images/logo.jpg" width="280" height="45"><b>MATRICULA EN LINEA 2012</b>

<br></br>
<br></br>


<table border="0"  bgcolor="white" height="40"> 
		
		<tr bgcolor="#F8ECE0"  align="center">
			<th width="300"><font color="#DBA901"><small>AYUDA</font></small></th>
			<th width="300"><font color="#DBA901"><small><a href="mk-prerrequisitos.jsp">PRERREQUISITOS</a></small></font></th>
			<th width="300"><font color="#DBA901"><small>DOCUMENTOS</font></small></th>
			<th width="300"><font color="#DBA901"><small><a href="mk-proceso-mat.jsp">MATRICULAR</a></font></small></th>
			<th width="300"><font color="#DBA901"><small><a href="mk-ingreso.jsp">SALIR</a></font></small></th>
		</tr>

		<tr><td bgcolor="#DBA901"  align="center"colspan="5" width="100" height="5">
		</td></tr>

</table>


<font face="verdana"><h5><b>Matrícula > Proceso de Matrícula</b></h5>

<div align="center">
<b><h4>ROZAS VARGAS, Jorge Daniel</h4></b>


<b><h5>DOCUMENTO DE IDENTIDAD DEL ESTUDIANTE</h5></b>

<br><small>Ingrese el tipo y número de documento de identidad del estudiante.</br></small>

<br></br>


<table>
<tr><td>Ingresar DNI</td><td><input type="text" name="txtDNI" /></td><td><input type="submit" name="btnConsultar" value="Validar DNI" onclick="javascript:buscar();"  /></td></tr>
<td>
<!-- <a href="<%=request.getContextPath() %>/buscarPersona.do"><span class="">Consulta DNI</span></a> -->
</td>
</table>
<br>
<table border="1">
 <tr><td>Datos Reniec</td></tr>
 <tr>
                   	<td>DNI</td>	 <th>${model.persona.dni}</th>  </tr>    
                    <tr><td>Nombres</td>	 <td >${model.persona.nombres}</td>    </tr>  
                    <tr><td>Apellido Paterno</td>	<td >${model.persona.apellidoPaterno}</td>    </tr>  
                    <tr> <td>Apellido Materno</td><td >${model.persona.apellidoMaterno}</td>    </tr>  
                    <tr> <td>Fecha de Nacimiento</td><td >${model.persona.fechaNacimiento}</td>    </tr>  
                              	
 </table>

<table border="1" WIDTH=35% height=5% align="center" > 
		
		<tr>	<th align="center"><td><small><font face="verdana"><form><input type="submit" value="Aceptar"></form></font></small></td></th>
			<th align="left"><small><font face="verdana">El tipo y número de documento es correcto</font></small></th>
		</tr>
		
		<tr>	<th align="center"><td><small><font face="verdana"><form><input type="submit" value="Cambiar"></form></font></small></td></th>
			<th align="left"><small><font face="verdana">Grabar el tipo y número de documento ingresado</font></small></th>
		</tr>

</table>
	

</div>

</form>

</body>


</html>