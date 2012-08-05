package pe.edu.upc.dsd.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;


import pe.edu.upc.dsd.service.Service;
import pe.edu.upc.dsd.service.ws.PersonaService;
import pe.edu.upc.dsd.ws.bean.*;

public class ServiceImpl implements Service 
{
	private PersonaService personaService;

	
	
	private List<Parent> parents;
	private List<Alumno> alumnos;
	private List<AlumnoParent> alumnoParent;
	
	public ServiceImpl(){
		parents = generarParents();
		alumnos = generarAlumnos();
		alumnoParent = asignarParentstoChildren();
	}
	
	
	private List<Parent> generarParents() {
		
		List<Parent> parentsPrueba = new ArrayList<Parent>();
				
		        Parent parent1 = new Parent();
		        parent1.setCodigoParent("PAR0001");
		        parent1.setDocumentoIdentidad("10111111");
		        parent1.setApPaterno("Llanos");
		        parent1.setApMaterno("Silva");
		        parent1.setNombre("Enrique");
		        parent1.setUsuario("mat001");
		        parent1.setClave("12345");
		        
		        Parent parent2 = new Parent();
		        parent2.setCodigoParent("PAR0002");
		        parent2.setDocumentoIdentidad("10222222");
		        parent2.setApPaterno("Camarena");
		        parent2.setApMaterno("Cueva");
		        parent2.setNombre("Jorge");
		        parent2.setUsuario("mat002");
		        parent2.setClave("12345");
		  
		        parentsPrueba.add(parent1);
		        parentsPrueba.add(parent2);
			    
			    
				return parentsPrueba;
		}

	
		private List<Alumno> generarAlumnos() {
		
		List<Alumno> alumnosPrueba = new ArrayList<Alumno>();
				
				Alumno alumno1 = new Alumno();
				alumno1.setCodigoAlumno("ALU0001");
				alumno1.setApPaterno("Rozas");
				alumno1.setApMaterno("Vargas");
				alumno1.setNombre("Jorge Daniel");
				alumno1.setSeccion("S1A");
			
				Alumno alumno2 = new Alumno();
				alumno2.setCodigoAlumno("ALU0002");
				alumno2.setApPaterno("Lescano");
				alumno2.setApMaterno("Palacios");
				alumno2.setNombre("Vanessa");
				alumno2.setSeccion("S2E");
				
				Alumno alumno3 = new Alumno();
				alumno3.setCodigoAlumno("ALU0003");
				alumno3.setApPaterno("Hijar");
				alumno3.setApMaterno("Contreras");
				alumno3.setNombre("Martin");
				alumno3.setSeccion("S3A");
				
				Alumno alumno4 = new Alumno();
				alumno4.setCodigoAlumno("ALU0004");
				alumno4.setApPaterno("Vasquez");
				alumno4.setApMaterno("Salas");
				alumno4.setNombre("Jose Antonio");
				alumno4.setSeccion("S4E");
		  
				alumnosPrueba.add(alumno1);
				alumnosPrueba.add(alumno2);
				alumnosPrueba.add(alumno3);
				alumnosPrueba.add(alumno4);
				
			    
				return alumnosPrueba;
		}

	
		private List<AlumnoParent> asignarParentstoChildren() {
		
				List<AlumnoParent> parentsPrueba = new ArrayList<AlumnoParent>();
				
				AlumnoParent alumnoParent1 = new AlumnoParent();
				alumnoParent1.setCodigoAlumno("ALU0001");
				alumnoParent1.setCodigoParent("PAR0001"); // A el padre Enrique Llanos se le asigna 1 Hijo
				alumnoParent1.setCodigoFamilia("FAM0001");// A el padre Enrique Llanos se le asigna 1 Familia
				
		        
				AlumnoParent alumnoParent2 = new AlumnoParent();
				alumnoParent2.setCodigoAlumno("ALU0002");
				alumnoParent2.setCodigoParent("PAR0001"); // A el padre Enrique Llanos se le asigna otro Hijo
				alumnoParent2.setCodigoFamilia("FAM0001");// A el padre Enrique Llanos se la misma familia
				
				AlumnoParent alumnoParent3 = new AlumnoParent();
				alumnoParent3.setCodigoAlumno("ALU0003");
				alumnoParent3.setCodigoParent("PAR0002");
				alumnoParent3.setCodigoFamilia("FAM0002");
				
				AlumnoParent alumnoParent4 = new AlumnoParent();
				alumnoParent4.setCodigoAlumno("ALU0004");
				alumnoParent4.setCodigoParent("PAR0002");
				alumnoParent4.setCodigoFamilia("FAM0002");
				
			    parentsPrueba.add(alumnoParent1);
		        parentsPrueba.add(alumnoParent2);
		        parentsPrueba.add(alumnoParent3);
			    
			    
				return parentsPrueba;
		}

	
	
	
	//@Override
		public Parent obtenerParentUsuario(String usuario,String clave) {

			
			for (Parent parent : parents) 
			{
				if(parent.getUsuario().equals(usuario) && parent.getClave().equals(clave))
				{
					return parent;
				}
			}

	        return null;
		}
	
		
		public List<Alumno> obtenerHijos(String codigoParent) {
			
			List<Alumno> alumnosPrueba = new ArrayList<Alumno>();

			for (AlumnoParent alumnoPar : alumnoParent) 
			{
				if(alumnoPar.getCodigoParent().equals(codigoParent))
				{
					alumnosPrueba.add(obtenerAlumno(alumnoPar.getCodigoAlumno()));
				}
			}
			
			return alumnosPrueba;
		}
	
		
		public Alumno obtenerAlumno(String codigoAlu) {

			
			for (Alumno alumno : alumnos) 
			{
				if(alumno.getCodigoAlumno().equals(codigoAlu))
				{
					return alumno;
				}
			}

	        return null;
		}
	
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