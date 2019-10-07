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
<title>Home</title>

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
}
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
	transition: width 0.2s;
}
.searchbar:hover>.search_input {
	padding: 0 10px;
	width: 200px;
	caret-color: red;
	transition: width 0.08s;
}

.searchbar:hover>.search_icon {
	background: white;
	color: #e74c3c;
}
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
 */
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

.search {
	position: relative;
	right: 120px;
}

.profile {
	position: relative;
	right: 60px;
}
</style>

</head>
<body>

	<!--------------------------------------------------JS Check----------------------------------------------------------->

<%-- 	<%
		if (session.getAttribute("adminName") == null) {
			response.sendRedirect("LoginPage.jsp");
		}
	%> --%>


	<!--------------------------------------------------JS Check----------------------------------------------------------->


	<!--------------------------------------------------Navigation bar----------------------------------------------------------->


	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<a class="navbar-brand" href="HomePageDemo.jsp"><button
				class="btn btn-dark">
				<i class="fas fa-home">Home</i>
			</button></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					style="color: white;" href="UserServlet">User List <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					style="color: white;" href="AddProduct.jsp">Add Product <span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					style="color: white;" href="ProductServlet">Product List<span
						class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					style="color: white;" href="KidShop.jsp"><span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					style="color: white;" href="AboutAdmin.jsp">About <span
						class="sr-only">(current)</span>
				</a></li>
			</ul>

			<!-- <div class="container h-100">
				<div class="d-flex justify-content-center h-100">
					<div class="searchbar">
						<input class="search_input" type="text" name=""
							placeholder="Search..."> <a href="#" class="search_icon"><i
							class="fas fa-search"></i></a>
					</div>
				</div> -->

			<div class="search">
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>

			<form action="">
				<div class="profile">
					<button class="btn btn-outline-success">
						<i class="fas fa-user">Profile</i>
					</button>
				</div>
			</form>


			<form action="">
				<div class="Cart">
					<button class="btn btn-outline-info">
						<i class="fas fa-shopping-cart">Cart</i>
					</button>
				</div>
			</form>

			<form action="Login" method="get">
				<div class="Logout">
					<button class="btn btn-outline-danger" type="submit" value="Logout">
						<i class="fa fa-sign-out" aria-hidden="true">Logout</i>
					</button>
			</form>

		</div>
	</nav>

	<!--------------------------------------------------Navigation bar----------------------------------------------------------->

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