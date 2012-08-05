package pe.gob.reniec.servicio;
import static org.junit.Assert.*;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



import pe.edu.upc.dsd.service.ws.PersonaService;
import pe.edu.upc.dsd.ws.bean.Persona;


public class PersonaServiceTest {
	
	PersonaService service;
	
	public PersonaServiceTest(){
		ApplicationContext reniec = new ClassPathXmlApplicationContext("/reniec-test.xml");
		
		service = reniec.getBean("personaService",PersonaService.class);		
	}
		
	@Test
	
	public void consultarDNI(){
	Persona	persona = service.obtenerPersonaDNI("25000000");
	assertNotNull(persona);	
	//Se Encontr— un DNI
		
	}
	
	@Test

	public void verificarDNIEncontrado(){
	Persona	persona = service.obtenerPersonaDNI("25000000");
	 assertEquals(persona.getDni(), "25000000");
	//El DNI Encontrado corresponde al solicitado
		
	}
	
	
	

}
