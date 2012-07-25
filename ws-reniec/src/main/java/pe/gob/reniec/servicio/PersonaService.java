package pe.gob.reniec.servicio;

import javax.jws.WebParam;
import javax.jws.WebService;

import pe.gob.reniec.modelo.Persona;





@WebService

public interface PersonaService {
	
	public Persona obtenerPersonaDNI(@WebParam(name = "dni") String dni);	
	

	
}
