<%@page import="com.aditya.pojo.User"%>
<%@page import="com.aditya.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  
    <jsp:include page="UNavbar.jsp"></jsp:include><br>

	<%
		List<Cart> li = (List<Cart>) session.getAttribute("CartList");
	%>

	<%
		User u = (User) session.getAttribute("u");
		String qty = (String) session.getAttribute("qty");
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-xs-12">


				<div class="row">
					<div class="col-xs-6">
						<h2>Invoice</h2>
					</div>
					<div class="col-xs-6 text-right">
						<h2>Order #1</h2>
					</div>
				</div>
				
				<div class="row">
					<div class="col-xs-6">
						<address>
							<strong>Billed To:</strong><br> <a>${name }</a><br>
							1234 Main<br> Apt. 4B<br> Springfield, ST 54321
						</address>
					</div>
					<div class="col-xs-6 text-right">
						<address>
							<strong>Shipped To:</strong><br> <a>${name}</a><br>
							1234 Main<br> Apt. 4B<br> Springfield, ST 54321
						</address>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6">
						<address>
							<strong>Contact</strong><br> <a>${username}</a><br>
						</address>
					</div>
					<div class="col-xs-6 text-right">
						<address>
							<strong>Order Date:</strong><br> March 7, 2014<br> <br>
						</address>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>Order summary</strong>
						</h3>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
									<tr>
										<td><strong>Item</strong></td>
										<td class="text-center"><strong>Price</strong></td>
										<td class="text-center"><strong>Quantity</strong></td>
										<td class="text-right"><strong>Totals</strong></td>
									</tr>
								</thead>
								<tbody>

									<%
										int totalPrice = 0;
										for (Cart p : li) {
											totalPrice += p.getPrice();
									%>

									<!-- foreach ($order->lineItems as $line) or some such thing here -->
									<tr>
										<td><%=p.getPname()%></td>
										<td class="text-center"><%=p.getPrice()%></td>
										<td class="text-center"><%=qty%></td>
										<td class="text-right"><%=totalPrice%></td>
									</tr>

									<%
										}
									%>

								</tbody>

							</table>

							<div class="Print" align="center">
								<button onclick="myFunction()" class="btn btn-success">
									<i class="fas fa-shopping-cart">Print</i>
								</button>

								<script>
									function myFunction() {
										window.print();
									}
								</script>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>