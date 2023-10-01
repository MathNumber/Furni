<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
<style>
	.bi-cart-check{
		position: static;
		transform: none;
	}
	#user{
		position:relative
	}
	.status{
		display:none;
		background-color: white;
		position:absolute;
		top:74px;
		list-style: none;
	}
	.status li a {
		padding :10px 0px ;
		color:black !important;
	}
	.triangle {
	  display:none;
	  width: 0;
	  height: 0;
	  border-left: 15px solid transparent;
	  border-right: 15px solid transparent;
	  border-bottom: 15px solid white;
	  position:absolute;
	  top:60px;
	  margin-left:20px;
	}
	
</style>
</head>
<!-- Start Header/Navigation -->
<nav
	class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark"
	arial-label="Furni navigation bar">
<div class="container">
	<a class="navbar-brand" href="<c:url value="/views/web/index.jsp"/>">Furni<span>.</span></a>

	<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		data-bs-target="#navbarsFurni" aria-controls="navbarsFurni"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsFurni">
		<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
			
			<li class="nav-item active"><a class="nav-link"
				href="<c:url value = "/views/web/index.jsp"/>">Home</a></li>
			<li><a class="nav-link"
				href="<c:url value = "/views/web/shop.jsp"/>">Shop</a></li>
			<li><a class="nav-link"
				href="<c:url value = "/views/web/about.jsp"/>">About us</a></li>
			<li><a class="nav-link"
				href="<c:url value = "/views/web/services.jsp"/>">Services</a></li>
			<li><a class="nav-link"
				href="<c:url value = "/views/web/contact.jsp"/>">Contact us</a></li>
		</ul>

		<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
			<c:if test="${empty USERMODEL}">
				<li><a class="nav-link"
					href="<c:url value = "/dang-nhap?action=login"/>"><img
						src="<c:url value = "/template/web/images/user.svg"/>" /></a></li>
				<li><a class="nav-link"
					href="<c:url value = "/dang-nhap?action=login"/>"><img
						src="<c:url value = "/template/web/images/cart.svg"/>" /></a></li>
			</c:if>
			<c:if test="${not empty USERMODEL}">
				<li id="user" class="nav-item"><a class="nav-link" href='#'>Welcome, ${USERMODEL.username}</a></li>
				<div class="triangle"></div>
				<ul class="status">
					<li class="nav-item"><a class="nav-link" href='<c:url value="/lich-su?page=1&maxPageItem=4"/>'>History</a></li>
					<li class="nav-item"><a onclick=localStorage.removeItem("cartItems") class="nav-link" href='<c:url value="/thoat?action=logout"/>'>Logout</a></li>
				</ul>
				<li><a class="nav-link"
					href="<c:url value = "/views/web/cart.jsp"/>"><img
						src="<c:url value = "/template/web/images/cart.svg"/>" /></a></li>
			</c:if>
		</ul>
	</div>
</div>
</nav>
<!-- End Header/Navigation -->
</body>
</html>