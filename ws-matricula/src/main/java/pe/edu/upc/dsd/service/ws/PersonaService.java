package pe.edu.upc.dsd.service.ws;

import javax.jws.WebParam;
import javax.jws.WebService;

import pe.edu.upc.dsd.ws.bean.Persona;

@WebService
public interface PersonaService 
{
	/**
     * Obtiene la consulta  de Stock
     * 
     * @param codigoProducto
	 * @return 
     * @return
     */
	public Persona obtenerPersonaDNI(@WebParam(name = "dni") String dni);
}