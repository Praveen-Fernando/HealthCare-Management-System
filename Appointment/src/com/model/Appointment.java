package com.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.util.DBConnect;

public class Appointment {

	DBConnect connect = new DBConnect();

	public String getAvilableDocs() {

		String output = "";
		try {
			Connection connection = connect.connect();

			if (connection == null) {
				return "Error while connecting to the database";
			}
			
			output = "<table border=\"1\">" + "<th>Doctor Name</th>" + "<th>Availability</th>";

			// Not set yet
			String query = "Select D_Name from doctor";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				String docName = resultSet.getString("D_Name");
				//String availability = resultSet.getString("Availability");
				
				output +=  "<tr><td><input id=\"docName\"name=\"docName\"type=\"hidden\" value=\"" + docName + "\">" + 
				"<a class=\"btn btn-primary\" href=\"bookAppointment.jsp\" role=\"button\">Avilable</a>" + "</td></tr>";
				
				
			}
			
			connection.close();
			
			output += "</table>";
			
		} catch (Exception e) {
			// TODO: handle exception
			//System.out.println("Error while connecting to the database " + e);

			//System.err.println(e.getMessage());
		}
		return output;

	}

	/*
	public String setAppointment() {
		
	}
	
	public String updateAppointment() {
		
	}
	
	public String calcelAppointment() {
		
	}
	*/
}
