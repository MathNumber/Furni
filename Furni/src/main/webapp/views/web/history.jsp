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
	<form action="<c:url value='/lich-su'/>" method="get" id="formSubmit">
	<!-- Start Hero Section -->
	<div class="hero">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="intro-excerpt">
						<h1>History</h1>
					</div>
				</div>
				<div class="col-lg-7"></div>
			</div>
		</div>
	</div>
	<!-- End Hero Section -->

	<div class="untree_co-section before-footer-section">
		<div class="container">
			<div class="row mb-5">
					<div class="site-blocks-table">
						<table class="table">
							<thead>
								<tr>
									<th>Product</th>
									<th>Price</th>
									<th>Quantity</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${product.listResult}">
									<tr>
										<td>${item.productname}</td>
										<td>${item.price}</td>
										<td>${item.amount}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<ul style="display:flex;justify-content:center" class="pagination" id="pagination"></ul>
						<input type="hidden" value="" id="page" name="page">
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
					</div>
			</div>
		</div>
	</div>
	</form>
	<script>
	  var totalPages = ${product.totalPage};
	  var currentPage = ${product.page};
	  var limit = 4;
	  $(function () {
	    window.pagObj = $('#pagination').twbsPagination({
	      totalPages: totalPages,
	      visiblePages: 10,
	      startPage: currentPage,
	      onPageClick: function (event, page) {
	        if (currentPage != page) {
	          $('#maxPageItem').val(limit);
	          $('#page').val(page);
	          $('#formSubmit').submit();
	        }
	      }
	    });
	  });
  </script>
  <script src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
</body>
</html>