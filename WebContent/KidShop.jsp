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

.searchbar:hover>.search_input {
	padding: 0 10px;
	width: 200px;
	caret-color: red;
	transition: width 0.08s linear;
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

/* <!----------------------------------------------Search bar--------------------------------------------------------------> */
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


	<!--------------------------------------------------Navigation bar----------------------------------------------------------->

	<jsp:include page="UNavbar.jsp"></jsp:include>

	<!--------------------------------------------------Navigation bar----------------------------------------------------------->


	<!--------------------------------------------------Carousel----------------------------------------------------------->

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100"
					src="https://assets.jassets.com/assets/images/retaillabs/2019/7/4/13226b48-89e4-4ecf-85db-1fa690a5dbf41562222307705-Kids-Desktop-Slider-StaticPage-1300X470.webp"
					alt="First slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!--------------------------------------------------Shoes----------------------------------------------------------->

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.jassets.com/h_600,q_95,w_440/v1/assets/images/productimage/2019/2/18/a9307420-17ea-4e62-9541-eb329f6147351550478208379-1.webp">
					<div class="card-body">
						<h5>Nike Shoes</h5>
						<h5>Rs. 12,999</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.jassets.com/h_600,q_95,w_440/v1/assets/images/productimage/2019/2/18/a89f64ed-e52f-4023-b1a7-99eb90c87dbe1550478618590-1.webp">
					<div class="card-body">
						<h5>Puma Shoes</h5>
						<h5>Rs. 13,999</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.jassets.com/h_600,q_95,w_440/v1/assets/images/productImage/2018/5/2/11525257050448-1.webp">
					<div class="card-body">
						<h5>Adidas Shoes</h5>
						<h5>Rs. 3,299</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/9393939/2019/4/24/5195e083-4983-47b2-aae9-7bf0a1260ec51556101457627-Sparx-Men-SM-414-Black-Sports-Shoes-6931556101456256-1.jpg">
					<div class="card-body">
						<h5>Sparx Shoes</h5>
						<h5>Rs. 2,400</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>
		</div>
		<br>
		<!--------------------------------------------------Shoes----------------------------------------------------------->

		<!--------------------------------------------------T-Shirt----------------------------------------------------------->


		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.jassets.com/h_600,q_95,w_440/v1/assets/images/productimage/2019/4/10/0409b03a-7a3a-4f80-b5fb-0e099e4faeb71554898487795-1.webp">
					<div class="card-body">
						<h5>Adidas T-Shirt</h5>
						<h5>Rs. 3,999</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.jassets.com/h_600,q_95,w_440/v1/assets/images/productimage/2019/2/28/10b09b04-4d9a-40e0-ac6d-2ad8606b078d1551331057423-1.webp">
					<div class="card-body">
						<h5>Nike T-Shirt</h5>
						<h5>Rs. 8,999</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.jassets.com/h_600,q_95,w_440/v1/assets/images/productimage/2019/2/5/bb26b9ec-34c6-4ee4-9839-b5b491ffec431549355472906-1.webp">
					<div class="card-body">
						<h5>Puma T-Shirt</h5>
						<h5>Rs. 2,599</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card">
					<img class="card-img-top" alt=""
						src="https://assets.jassets.com/h_600,q_95,w_440/v1/assets/images/6530756/2018/6/7/000a57e8-a08c-4e6d-b45e-77c2a52026ea1528347016916-Tommy-Hilfiger-Men-Tshirts-2721528347015487-1.webp">
					<div class="card-body">
						<h5>Tommy Hilfiger T-Shirt</h5>
						<h5>Rs. 1,500</h5>
						<button class="btn btn-danger">
							<i class="fa facart-plus" aria-hidden="true"></i>Add To Cart
						</button>
					</div>
				</div>
			</div>
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