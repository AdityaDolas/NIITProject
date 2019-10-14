<%@page import="com.aditya.pojo.Cart"%>
<%@page import="java.util.List"%>
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

	<%
		List<Cart> li = (List<Cart>) session.getAttribute("CartList");
	%>


	<!--------------------------------------------------JS Check----------------------------------------------------------->

	<jsp:include page="UNavbar.jsp"></jsp:include><br>

	<%
		User u = (User) session.getAttribute("u");
		String order = (String) session.getAttribute("orders");
		String totalPrice1 = (String) session.getAttribute("totalPrice");
		String d = (String) session.getAttribute("d");
		
	%>

	<!--------------------------------------------------JS Check----------------------------------------------------------->

	<div class="container">
		<button style="align-content: center;" class="accordion">Click
			For Payment</button>
		<div class="panel">
			<div>
				<div class="row">
					<div class="col-75">
						<div class="container">
							<form action="AddressServlet" method="post">

								<div class="row">
									<div class="col-50">
										<h3>Billing Address</h3>

										<label for="fname"><i class="fa fa-user"></i> Name</label> <input
											type="text" id="fname" name="name" value="${name}"> <label
											for="email"><i class="fa fa-envelope"></i> Email</label> <input
											type="text" id="email" name="username" value="${username }">

										<label for="adr"><i class="fa fa-address-card-o"></i>
											Address</label> <input type="text" id="adr" name="contact"
											placeholder="542 W. 15th Street"> <label for="city"><i
											class="fa fa-institution"></i> City</label> <input type="text"
											id="city" name="city" placeholder="Mumbai">

										<div class="row">
											<div class="col-50">
												<label for="state">State</label> <select
													class="custom-select my-1 mr-sm-2" name="state">
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
											</div>

											<div class="col-50">
												<label for="zip">PineCode</label> <input type="text"
													id="zip" name="pinecode" placeholder="400700">
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
									class="fa fa-shopping-cart"></i> <b></b>
								</span>
							</h4>
							<%
							
								int totalPrice = 0;							
								
								for (Cart p : li) {
									totalPrice += p.getPrice();
							%>
							<p>
								<a href="#"><%=p.getPname()%></a> <span class="price"
									id="tot<%=p.getPid()%>" class="totalPrice"><%=request.getAttribute("d") %></span>
							</p>
							<%
								}
							%>
							<hr>
							<p>
								Total <span class="price" style="color: black"><b
									id="finalTotal"></b><%=request.getAttribute("totalPrice") %></span>
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

	<!-- <script>
		function updateTotalPrice(quantity,id){
			
			//console.log("price = " + document.getElementById("price").innerHTML);
			
			console.log('q'+quantity);
			console.log('p'+id);
			 let getprice = parseFloat(document.getElementById("pri"+id).innerHTML);
			 let totalPrice = parseFloat(quantity)*getprice;
			 let TPid = 'tot'+id;
			 console.log(TPid);
			 let v = document.getElementById(TPid);
			 v.innerHTML = totalPrice;
			
			 let totalPrices = document.getElementsByClassName('totalPrice');
			 
			 let finalTotal = 0;
			 for(price of totalPrices){
				 let p = price.innerHTML;
				 if(p!=''){
				 	p=parseInt(p);
				 console.log(typeof(p));
				 finalTotal += parseInt(p);
				 }
			 }
				 
				 //finalTotal += parseLong(price.innerHTML);
			console.log("finalTotal = " + finalTotal)
			document.getElementById("finalTotal").innerHTML = finalTotal;
			
		}
		
	</script> -->




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