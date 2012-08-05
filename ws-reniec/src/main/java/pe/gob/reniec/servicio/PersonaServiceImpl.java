package pe.gob.reniec.servicio;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;



import pe.gob.reniec.modelo.Persona;



@WebService(endpointInterface="pe.gob.reniec.servicio.PersonaService")


public class PersonaServiceImpl implements PersonaService {
	
	
	
	private List<Persona> personas;
	
	public PersonaServiceImpl(){
		personas = obtenerPersona();
	}
	
	
	private List<Persona> obtenerPersona() {
			
	List<Persona> personasPrueba = new ArrayList<Persona>();
			
	        Persona persona1 = new Persona();
	        persona1.setDni("25000000");
	        persona1.setNombres("Jorge");
	        persona1.setApellidoPaterno("Romero");
	        persona1.setApellidoMaterno("Pizarro");
	        persona1.setFechaNacimiento("01/09/2000");
	  
		    personasPrueba.add(persona1);
	   
	        
			return personasPrueba;
	}



	//@Override
	public Persona obtenerPersonaDNI(String dni) {

		
		for (Persona persona : personas) 
		{
			if(persona.getDni().equals(dni))
			{
				return persona;
			}
		}

        return null;
	}

}
