package com.ganesh.online.rs;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

import com.ganesh.online.ws.StudentTO;
import com.ganesh.online.ws.Students;
import com.ganesh.online.ws.dao.DAOFactory;

@Path("/student/")
public class StudentService {
	@GET
	@Path("/getall")
	public Students getAllStudent(){
		Students studs= new Students();
		studs.setStudent(DAOFactory.getStudentDAO().getAllStudents());
		return studs;		
	}
	
	@GET
	@Path("/getbyid/{id}")
	public StudentTO getStudent(@PathParam(value="id") int id){
		return DAOFactory.getStudentDAO().getStudent(id);
	}
	
	@POST
	@Path("/add/{name}/{email}/{phone}")
	public void addStudent(@PathParam(value="name") String name,@PathParam(value="email") String email,@PathParam(value="phone") long phone){
		DAOFactory.getStudentDAO().addStudent(name, email, phone);		
	}
}
