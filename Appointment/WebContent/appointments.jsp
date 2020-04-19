<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Appointment"%>

<%	

	if (request.getParameter("userId") != null) {

		Appointment appointment = new Appointment();

		String stsMsg = "";

		

		//Insert--------------------------

		if (request.getParameter("hidAppoIdSave") == "") {

			stsMsg = appointment.setAppointment(request.getParameter("userId"),

					request.getParameter("docId"), request

							.getParameter("hospId"), request

							.getParameter("docSpec"), request

							.getParameter("date"));

		} else//Update----------------------

		{

			stsMsg = appointment.updateAppointment(request.getParameter("userId"),

					request.getParameter("docId"), request

							.getParameter("hospId"), request

							.getParameter("docSpec"), request

							.getParameter("date"));

		}

		session.setAttribute("statusMsg", stsMsg);

	}

	//Delete--------------------------------

	if (request.getParameter("hidAppoIdDelete") != null) {

		Appointment appointment = new Appointment();

		String stsMsg = appointment.calcelAppointment(
				request.getParameter("hidAppoIdDelete"));

		session.setAttribute("statusMsg", stsMsg);

	}

%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="Components/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="Components/main.js"></script>

</head>

<body>

<h1>Appointments</h1>

	<div class="container-fluid">
		<form id="booingForm" name="booingForm" method="post" action="appointments.jsp">
			<div class="form-group">
				<label for="userId">Patient ID</label> <input type="number"
					class="form-control" id="userId" required="required">
			</div>
			<div class="form-group">
				<label for="docId">Doctor ID</label> <input type="number"
					class="form-control" id="docId" required="required">
			</div>
			<div class="form-group">
				<label for="docSpec">Doctor Specialization</label> <input
					type="text" class="form-control" id="docSpec" required="required">
			</div>
			<div class="form-group">
				<label for="hospId">Hospital ID</label> <input type="number"
					class="form-control" id="hospId" required="required">
			</div>
			<div class="form-group">
				<label for="date">date</label> <input type="date"
					class="form-control" id="date" required="required">
			</div>
			<button class="btn btn-primary" name="bookingBtn" id="bookingBtn">Book
				Now</button>
				<input type="hidden" id="hidAppoIdSave" name="hidAppoIdSave" value="">
		</form>
	</div>
	
	<div id="alterSuccess" class="alter alter-success">
		<%
			out.print(session.getAttribute("statusMsg"));
		%>
	</div>
	<div id="alterError" class="alter alter-danger"></div>

	<div class="container-fluid">
		<%
			Appointment appointment = new Appointment();
			out.print(appointment.readAppointments());
		%>
	</div>
</body>
</html>