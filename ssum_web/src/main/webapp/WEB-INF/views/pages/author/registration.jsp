<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
<header class="masthead"
		style="background-image: url('/bootstrap/assets/img/bg/about-bg.jpg')">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="page-heading">
						<h1>작가 신청 안내</h1>
						<span class="subheading">쑴에서 출간과 다양한 기회를 연결해 드립니다</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Main Content-->
	<main class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="my-5">
						<!-- * * * * * * * * * * * * * * *-->
						<!-- * * SB Forms Contact Form * *-->
						<!-- * * * * * * * * * * * * * * *-->
						<!-- This form is pre-integrated with SB Forms.-->
						<!-- To make this form functional, sign up at-->
						<!-- https://startbootstrap.com/solution/contact-forms-->
						<!-- to get an API token!-->
						<form id="contactForm" data-sb-form-api-token="API_TOKEN">
							<div class="form-floating">
								<input class="form-control" id="name" type="text"
									placeholder="Enter your name..." data-sb-validations="required" />
								<label for="name">활동명</label>
								<div class="invalid-feedback" id="validateName" data-sb-feedback="name:required">활동명은 필수 입니다.</div>
							</div>
							<p style="font-size:0.8rem;">활동명 변경 시에는 기존의 활동 내역에도 반영됩니다.<br>
							   작가 필명으로 사용되니 신중히 결정해 주세요</p>
							<div class="form-floating">
								<textarea class="form-control" id="introduce"
									placeholder="Enter your introduce here..." style="height: 12rem"
									data-sb-validations="required"></textarea>
								<label for="introduce">작가소개</label>
								<div class="invalid-feedback" id="validateMessage"
									data-sb-feedback="message:required">작가소개는 필수 입니다.</div>
							</div>
							<br />
							<label>본인인증<br><br></label>
							<div class="form-floating">
								<button type="button" class="btn btn-outline-primary text-uppercase"  style="width:49%; margin-left:1px;" id="btn_cell">휴대폰 인증</button>
								<button type="button" class="btn btn-outline-primary text-uppercase" style="width:49%; margin-right:1px;" id="btn_ipin">아이핀 인증</button>
							</div>
							<p></p>
							<!-- Submit success message-->
							<!---->
							<!-- This is what your users will see when the form-->
							<!-- has successfully submitted-->
							<!-- <div class="d-none" id="submitSuccessMessage">
								<div class="text-center mb-3">
									<div class="fw-bolder">Form submission successful!</div>
									To activate this form, sign up at <br /> <a
										href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
								</div>
							</div> -->
							<!-- Submit error message-->
							<!---->
							<!-- This is what your users will see when there is-->
							<!-- an error submitting the form-->
							<!-- <div class="d-none" id="submitErrorMessage">
								<div class="text-center text-danger mb-3">Error sending
									message!</div>
							</div> -->
							<!-- Submit Button-->
							 <button class="btn btn-primary normal text-uppercase" style="width:100%;"
								id="submitButton" type="submit">작가신청</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Footer-->
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/bootstrap/js/scripts.js"></script>
</body>
</html>