package com.resource;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.model.Appointment;

@Path("/Appointments")
public class AppointmentResource {
	Appointment appointment = new Appointment();
	
	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String getAvilableDocs() {
		return appointment.getAvilableDocs();
	}
	
	
	
}
