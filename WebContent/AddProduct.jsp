<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
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
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Add Product</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/1ec4cb2dda.js"></script>
<style type="text/css">

/* <!----------------------------------------------Search bar--------------------------------------------------------------> */
/* body, html {
	height: 100%;
	width: 100%;
	margin: 0;
	padding: 0;
	background: #e74c3c !important;
} */
.searchbar {
	margin-bottom: auto;
	margin-top: auto;
	height: 30px;
	background-color: #353b48;
	border-radius: 30px;
	padding: 2px;
	position: relative;
	left: 200px;
}

.search_input {
	color: white;
	border: 0;
	outline: 0;
	background: none;
	width: 0;
	caret-color: transparent;
	line-height: 20px;
	transition: width 0.2s linear;
	right: 0;
}

/* .searchbar:hover>.search_input {
	padding: 0 10px;
	width: 200px;
	caret-color: red;
	transition: width 0.08s linear;
} */

/* .searchbar:hover>.search_icon {
	background: white;
	color: #e74c3c;
} */
.search_icon {
	height: 25px;
	width: 25px;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	color: white;
}

.Logout {
	position: relative;
}

.Cart {
	position: relative;
	right: 30px;
}

.Para {
	background-color: #2D2D2D;
}

/* <!----------------------------------------------Search bar--------------------------------------------------------------> */
</style>

<!-- <script type="text/javascript">
	$(function() {
		$('.carousel-inner').carousel({
			interval : 1000 * 3
		// 1000 x 1 = 1 second
		});
	});
</script> -->


<!--------------------------------------------------------Login Form css------------------------------------------------------>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

.needs-validation {
	position: absolute;
	top: 80%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 1000px;
	height: 800px;
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
	height: 500px;
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


	<!--------------------------------------------------Navigation bar----------------------------------------------------------->

	<jsp:include page="BG.jsp"></jsp:include>

	<jsp:include page="ANavbar.jsp"></jsp:include>

	<!--------------------------------------------------Navigation bar----------------------------------------------------------->


	<!--------------------------------------------------------Login Form--------------------------------------------------------->

<div>
	<form action="ProductServlet" method="post" class="needs-validation"
		novalidate>

		<div align="center">
			<font color="white" size="6">Add Product</font>
		</div>
		<br></br>

		<div class="form-group">
			<div class="form-group row">
				<label for="inputPassword" class="col-sm-2 col-form-label">Product
					Name:</label>
				<div class="col-sm-10">
					<input type="text" name="pname" class="form-control"
						id="inputPassword" required>
				</div>
			</div>
			<br>

			<div class="form-group row">
				<label for="inputPassword" class="col-sm-2 col-form-label">Product
					Price:</label>
				<div class="col-sm-10">
					<input type="text" name="pprice" class="form-control"
						id="inputPassword" required>
				</div>
			</div>
			<br>

			<div class="form-group row">
				<label for="inputPassword" class="col-sm-2 col-form-label">Product
					Quantity:</label>
				<div class="col-sm-10">
					<input type="text" name="pqty" class="form-control"
						id="inputPassword" required>
				</div>
			</div>
			<br> <br>

			<div class="form-group row">
				<label for="inputPassword" class="col-sm-2 col-form-label">Category:</label>
				<div class="col-sm-10">
					<select class="form-control" name="category">
						<option>Men</option>
						<option>Women</option>
						<option>Kids</option>
					</select>
				</div>
			</div>
			<br>

			<div class="form-group row">
				<label for="inputPassword" class="col-sm-2 col-form-label">Product
					Category:</label>
				<div class="col-sm-10">
					<select class="form-control" name="pcategory">
						<option>Shoes</option>
						<option>Cloth's</option>
						<option>Other</option>
					</select>
				</div>
			</div>
			<br>

			<div class="form-group row">
				<label for="inputPassword" class="col-sm-2 col-form-label">Product
					Description:</label>
				<div class="col-sm-10">
					<textarea class="form-control" name="pdescript" rows="5"
						id="comment" required></textarea>
				</div>
			</div>
			<br></br>

			<div align="center">
				<button class="btn btn-warning btn-sm" type="submit">Add
					Product</button>
			</div>
		</div>
	</form>
	</div><br>
	
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

	<script type="text/javascript">
		$('#pimage')
				.change(
						function() {
							var frm = new FormData();
							frm.append('pimage', input.files[0]);
							$
									.ajax({
										method : 'POST',
										address : 'E:\Programming\Projects\Online_Shopping\WebContent\ProductIMG',
										data : frm,
										contentType : false,
										processData : false,
										cache : false
									});
						});
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