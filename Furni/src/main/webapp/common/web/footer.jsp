<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
<link href="<c:url value = "/template/web/css/fix.css"/>"
	rel="stylesheet" />
</head>
<!-- Start Footer Section -->
<footer class="footer-section">
	<div class="container relative">
		<div class="sofa-img">
			<img src="<c:url value = "/template/web/images/sofa.png"/>" alt="Image" class="img-fluid" />
		</div>

		<div class="row g-5 mb-5">
			<div class="col-lg-4">
				<div class="mb-4 footer-logo-wrap">
					<a href="#" class="footer-logo">Furni<span>.</span></a>
				</div>
				<p class="mb-4">At Furni, we understand that your home is not
					just a place to live; it's an expression of your unique style and
					personality. That's why we are dedicated to providing you with the
					finest selection of chairs and seating options to elevate the
					design of your home.</p>

				<ul class="list-unstyled custom-social">
					<li><a href="#"><span class="fa fa-brands fa-facebook-f"></span></a>
					</li>
					<li><a href="#"><span class="fa fa-brands fa-twitter"></span></a>
					</li>
					<li><a href="#"><span class="fa fa-brands fa-instagram"></span></a>
					</li>
					<li><a href="#"><span class="fa fa-brands fa-linkedin"></span></a>
					</li>
				</ul>
			</div>

			<div class="col-lg-8">
				<div class="row links-wrap">
					<div class="col-6 col-sm-6 col-md-3">
						<ul class="list-unstyled">
							<li><a href="<c:url value="/views/web/about.jsp"/>">About us</a></li>
							<li><a href="<c:url value="/views/web/services.jsp"/>">Services</a></li>
							<li><a href="<c:url value="/views/web/blog.jsp"/>">Blog</a></li>
							<li><a href="<c:url value="/views/web/contact.jsp"/>">Contact us</a></li>
						</ul>
					</div>

					<div class="col-6 col-sm-6 col-md-3">
						<ul class="list-unstyled">
							<li><a href="#">Support</a></li>
							<li><a href="#">Knowledge base</a></li>
							<li><a href="#">Live chat</a></li>
						</ul>
					</div>

					<div class="col-6 col-sm-6 col-md-3">
						<ul class="list-unstyled">
							<li><a href="#">Jobs</a></li>
							<li><a href="#">Our team</a></li>
							<li><a href="#">Leadership</a></li>
							<li><a href="#">Privacy Policy</a></li>
						</ul>
					</div>

					<div class="col-6 col-sm-6 col-md-3">
						<ul class="list-unstyled">
							<li><a href="#">Nordic Chair</a></li>
							<li><a href="#">Kruzo Aero</a></li>
							<li><a href="#">Ergonomic Chair</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="border-top copyright">
			<div class="row pt-4">
				<div class="col-lg-6">
					<p class="mb-2 text-center text-lg-start">
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						. All Rights Reserved. &mdash; Designed with love by <a
							href="https://untree.co">Untree.co</a> Distributed By <a
							hreff="https://themewagon.com">ThemeWagon</a>
						<!-- License information: https://untree.co/license/ -->
					</p>
				</div>

				<div class="col-lg-6 text-center text-lg-end">
					<ul class="list-unstyled d-inline-flex ms-auto">
						<li class="me-4"><a href="#">Terms &amp; Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- End Footer Section -->
</body>
</html>