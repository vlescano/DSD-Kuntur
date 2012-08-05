package pe.edu.upc.dsd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.junit.runner.notification.StoppedByUserException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import org.springframework.web.servlet.view.RedirectView;


import pe.edu.upc.dsd.service.Service;
import pe.edu.upc.dsd.ws.bean.Alumno;
import pe.edu.upc.dsd.ws.bean.AlumnoParent;
import pe.edu.upc.dsd.ws.bean.Parent;
import pe.edu.upc.dsd.ws.bean.Persona;




public class LoginController extends AbstractController 
{
	private static final Logger logger = Logger.getLogger(LoginController.class);
	
	private static final String VISTA_LOGIN = "mk-ingreso";
	private static final String VISTA_LOGIN_ING = "mk-proceso-mat";
	private static final String PARAMETRO_ACCION = "accion";
	private static final String PARAMETRO_USUARIO = "txtUsuario";
	private static final String PARAMETRO_PASSWORD = "txtPassword";
	
	private static final String ACCION_BUSCAR = "validar";
	
	
	private Service service;
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.debug("Accion es: " + request.getParameter(PARAMETRO_ACCION));
		
		if(esAccionBuscar(request))
		{
			logger.debug("Obtenemos el criterio de busqueda...");
			
			
			String usuario = request.getParameter(PARAMETRO_USUARIO);
			String password = request.getParameter(PARAMETRO_PASSWORD);
			
			logger.debug("Se validan los usuario: Usuario='" + usuario + "' Password : '"+password+"'");
			
			String mensaje = validarUsuario(usuario,password,request);
			setAttributeToModel(request, "usuario", mensaje);
			
			
			if(mensaje=="")
				return new ModelAndView(VISTA_LOGIN_ING, getModel(request));
			else
				return new ModelAndView(VISTA_LOGIN, getModel(request));
		}
		
		
		return new ModelAndView(VISTA_LOGIN);
		
		
	}

	private void setAttributeToModel(HttpServletRequest request, String name, Object value)
	{
		getModel(request).put(name, value);
	}
	
	@SuppressWarnings("unchecked")
	private Map<String, Object> getModel(HttpServletRequest request)
	{
		Map<String, Object> model = (Map<String, Object>) request.getSession().getAttribute("model");
		
		if(model == null)
		{
			model = new HashMap<String, Object>();
			request.getSession().setAttribute("model", model);
			
			return model;
		}
		
		return model;
	}
	
	/**
	 * @param codigo
	 * @return
	 */
	
	private Persona buscarPersona(String dni)
	{
		
		Persona persona = service.obtenerPersona(dni);
			
		return persona;
	}
	
	
	private String validarUsuario(String usuario,String password,HttpServletRequest request)
	{
		
		String mensaje="";
		Parent parent = service.obtenerParentUsuario(usuario, password);
		
		if(parent == null) mensaje = "Usuario o Clave incorrectos!";
		else{
			asignarSessionParents(request,parent);
			
			List<Alumno> childrenParents = new ArrayList<Alumno>();
			childrenParents = service.obtenerHijos(parent.getCodigoParent());
			asignarSessionHijos(request,childrenParents);
			
			for (Alumno alumnoListaTemp : childrenParents) 
			{
				logger.debug("Los Hijos ='" + alumnoListaTemp.getNombre() + "'");
			}
			
			
		}
		return mensaje;
	}
	
	private boolean esAccionBuscar(HttpServletRequest request)
	{
		return ACCION_BUSCAR.equals(request.getParameter(PARAMETRO_ACCION));
	}
	/**
	 * @param service
	 */
	public void setService(Service service)
	{
		this.service = service;
	}
	
	
	private  void asignarSessionParents(HttpServletRequest request,Parent parent)
	{
		request.getSession().setAttribute("parent", parent);
	}
	private  void asignarSessionHijos(HttpServletRequest request,List<Alumno> childrenParents)
	{
		request.getSession().setAttribute("childrenParents", childrenParents);
	}
	
	
}