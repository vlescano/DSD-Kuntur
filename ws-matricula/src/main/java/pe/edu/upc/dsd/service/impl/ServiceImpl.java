package pe.edu.upc.dsd.service.impl;

import java.util.List;
import java.util.Random;

import pe.edu.upc.dsd.service.Service;
import pe.edu.upc.dsd.service.ws.PersonaService;
import pe.edu.upc.dsd.ws.bean.*;

public class ServiceImpl implements Service 
{
	private PersonaService personaService;

	/**
	 * @see pe.edu.upc.dsd.service.Service#buscarPersona(java.lang.String)
	 */
	//@Override
	public Persona obtenerPersona(String dni) 
	{
		return personaService.obtenerPersonaDNI(dni);
	}

	/**
	 * @param almacenService the almacenService to set
	 */
	public void setPersonaService(PersonaService personaService) 
	{
		this.personaService = personaService;
	}
	
	
}