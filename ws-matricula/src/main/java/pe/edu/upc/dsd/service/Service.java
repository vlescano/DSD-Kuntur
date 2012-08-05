package pe.edu.upc.dsd.service;

import java.util.List;

import pe.edu.upc.dsd.ws.bean.Alumno;
import pe.edu.upc.dsd.ws.bean.Parent;
import pe.edu.upc.dsd.ws.bean.Persona;



public interface Service 
{

	/**
	 * Obtiene el cliente segun su codigo.
	 * 
	 * @param dni
	 * @return
	 */
	
	Persona obtenerPersona(String dni);
	
	Parent obtenerParentUsuario(String usuario,String clave);
	
	List<Alumno> obtenerHijos(String codigoParent);
	
	
}