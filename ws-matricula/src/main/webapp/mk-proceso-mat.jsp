<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="pe.edu.upc.dsd.ws.bean.Parent"%>
<%@page import="pe.edu.upc.dsd.ws.bean.Alumno"%>
<%@page import="java.util.List"%>
<html>
<head>
<title> Welcome to Markham College </title>
</head>

<body bgcolor= "#FFFFFF">

<font face="verdana">
<img src="images/logo.jpg" width="280" height="45"><b>MATRICULA EN LINEA 2012</b>
<div align="right">Usuario : ${parent.apPaterno} ${parent.apMaterno}, ${parent.nombre}
</div>
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

<br>
		<b><a href="mk-proceso-mat.jsp">Matrícula</a>> Proceso de Matrícula</b>
		
<br></br>

<table border="1" align="left" height="50" width="1300"> 
		
		<tr>
		<td bgcolor="#F3F781"><br><font face="verdana"><small>
		Todos los padres que en este año 2012 necesiten hacer el uso del estacionamiento interno de San Antonio, deben recoger su tarjeta de la ficina San Antonio, de 8:00 a.m. a 3:00 p.m.
		<br>Por favor, acérquese a nuestras oficinas en San Antonio para resolver los prerrequisitos pendientes.<br></br>

		Para proceder con la matrícula deberá usted confirmar o actualizar su información personal utilizando el enlace siguiente.<br></br>
		</small></font></td></tr>

</table>
		
<br></br>
<br></br>
<br></br>
<br></br>
		<b><h5>PASO: 1 ACTUALIZACIÓN DE DATOS</h5></b>



<table border="1"  bgcolor="white" height="30"> 
		
		<tr align="center">
			<th width="300"><small>ACTUALIZACION DE DATOS</small></th>
			<th width="200"><small><font color="green">PENDIENTE</font></small></th>
			<th width="250"><small><small><font color="blue">Presione aquí para actualizar</font></small></small></th>
		</tr>

</table>
<br></br>
		<b><h5>PASO: 2 MATRICULAR ESTUDIANTE</h5></b>
	

<table border="1"  bgcolor="white" height="30"> 
		
<tr align="center">
			<th width="280" bgcolor="#F5DA81"><small>Nombre de estudiante</small></th>
			<th colspan="2" aling="center" bgcolor="#F5DA81"><small>Matrícula</small></th>
</tr>

<%  
int c=0;  
%>  
<c:forEach  items="${childrenParents}" var="hijos">  

<tr>

			<th width="250"><small>${hijos.apPaterno} ${hijos.apMaterno}, ${hijos.nombre}    </small></th>
			<th width="220"><small><font color="green"><!-- NO CUMPLE PRERREQUISITOS --></font></small></th>
			<th width="250"><nobr><small><font color="green"><a href="mk-dni.jsp?s=<%= c %>">Presione aquí para iniciar matrícula </a></font><font color="blue"></font></small></nobr></th>
<% 
c++;
%>
</tr>
</c:forEach>  

		
		 

	

		
</table>
<!--  ${childrenParents[0].nombre} -->
<!-- 
${parent.codigoParent}
${parent.nombre}
${parent.apPaterno}
${parent.apMaterno}
${parent.usuario}
${parent.documentoIdentidad}
 -->





<br></br>		
<br></br>

	
</font>





<br></br>
<br></br>

</font>
</body>


</html>