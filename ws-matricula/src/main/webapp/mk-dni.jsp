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
	
	function grabarDNI()
	{

		document.formularioPersona.action.value = 'mk-registra-sit-esp.jsp';
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
<%
int s=0;    
if (request.getParameter("s") != null) {
       s = Integer.parseInt(request.getParameter("s"));
        
       //out.println("Please enter your name."+s);
            
}else{
	 
}



%>


<!---
${childrenParents[Integer.parseInt(request.getParameter("s"))].nombre}
 --->

<b><h5>DOCUMENTO DE IDENTIDAD DEL ESTUDIANTE</h5></b>

<br><small>Ingrese el tipo y número de documento de identidad del estudiante.</br></small>

<br></br>


<table>
<tr><td>Ingresar DNI</td><td><input type="text" name="txtDNI" value="${model.persona.dni}" /></td><td><input type="submit" name="btnConsultar" value="Consultar DNI" onclick="javascript:buscar();"  /></td></tr>
</table>
<br>


<table  width="400" cellspacing="0" cellpadding="0" align="center" style="border-right: 1px solid #D2ae7b; border-LEFT: 1px solid #D2ae7b; border-TOP: 1px solid #D2ae7b;font-family:Verdana;font-size:small;">
<tr><td colspan=2 align="center" style="border-bottom: 1px solid #D2ae7b;"><b>Datos Reniec</b></td></tr>
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">DNI</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.dni}</td></tr>    
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Nombres</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.nombres}</td></tr>  
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Apellido Paterno</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.apellidoPaterno}</td></tr>  
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Apellido Materno</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.apellidoMaterno}</td></tr>  
<tr><td style="border-bottom: 1px solid #D2ae7b;" width="60%">Fecha de Nacimiento</td><td style="border-bottom: 1px solid #D2ae7b;border-left: 1px solid #D2ae7b;">${model.persona.fechaNacimiento}</td></tr>  
</table>
<br></br>



<br></br>

<table border="1" WIDTH=35% height=5% align="center" > 
		<!-- 
		<tr><td><input type="submit" value="Grabar DNI" onclick="javascript:grabarDNI();"/></td>
		-->
		<td><font face="verdana"><small>Si el número del documento ingresado es correcto presione "Grabar DNI" para continuar</small></font></td>
		<A href="mk-registra-sit-esp.jsp"><img src="images/continuar.png" width="98" height="34" align="right"></A>
		</tr>
				
</table>

</div>

</form>

</body>


</html>