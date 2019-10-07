<%@page import="com.aditya.pojo.User"%>
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

<title>Place Order</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.active, .accordion:hover {
	background-color: #ccc;
}

.accordion:after {
	content: '\002B';
	color: #777;
	font-weight: bold;
	float: right;
	margin-left: 5px;
}

.active:after {
	content: "\2212";
}

.panel {
	padding: 0 18px;
	background-color: white;
	max-height: 0;
	overflow: hidden;
	transition: max-height 0.2s ease-out;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.container {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
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


	<!--------------------------------------------------JS Check----------------------------------------------------------->

	<jsp:include page="UNavbar.jsp"></jsp:include><br>

	<%
		User u = (User) session.getAttribute("u");
	%>

	<!--------------------------------------------------JS Check----------------------------------------------------------->



	<div class="container">
		<h2>Place Order</h2>

		<button class="accordion">1 Delivery Address</button>

		<div class="panel">
			<br>
			<form class="needs-validation" novalidate>
				<div class="form-row">

					<div class="col-md-4 mb-3">
						<label for="validationTooltip01">Name</label> <input type="text"
							name="name" class="form-control" id="validationTooltip01"
							value="${name }" required>
						<div class="valid-tooltip">Looks good!</div>
					</div>

					<div class="col-md-4 mb-3">
						<label for="validationTooltip02">Mobile Number</label> <input
							type="text" class="form-control" id="validationTooltip02"
							name="contact" maxlength="10" value="${contact }" required>
						<div class="valid-tooltip">Looks good!</div>
					</div>

					<div class="col-md-4 mb-3">
						<label for="validationTooltipUsername">Username</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"
									id="validationTooltipUsernamePrepend">@</span>
							</div>
							<input type="text" class="form-control"
								id="validationTooltipUsername" value="${username }"
								name="username"
								aria-describedby="validationTooltipUsernamePrepend" required>
							<div class="invalid-tooltip">Please choose a unique and
								valid username.</div>
						</div>
					</div>

				</div>

				<div class="form-row">

					<div class="col-md-6 mb-3">
						<label for="validationTooltip03">City</label> <input type="text"
							class="form-control" id="validationTooltip03" placeholder="City"
							name="city" required>
						<div class="invalid-tooltip">Please provide a valid city.</div>
					</div>

					<div class="col-md-3 mb-3">
						<form class="form-inline">
							<label class="my-1 mr-2" for="inlineFormCustomSelectPref">State</label>
							<select class="custom-select my-1 mr-sm-2" name="state">
								<option>Andhra Pradesh</option>
								<option>Arunachal Pradesh</option>
								<option">Assam</option>
								<option>Bihar</option>
								<option>Chhattisgarh</option>
								<option>Goa</option>
								<option>Gujarat</option>
								<option>Haryana</option>
								<option>Himachal Pradesh</option>
								<option>Jammu and Kashmir</option>
								<option>Jharkhand</option>
								<option>Karnataka</option>
								<option>Kerala</option>
								<option>Madhya Pradesh</option>
								<option selected>Maharashtra</option>
								<option>Manipur</option>
								<option>Meghalaya</option>
								<option>Mizoram</option>
								<option>Nagaland</option>
								<option>Odisha</option>
								<option>Punjab</option>
								<option>Rajasthan</option>
								<option>Sikkim</option>
								<option>Tamil Nadu</option>
								<option>Telangana</option>
								<option>Tripura</option>
								<option>Uttar Pradesh</option>
								<option>Uttarakhand</option>
								<option>West Bengal</option>

							</select>
						</form>
					</div>

					<div class="col-md-3 mb-3">
						<label for="validationTooltip05">Pinecode</label> <input
							type="text" class="form-control" id="validationTooltip05"
							name="pinecode" placeholder="Pinecode" required>
						<div class="invalid-tooltip">Please provide a valid zip.</div>
					</div>

				</div>

				<div class="form-row"></div>

				<form action="AddressServlet" method="post">
					<button class="btn btn-success" type="submit">Save</button>
				</form>


			</form>
		</div>
		<br>

		<button class="accordion">2 Order Summary</button>
		<div class="panel"><br>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat.</p>
		</div><br>

		<button class="accordion">3 Payment Options</button>
		<div class="panel">
			<div>
				<div class="row">
					<div class="col-75">
						<div class="container">
							<form action="/action_page.php">

								<div class="row">
									<div class="col-50">
										<h3>Billing Address</h3>
										<label for="fname"><i class="fa fa-user"></i> Full
											Name</label> <input type="text" id="fname" name="firstname"
											placeholder="John M. Doe"> <label for="email"><i
											class="fa fa-envelope"></i> Email</label> <input type="text"
											id="email" name="email" placeholder="john@example.com">
										<label for="adr"><i class="fa fa-address-card-o"></i>
											Address</label> <input type="text" id="adr" name="address"
											placeholder="542 W. 15th Street"> <label for="city"><i
											class="fa fa-institution"></i> City</label> <input type="text"
											id="city" name="city" placeholder="New York">

										<div class="row">
											<div class="col-50">
												<label for="state">State</label> <input type="text"
													id="state" name="state" placeholder="NY">
											</div>
											<div class="col-50">
												<label for="zip">Zip</label> <input type="text" id="zip"
													name="zip" placeholder="10001">
											</div>
										</div>
									</div>

									<div class="col-50">
										<h3>Payment</h3>
										<label for="fname">Accepted Cards</label>
										<div class="icon-container">
											<i class="fa fa-cc-visa" style="color: navy;"></i> <i
												class="fa fa-cc-amex" style="color: blue;"></i> <i
												class="fa fa-cc-mastercard" style="color: red;"></i> <i
												class="fa fa-cc-discover" style="color: orange;"></i>
										</div>
										<label for="cname">Name on Card</label> <input type="text"
											id="cname" name="cardname" placeholder="John More Doe">
										<label for="ccnum">Credit card number</label> <input
											type="text" id="ccnum" name="cardnumber"
											placeholder="1111-2222-3333-4444"> <label
											for="expmonth">Exp Month</label> <input type="text"
											id="expmonth" name="expmonth" placeholder="September">

										<div class="row">
											<div class="col-50">
												<label for="expyear">Exp Year</label> <input type="text"
													id="expyear" name="expyear" placeholder="2018">
											</div>
											<div class="col-50">
												<label for="cvv">CVV</label> <input type="text" id="cvv"
													name="cvv" placeholder="352">
											</div>
										</div>
									</div>

								</div>
								<label> <input type="checkbox" checked="checked"
									name="sameadr"> Shipping address same as billing
								</label> <input type="submit" value="Continue to checkout" class="btn">
							</form>
						</div>
					</div>

					<div class="col-25">
						<div class="container">
							<h4>
								Cart <span class="price" style="color: black"> <i
									class="fa fa-shopping-cart"></i> <b>4</b>
								</span>
							</h4>
							<p>
								<a href="#">Product 1</a> <span class="price">$15</span>
							</p>
							<p>
								<a href="#">Product 2</a> <span class="price">$5</span>
							</p>
							<p>
								<a href="#">Product 3</a> <span class="price">$8</span>
							</p>
							<p>
								<a href="#">Product 4</a> <span class="price">$2</span>
							</p>
							<hr>
							<p>
								Total <span class="price" style="color: black"><b>$30</b></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>






	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.maxHeight) {
					panel.style.maxHeight = null;
				} else {
					panel.style.maxHeight = panel.scrollHeight + "px";
				}
			});
		}
	</script>


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