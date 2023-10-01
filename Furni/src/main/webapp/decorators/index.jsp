<%@include file="/common/taglib.jsp"%>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="author" content="Untree.co" />
	<link rel="shortcut icon" href="<c:url value = "/template/web/images/favicon.png"/>" />
	
	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap4" />
	
	<!-- Bootstrap CSS -->
	<link href="<c:url value = "/template/web/css/bootstrap.min.css"/>" rel="stylesheet" />
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
	<link href="<c:url value = "/template/web/css/tiny-slider.css"/>" rel="stylesheet" />
	<link href="<c:url value = "/template/web/css/style.css"/>" rel="stylesheet" />
	<link href="<c:url value = "/template/web/scss/style.scss"/>" rel="stylesheet" />
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<title>Furni</title>
</head>
<body>

	<%@ include file="/common/web/header.jsp"%>

	<dec:body />

	<%@ include file="/common/web/footer.jsp"%>
	
	
	
	<script src="<c:url value = "/template/web/js/bootstrap.bundle.min.js"/>"></script>
	<script src="<c:url value = "/template/web/js/tiny-slider.js"/>"></script>
	<script src="<c:url value = "/template/web/js/fix.js"/>"></script>
	<script src="<c:url value = "/template/web/js/custom.js"/>"></script>
	<script src="<c:url value="/template/web/js/checkout.js"/>"></script>
	<script src="<c:url value = "/template/web/js/cart.js"/>"></script>
	<script src="https://smtpjs.com/v3/smtp.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="<c:url value = "/template/web/js/contact.js"/>"></script>
</body>
</html>