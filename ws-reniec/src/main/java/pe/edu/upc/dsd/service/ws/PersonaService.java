package pe.edu.upc.dsd.service.ws;

import javax.jws.WebParam;
import javax.jws.WebService;

import pe.edu.upc.dsd.ws.bean.Persona;





@WebService

public interface PersonaService {
	
	public Persona obtenerPersonaDNI(@WebParam(name = "dni") String dni);	
	

	
}
