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





<body>


<form name="formularioPersona" method="get" action="<%=request.getContextPath()%>/buscarPersona.do">

<input type="hidden" name="accion" value=""/>
<table>
<tr><td>Ingresar DNI</td><td><input type="text" name="txtDNI" /></td><td><input type="submit" name="btnConsultar" value="Validar DNI" onclick="javascript:buscar();"  /></td></tr>
<td>
<!-- <a href="<%=request.getContextPath() %>/buscarPersona.do"><span class="">Consulta DNI</span></a> -->
</td>
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


</form>
</body>
</html>