package pe.gob.reniec.servicio;
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
	Persona	persona = service.obtenerPersonaDNI("25839646");
	assertNotNull(persona);	
	//El DNI Ingresado es el correcto
		
	}
		
	
	
	

}
