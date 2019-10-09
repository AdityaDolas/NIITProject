<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<!doctype html>
<%@page import="com.aditya.pojo.Product"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%
	String username = (String) session.getAttribute("username");
	String name = (String) session.getAttribute("name");
	String adminName = (String) session.getAttribute("adminName");
%>

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
.Logout {
	position: relative;
}

.Cart {
	position: relative;
	right: 30px;
}

.Para {
	background-color: #EFEFEF;
}

.search {
	position: relative;
	right: 120px;
}

.profile {
	position: relative;
	right: 60px;
}

.women {
	position: relative;
	left: 10px;
}

.kids {
	position: relative;
	left: 20px;
}

.about {
	position: relative;
	left: 30px;
}
</style>

</head>
<body>

	<!--------------------------------------------------JS Check----------------------------------------------------------->

	<%
		if (session.getAttribute("username") == null) {
			response.sendRedirect("LoginPage.jsp");
		}
	%>

	<%
		List<Product> al = (List<Product>) session.getAttribute("plist");
	%>


	<!--------------------------------------------------JS Check----------------------------------------------------------->


	<!--------------------------------------------------Navigation bar----------------------------------------------------------->


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
				<div class="men">
					<form action="ProductServlets" method="get">
						<li class="nav-item active"><input type="submit" name="men"
							value="Men" class="nav-link"> <span class="sr-only">(current)</span>
							</a></input></li>
					</form>
				</div>

				<div class="women">
					<form action="ProductServlets" method="get">
						<li class="nav-item active"><input type="submit" name="women"
							value="Women" class="nav-link"> <span class="sr-only">(current)</span>
							</a></input></li>
					</form>
				</div>

				<div class="kids">
					<form action="ProductServlets" method="get">
						<li class="nav-item active"><input type="submit" name="kid"
							value="Kids" class="nav-link"> <span class="sr-only">(current)</span>
							</a></input></li>
					</form>
				</div>

				<div class="about">
					<form action="About.jsp">
						<li class="nav-item active"><input type="submit" name="about"
							value="About" class="nav-link"> <span class="sr-only">(current)</span>
							</a></input></li>
					</form>
				</div>

			</ul>


			<div class="search">
				<form action="ProductServlet" method="get"
					class="form-inline my-2 my-lg-0">

					<input class="form-control mr-sm-2" type="search"
						name="searchProduct" placeholder="Search" aria-label="Search">

					<button name="search" class="btn btn-outline-dark my-2 my-sm-0"
						type="submit">Search</button>

				</form>
			</div>

			<%
				if (username != null) {
			%>

			<div class="profile">
				<div class="btn-group">
					<button type="button"
						class="btn btn-outline-success dropdown-toggle"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-user">Profile</i>
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#"> <span>Hi, ${name}</span></a>
					</div>
				</div>
			</div>

			<%
				}
			%>

			<%
				if (username != null) {
			%>
			<form action="CartServlet">
				<div class="Cart">
					<button class="btn btn-outline-info">
						<i class="fas fa-shopping-cart">Cart</i>
					</button>
				</div>
			</form>
			<%
				}
			%>

			<%
				if (username != null) {
			%>
			<form action="Login" method="get">
				<div class="Logout">
					<button class="btn btn-outline-danger" type="submit" value="Logout">
						<i class="fa fa-sign-out" aria-hidden="true">Logout</i>
					</button>
			</form>
			<%
				}
			%>

			<%
				if (username == null) {
			%>
			<form action="LoginPage.jsp">
				<div class="Login">
					<button class="btn btn-outline-success" type="submit" value="Login">
						<i class="fa fa-sign-out" aria-hidden="true">Login</i>
					</button>
			</form>
			<%
				}
			%>

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