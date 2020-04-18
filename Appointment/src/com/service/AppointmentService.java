package com.service;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.model.Appointment;

@Path("/Appointmets")
public class AppointmentService {

	Appointment appointment = new Appointment();
	
	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String getDocs() {
		return appointment.getAvilableDocs();
		//return "asdf";
	}
}
