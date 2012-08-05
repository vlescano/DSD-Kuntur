package pe.edu.upc.dsd.service.ws;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;



import pe.edu.upc.dsd.ws.bean.Persona;



@WebService(endpointInterface="pe.edu.upc.dsd.service.ws.PersonaService")


public class PersonaServiceImpl implements PersonaService {
	
	
	
	private List<Persona> personas;
	
	public PersonaServiceImpl(){
		personas = obtenerPersona();
	}
	
	
	private List<Persona> obtenerPersona() {
			
	List<Persona> personasPrueba = new ArrayList<Persona>();
			
	        Persona persona1 = new Persona();
	        persona1.setDni("25111111");
	        persona1.setNombres("Jorge");
	        persona1.setApellidoPaterno("Rozas");
	        persona1.setApellidoMaterno("Vargas");
	        persona1.setFechaNacimiento("01/09/1977");
	  
		    personasPrueba.add(persona1);
		    
		    
		    Persona persona2 = new Persona();
		    persona2.setDni("25000000");
		    persona2.setNombres("Martin");
		    persona2.setApellidoPaterno("Hijar");
		    persona2.setApellidoMaterno("Contreras");
		    persona2.setFechaNacimiento("01/09/1977");
	  
		    personasPrueba.add(persona2);
		    
		    
		    
		    
		    Persona persona3 = new Persona();
		    persona3.setDni("26000000");
		    persona3.setNombres("Jorge");
		    persona3.setApellidoPaterno("Camarena");
		    persona3.setApellidoMaterno("Cueva");
		    persona3.setFechaNacimiento("01/09/1977");
	  
		    personasPrueba.add(persona3);
		    
		    
		    
		    Persona persona4 = new Persona();
		    persona4.setDni("27000000");
		    persona4.setNombres("Kike");
		    persona4.setApellidoPaterno("Llanos");
		    persona4.setApellidoMaterno("Silva");
		    persona4.setFechaNacimiento("01/09/1977");
	  
		    personasPrueba.add(persona4);
		    
	   
	   
	        
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
