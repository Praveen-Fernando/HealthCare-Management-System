<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript" src="./Components/Hospital.js"></script>

</head>
<body>
<a href="ItemService/Appointments">click</a>
	<!-- <div class="container-fluid">
		<form action="Appointment.jsp" method="post" name="getAvilableDocs">
			<div class="form-group">
				<label for="docName">Doctor Name</label> <input type="text"
					class="form-control" id="docName" placeholder="Doctor Name">
			</div>
			<div class="form-group">
				<label for="docSpec">Specialization - Description</label> <select
					class="form-control" id="docSpec">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
			<div class="form-group">
				<label class="form-check-label" for="date">Date</label> <input
					type="date" class="form-control" id="date" placeholder="Date">
			</div>
			<div class="form-group">
				<div class="form-group">
					<label for="hospital">Hospital</label> <select class="form-control"
						id="hospital">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
	</div> -->

	<div class="container-fluid">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Doctor Name</th>
					<th scope="col">Avilability</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>