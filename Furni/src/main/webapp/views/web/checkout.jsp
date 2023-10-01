<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<!-- Start Hero Section -->
	<div class="hero">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="intro-excerpt">
						<h1>Checkout</h1>
					</div>
				</div>
				<div class="col-lg-7"></div>
			</div>
		</div>
	</div>
	<!-- End Hero Section -->

	<div class="untree_co-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-12">
					<div class="border p-4 rounded" role="alert">
						Returning customer? <a href="#">Click here</a> to login
					</div>
				</div>
			</div>
			<form action="<c:url value ="/thanh-toan"/>" method="post">
			<div class="row">
				<div class="col-md-6 mb-5 mb-md-0">
					<h2 class="h3 mb-3 text-black">Billing Details</h2>
					<div class="p-3 p-lg-5 border bg-white">
						<div class="form-group">
							<label for="c_country" class="text-black">Country <span
								class="text-danger">*</span>
							</label> <select name="country" id="c_country" class="form-control">
								<option value="1">Select a country</option>
								<option value="Bangladesh">Bangladesh</option>
								<option value="Algeria">Algeria</option>
								<option value="Afghanistan">Afghanistan</option>
								<option value="Ghana">Ghana</option>
								<option value="Albania">Albania</option>
								<option value="Bahrain">Bahrain</option>
								<option value="Colombia">Colombia</option>
								<option value="Dominican Republic">Dominican Republic</option>
								<option value="Viet Nam">Viet Nam</option>
							</select>
						</div>
						<div class="form-group row">
							<div class="col-md-6">
								<label for="c_fname" class="text-black">First Name <span
									class="text-danger">*</span>
								</label> <input required type="text" class="form-control" id="c_fname"
									name="firstname" />
							</div>
							<div class="col-md-6">
								<label for="c_lname" class="text-black">Last Name <span
									class="text-danger">*</span>
								</label> <input required type="text" class="form-control" id="c_lname"
									name="lastname" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_companyname" class="text-black">Company
									Name </label> <input type="text" class="form-control" id="companyname"
									name="companyname" />
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<label for="c_address" class="text-black">Address <span
									class="text-danger">*</span>
								</label> <input required type="text" class="form-control" id="c_address"
									name="address" placeholder="Street address" />
							</div>
						</div>

						<div class="form-group mt-3">
							<input type="text" class="form-control"
								placeholder="Apartment, suite, unit etc. (optional)" />
						</div>

						<div class="form-group row">
							<div class="col-md-6">
								<label for="c_state_country" class="text-black">State /
									Country <span class="text-danger">*</span>
								</label> <input required type="text" class="form-control"
									id="c_state_country" name="state" />
							</div>
							<div class="col-md-6">
								<label for="c_postal_zip" class="text-black">Posta / Zip
									<span class="text-danger">*</span>
								</label> <input required type="text" class="form-control"
									id="c_postal_zip" name="zip" />
							</div>
						</div>

						<div class="form-group row mb-5">
							<div class="col-md-6">
								<label for="c_email_address" class="text-black">Email
									Address <span class="text-danger">*</span>
								</label> <input required type="text" class="form-control"
									id="c_email_address" name="email" />
							</div>
							<div class="col-md-6">
								<label for="c_phone" class="text-black">Phone <span
									class="text-danger">*</span>
								</label> <input required type="text" class="form-control" id="c_phone"
									name="phone" placeholder="Phone Number" />
							</div>
						</div>

						<div class="form-group">
							<label for="c_order_notes" class="text-black">Order Notes</label>
							<textarea name="note" id="c_order_notes" cols="30" rows="5"
								class="form-control" placeholder="Write your notes here..."></textarea>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row mb-5">
						<div class="col-md-12">
							<h2 class="h3 mb-3 text-black">Coupon Code</h2>
							<div class="p-3 p-lg-5 border bg-white">
								<label for="c_code" class="text-black mb-3">Enter your
									coupon code if you have one</label>
								<div class="input-group w-75 couponcode-wrap">
									<input type="text" class="form-control me-2" id="c_code"
										placeholder="Coupon Code" aria-label="Coupon Code"
										aria-describedby="button-addon2" />
									<div class="input-group-append">
										<button class="btn btn-black btn-sm" type="button"
											id="button-addon2">Apply</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row mb-5">
						<div class="col-md-12">
							<h2 class="h3 mb-3 text-black">Your Order</h2>
							<div class="p-3 p-lg-5 border bg-white">
								<table class="table site-block-order-table mb-5">
									<thead>
										<th>Product</th>
										<th>Total</th>
									</thead>
									<tbody></tbody>
								</table>

								<div class="border p-3 mb-3">
									<h3 class="h6 mb-0">
										<a class="d-block" data-bs-toggle="collapse"
											href="#collapsebank" role="button" aria-expanded="false"
											aria-controls="collapsebank">Direct Bank Transfer</a>
									</h3>

									<div class="collapse" id="collapsebank">
										<div class="py-2">
											<p class="mb-0">Make your payment directly into our bank
												account. Please use your Order ID as the payment reference.
												Your order won’t be shipped until the funds have cleared in
												our account.</p>
										</div>
									</div>
								</div>

								<div class="border p-3 mb-3">
									<h3 class="h6 mb-0">
										<a class="d-block" data-bs-toggle="collapse"
											href="#collapsecheque" role="button" aria-expanded="false"
											aria-controls="collapsecheque">Cheque Payment</a>
									</h3>

									<div class="collapse" id="collapsecheque">
										<div class="py-2">
											<p class="mb-0">Make your payment directly into our bank
												account. Please use your Order ID as the payment reference.
												Your order won’t be shipped until the funds have cleared in
												our account.</p>
										</div>
									</div>
								</div>

								<div class="border p-3 mb-5">
									<h3 class="h6 mb-0">
										<a class="d-block" data-bs-toggle="collapse"
											href="#collapsepaypal" role="button" aria-expanded="false"
											aria-controls="collapsepaypal">Paypal</a>
									</h3>

									<div class="collapse" id="collapsepaypal">
										<div class="py-2">
											<p class="mb-0">Make your payment directly into our bank
												account. Please use your Order ID as the payment reference.
												Your order won’t be shipped until the funds have cleared in
												our account.</p>
										</div>
									</div>
								</div>
								<div class='hiddenInputs'></div>
								<input type="hidden" name="action" value="checkout"/>
								<div class="form-group">
									<button id="placeOrderButton" type="submit"
										class="btn btn-black btn-lg py-3 btn-block">Place
										Order</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
			<!-- </form> -->
		</div>
	</div>
</body>
</html>