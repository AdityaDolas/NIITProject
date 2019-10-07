<%@page import="com.aditya.pojo.User"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>User List</title>

<style type="text/css">
.con {
	
}
</style>

</head>
<body>

	<!--------------------------------------------------JS Check----------------------------------------------------------->

	<%
		if (session.getAttribute("adminName") == null) {
			response.sendRedirect("LoginPage.jsp");
		}
	%>


	<!--------------------------------------------------JS Check----------------------------------------------------------->




	<%
		List<User> al = (List<User>) session.getAttribute("ulist");
	%>

	<jsp:include page="BG.jsp"></jsp:include>

	<jsp:include page="ANavbar.jsp"></jsp:include>

	<div class="con">
		<table class="table table-dark">
			<thead>

				<tr>
					<th scope="col">#</th>
					<th scope="col">Name</th>
					<th scope="col">Contact</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th scope="col">Action</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
					int no = 1;
					for (User u : al) {
				%>
				<tr>
					<th scope="row"><%=no++%></th>
					<td><%=u.getName()%></td>
					<td><%=u.getContact()%></td>
					<td><%=u.getEmail()%></td>
					<td><%=u.getPassword()%></td>

					<td><a href="UserServlet?action=edit&email=<%=u.getEmail()%>">
							<button class="btn btn-warning btn-sm" name="edit" type="submit">Edit</button>
					</a></td>
					<td><a
						href="UserServlet?action=delete&email=<%=u.getEmail()%>">
							<button class="btn btn-danger btn-sm" name="delete" type="submit">Delete</button>
					</a></td>

				</tr>
				<!-- <tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>123</td>
					<td><a href="UpdateUserList.jsp">
							<button class="btn btn-warning btn-sm" type="submit">Edit</button></td>
					<td>
						<button class="btn btn-danger btn-sm" type="submit">Delete</button>
					</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>123</td>
					<td><a href="UpdateUserList.jsp">
							<button class="btn btn-warning btn-sm" type="submit">Edit</button></td>
					<td>
						<button class="btn btn-danger btn-sm" type="submit">Delete</button>
					</td>
				</tr> -->
			</tbody>
			<%
				}
			%>
		</table>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>