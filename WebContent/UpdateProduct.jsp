<%@page import="com.aditya.pojo.Product"%>
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

<title>Login Page</title>

<!--------------------------------------------------------Login Form css------------------------------------------------------>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

.needs-validation {
	position: absolute;
	top: 70%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 450px;
	height: 750px;
	padding: 12px 50px;
	box-sizing: border-box;
	background: black;
	border-radius: 5px;
	border: 1px solid rgba(0, 0, 0, 0.15);
}

.loginbox1 {
	position: absolute;
	top: 80%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 320px;
	height: 420px;
	padding: 5px 50px;
	box-sizing: border-box;
	background: white;
	border-radius: 5px;
	border: 1px solid rgba(0, 0, 0, 0.15);
}

label {
	color: white;
}
</style>

<!--------------------------------------------------------Login Form css----------------------------------------------------->


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
		Product p = (Product) session.getAttribute("p");
	%>

	<jsp:include page="BG.jsp"></jsp:include>


	<!--------------------------------------------------------Login Form--------------------------------------------------------->

	<form action=ProductList.jsp method="post" class="needs-validation"
		novalidate>
		<div class="form-group">

			<div align="center">
				<font color="white" size="6">Update Product</font>
			</div>
			<br>

			<div class="col-xs-3">
				<label for="validationCustom01">Product Name</label> <input
					type="text" class="form-control" id="validationCustom01"
					name="uname" placeholder="<%=p.getPName()%>" value="" required>

			</div>
			<br>

			<div class="col-xs-3">
				<label for="validationCustom01">Product Price</label> <input
					type="text" maxlength="10" class="form-control"
					id="validationCustom01" name="contact" placeholder="<%=p.getPPrice() %>"
					value="" required>

			</div>
			<br>

			<div class="col-xs-3">
				<label for="validationCustom01">Product QTY</label> <input
					type="text" class="form-control" id="validationCustom01"
					name="Email" placeholder="<%=p.getPQuantity() %>" value="" required>

			</div>
			<br>


			<div class="col-xs-3">
				<label for="validationCustom02">Product Category</label> <input
					type="text" class="form-control" id="validationCustom02"
					name="pass" placeholder="<%=p.getPCategory() %>" value="" required>

			</div>
			<br>

			<div class="col-xs-3">
				<label for="validationCustom01">Product Description</label> <input
					type="text" class="form-control" id="validationCustom01"
					name="Email" placeholder="<%=p.getPDescript() %>" value="" required>

			</div>
			<br>

			<div class="col-xs-3">
				<label for="validationCustom01">Product QTY</label> <input
					type="text" class="form-control" id="validationCustom01"
					name="Email" placeholder="<%=p.getPQuantity() %>" value="" required>

			</div>
			<br></br>

			<div align="center">
				<button class="btn btn-warning btn-sm	" type="submit">Update
					Product</button>
			</div>

		</div>

	</form>

	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>

	<!--------------------------------------------------------Login Form---------------------------------------------------------->

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