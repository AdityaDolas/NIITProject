<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<!doctype html>
<%@page import="com.aditya.dao.ProductDao"%>
<%@page import="com.aditya.pojo.Product"%>
<%@page import="java.util.List"%>
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
</style>

<!-- <script type="text/javascript">
	$(function() {
		$('.carousel-inner').carousel({
			interval : 1000 * 3
		// 1000 x 1 = 1 second
		});
	});
</script> -->

</head>
<body>

	<!--------------------------------------------------JS Check----------------------------------------------------------->

	<%
		String username = (String) session.getAttribute("username");
		/* if (userName == null) {
			response.sendRedirect("LoginPage.jsp");
		} */
	%>


	<!--------------------------------------------------JS Check----------------------------------------------------------->


	<!--------------------------------------------------Navigation bar----------------------------------------------------------->

	<jsp:include page="UNavbar.jsp"></jsp:include>

	<!--------------------------------------------------Navigation bar----------------------------------------------------------->


	<!--------------------------------------------------Shoes----------------------------------------------------------->

	<%
		ProductDao pd = new ProductDao();
		String pname = request.getParameter("searchProduct");
		List<Product> pl = pd.getProductByname(pname);
		%>
		
		<%=pl.size()+"hiiiiiiiiii" %>
		
		<%
		
		String cartMsg = (String) request.getAttribute("cartMsg");
		if (cartMsg != null) {
	%>
	<h2 align="center" style="color: green"><%=cartMsg%></h2>

	<%
		}
	%>

	<div class="container mt-5">
		<div class="row">
			<%
				for (Product p : pl) {
			%>
			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt="" src="Images/<%=p.getPName()%>.jpg">
					<div class="card-body">
						<h5><%=p.getPName()%></h5>
						<h5>
							Rs.
							<%=p.getPPrice()%></h5>

						<%
							if (username != null) {
						%>
						<a href="CartServlet?action=addToCart&pid=<%=p.getPid()%>">
							<button class="btn btn-danger">
								<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
							</button>
						</a>
						<%
							}
						%>

						<%
							if (username == null) {
						%>
						<a href="LoginPage.jsp">
							<button class="btn btn-danger">
								<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
							</button>
						</a>
						<%
							}
						%>



					</div>
				</div>
			</div>
			<%
				}
			%>

		</div>
	</div>
	<br></br>

	<!-----------------------------------------------End of T-Shirt----------------------------------------------------------->

	<!----------------------------------------Start of Bottom of Paragraph---------------------------------------------------->
	<div class="Para">
		<div class="container">
			<br>
			<p>
			<h6>Online Fashion Shopping: convenient, fast and affordable!</h6>

			<p class="blockquote-footer">
				<em>Shopping is fun and exhilarating and more so when you can
					shop 24x7 without leaving the comfort of home. This in simpler
					words is what we call Jabong.com! Online shopping at Jabong.com is
					convenient and affordable. You can find your desired products more
					quickly and easily using our user-friendly online shopping
					platform. Fill your cart up to the brim in just a few seconds and
					get swift home delivery for all orders. All of this topped with our
					exclusive offers makes for an exciting, irresistible combo!</em>
			</p>

			<p>
			<h6>The hottest online fashion destination of all times!</h6>
			</p>

			<p class="blockquote-footer">
				<em>Fashion is definitely more accessible with Jabong.com. We
					showcase the chicest of products be it clothing, shoes, jewellery,
					accessories and cosmetics. Explore the latest collections of top
					brands like Nike, Puma, Sangria, Adidas, Dorothy Perkins, Biba ,
					Levis, United Colors of Benetton and many others. Apart from these,
					brands that were only heard of but never found online before are
					now showcased at Jabong.com. Jabong.com is here to make dreams come
					true for all River Island and Mango lovers. Dorothy Perkins and
					Miss Selfridge are some other international labels that you will
					find here. If your wardrobe had been craving for a designer ethnic
					collection, then you can feast your eyes on Rohit Bal for
					Jabong.com. Also, take a tour of our fashion blog to stay abreast
					of the latest runway trends and be a trendsetter among your
					immediate circles.</em>
			</p>

			<p>
			<h6>Avail added online shopping benefits</h6>
			</p>

			<p class="blockquote-footer">
				<em>You choose your product, order it online, and we deliver it
					right at your doorstep anywhere in India. You just need to pay for
					the product, while we ensure free shipping* all the time on almost
					everything with no strings attached. For any second thoughts after
					purchase, we have in place a no questions asked return policy as
					well. To offer you a safe and risk-free online shopping experience,
					we offer COD facility. Could you have asked for more?</em>
			</p>

			<p>
			<h6>24 x7 Online Fashion & Lifestyle Store for everyone</h6>
			</p>

			<p class="blockquote-footer">
				<em>Forget the fashion streets of the world. We, at Jabong.com,
					have all that you need to glam up your fashion quotient. From an
					extensive range of mens shirts, western dresses for women, funky
					clothes for kids and matching footwear, sports shoes and
					accessories for everyone, we purvey diversity of choices in online
					shopping in India under one umbrella. Your Jabong Online Shop has
					arrived! Do not miss the attractive best buy prices and super
					discount coupons. Get more, pay less!</em>
			</p>


		</div>
	</div>

	<!------------------------------------------End of Bottom of Paragraph---------------------------------------------------->

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