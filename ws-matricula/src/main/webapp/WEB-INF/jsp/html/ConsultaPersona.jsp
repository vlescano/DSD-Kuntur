<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Persona"%>
<%@page import="java.util.List"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Consulta DNI</title>

<script type="text/javascript">

	function buscar()
	{
	
		document.formularioPersona.accion.value = 'buscar';
		document.formularioPersona.submit();
		
	}
	
</script>

</head>





<body bgcolor= "#FFFFFF">


<font face="verdana"><h5><b>Matrícula - Proceso de Matrícula</b></h5></font>

<b><h4>ROZAS VARGAS, Jorge Daniel</h4></b>

<b><h5>DOCUMENTO DE IDENTIDAD DEL ESTUDIANTE</h5></b>

<br><small>Ingrese el tipo y número de documento de identidad del estudiante.</br></small>


<form name="formularioPersona" method="get" action="<%=request.getContextPath()%>/buscarPersona.do">

<input type="hidden" name="accion" value=""/>
<table>
<tr><td>Ingresar DNI</td><td><input type="text" name="txtDNI" /></td><td><input type="submit" name="btnConsultar" value="Validar DNI" onclick="javascript:buscar();"  /></td></tr>
<tr>
	<td>
		<!-- <a href="<%=request.getContextPath() %>/buscarPersona.do"><span class="">Consulta DNI</span></a> -->
	</td>
</tr>
</table>
<table border="1">
 <tr><td>Datos Reniec</td></tr>
 <tr>
                   	<td>DNI</td>	 <th>${model.persona.dni}</th>  </tr>    
                    <tr><td>Nombres</td>	 <td >${model.persona.nombres}</td>    </tr>  
                    <tr><td>Apellido Paterno</td>	<td >${model.persona.apellidoPaterno}</td>    </tr>  
                    <tr> <td>Apellido Materno</td><td >${model.persona.apellidoMaterno}</td>    </tr>  
                    <tr> <td>Fecha de Nacimiento</td><td >${model.persona.fechaNacimiento}</td>    </tr>  
                              	
 </table>
 <br/>
<table border="1" WIDTH=35% height=5% align="left" > 
		
		<tr>	<th align="center"><td><small><font face="verdana"><form><input type="submit" value="Aceptar"></form></font></small></td></th>
			<th align="left"><small><font face="verdana">El tipo y número de documento es correcto</font></small></th>
		</tr>
		
		<tr>	<th align="center"><td><small><font face="verdana"><form><input type="submit" value="Cambiar"></form></font></small></td></th>
			<th align="left"><small><font face="verdana">Grabar el tipo y número de documento ingresado</font></small></th>
		</tr>
</table>
		
</form>



</body>
</html>