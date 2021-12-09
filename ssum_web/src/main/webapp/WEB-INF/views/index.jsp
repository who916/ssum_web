<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>쑴</title>
<link rel="icon" type="image/x-icon" href="/bootstrap/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/bootstrap/css/styles.css" rel="stylesheet" />
</head>
<body>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/bootstrap/js/scripts.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<!-- Page Header-->
	<header class="masthead" style="background-image: url('/bootstrap/assets/img/bg/home-bg.jpg');">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<!--<div class="site-heading">
						<h2>글이 작품이 되는 공간, 쑴</h2>
						<span class="subheading">쑴에 담긴 아름다운 작품을 감상해보세요</span>
					</div>-->
				</div>
			</div>
		</div>
	</header>
    <!-- Main Content-->
       <%@ include file="/WEB-INF/views/pages/mainPage.jsp"%>
	<!-- Footer-->
	  <%@ include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>