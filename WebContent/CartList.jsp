<%@page import="com.aditya.pojo.Cart"%>
<%@page import="com.aditya.pojo.Product"%>
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

<title>Cart List</title>

<style type="text/css">
.con {
	
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



	<%
		List<Cart> li = (List<Cart>) session.getAttribute("CartList");
	%>

	<%-- <jsp:include page="BG.jsp"></jsp:include> --%>

	<jsp:include page="UNavbar.jsp"></jsp:include>

	<div class="con">
		<form action="CartServlet" method="get">

			<input type="text" name="updatedQuantities" id="updatedQuantities"
				value="" />
			<table class="table table-dark">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Product Name</th>
						<th scope="col">Product Price</th>
						<th scope="col">Product QTY</th>
						<th scope="col">Total</th>
						<th scope="col">Product Description</th>
						<th scope="col">Action</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>

					<%
						for (Cart p : li) {

							Product p_carts = new Product();
					%>

					<tr>
						<th scope="row"><%=p.getPid()%></th>
						<td><%=p.getPname()%></td>
						<td id="pri<%=p.getPid()%>"><%=p.getPrice()%></td>
						<td><div class="form-group">
								<select class="form-control quantities" id="<%=p.getPid()%>"
									name="qty" onchange="updateTotalPrice(this.value,this.id)">
									<option selected>-Select Qty-</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
								</select>
							</div></td>
						<td id="tot<%=p.getPid()%>" class="totalPrice"></td>
						<td><%=p.getDescription()%></td>
						<td><a href="CartServlet?action=edit&pid=<%=p.getPid()%>">
								<button class="btn btn-warning btn-sm" type="submit">Edit</button>
						</a></td>
						<td><a href="CartServlet?action=edit&pid=<%=p.getPid()%>">
								<button class="btn btn-danger btn-sm" type="submit">Delete</button>
						</a></td>
					</tr>

				</tbody>
				<%
					}
				%>
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">Total</th>
						<th scope="col"></th>
						<th scope="col"></th>
						<th scope="col" id="finalTotal">0</th>
						
						
						<th scope="col"></th>
						<th scope="col"></th>
						<th scope="col"></th>
					</tr>
				</thead>
			</table>

			<div class="Cart" align="center">

				<input type="submit" class="btn btn-outline-success"
					value="Place Order" />


			</div>

		</form>
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

	<script>
		function updateTotalPrice(quantity1,id){

			//console.log('quantity1' + quantity1);
			
			let quantities = document.getElementsByClassName("quantities");
			console.log("quantities ===> " + quantities);
			
			let commaSeparatedQuantities = "";
			for(quantity of quantities)
				commaSeparatedQuantities += quantity.value + ",";
			console.log("quantity to be sent to servlet ====> " + commaSeparatedQuantities);
			
			document.getElementById("updatedQuantities").value = commaSeparatedQuantities;
			//console.log("price = " + document.getElementById("price").innerHTML);
			
			//console.log('q'+quantity[0]);
			console.log('p'+id);
			 let getprice = parseFloat(document.getElementById("pri"+id).innerHTML);
			 
			 console.log("getPrice ====> " + getprice);
			 let totalPrice = parseFloat(quantity1)*getprice;

			 console.log("totalPrice ====> " + totalPrice);
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
		
	</script>
</body>
</html>