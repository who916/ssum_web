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
<link rel="icon" type="image/x-icon"
	href="/bootstrap/assets/favicon.ico" />
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
	<!-- jQuery -->
	<script src="/webjars/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/bootstrap/js/scripts.js"></script>
	<!-- login js -->
	<script type="text/javascript" src="/bootstrap/js/login/login.js"></script>
	<script type="text/javascript" src="/bootstrap/js/utils/commonUtil.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<header class="pagehead"> </header>
	<!-- Main Page -->
	<main class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="my-5" style="justify-content: center; display: grid;">
						<label style="font-weight: 600; margin-bottom: 1rem;">로그인</label>
						<form id="contactForm" style="margin-bottom: 0.8rem;"
							data-sb-form-api-token="API_TOKEN">
							<div class="form-floating">
								<input class="form-control" id="id" name="id" type="text"
									placeholder="Enter your id.." data-sb-validations="required" />
								<label for="id" style="font-size: 1rem;">아이디</label>
								<div class="invalid-feedback"  id="validateId" data-sb-feedback="id:required">아이디를 입력하세요</div>
								<div class="invalid-feedback"  id="validateInputid" data-sb-feedback="id:required">아이디는 이메일 형태만 입력 가능합니다</div>
							</div>
							<div class="form-floating">
								<input class="form-control" id="password"  name="password"  type="password"
									placeholder="Enter your password..."
									data-sb-validations="required" /> <label for="password"
									style="font-size: 1rem;">비밀번호</label>
								<div class="invalid-feedback" id="validatePw" data-sb-feedback="pw:required">비밀번호를 입력하세요</div>
								<div class="invalid-feedback"  id="validateInputpw" data-sb-feedback="id:required">비밀번호는 영문/숫자만 입력 가능합니다</div>
							</div>
							<br />
							<!-- Submit Button-->
							<button class="btn btn-primary normal text-uppercase"
								style="width: 100%;" id="submitButton" type="button">로그인</button>
						</form>
						<div class="row gx-4 gx-lg-5 justify-content-center">
							<div class="col-md-10 col-lg-8 col-xl-7" style="width: 80%;">
								<ul class="list-inline text-center" style="font-size: 0.8rem;">
									<li class="list-inline-item"><a href="#">아이디 찾기</a></li>
									<li class="list-inline-item"><a href="#">비밀번호 찾기</a></li>
									<li class="list-inline-item"><a href="/login/sign.do">회원가입</a></li>
								</ul>
							</div>
						</div>
						<br>
						<div style="border-top: 1px solid #6c757d;">
							<br>
							<div
								style="justify-content: center; display: grid; align-items: center;">
								<button class="btn-sign naver" onclick="">
									<img src="/bootstrap/assets/svgs/sns/naver.svg" class="me-xl-2" />
									<p>네이버로 로그인</p>
								</button>
								<button class="btn-sign kakao" onclick="">
									<img src="/bootstrap/assets/svgs/sns/kakao.svg" class="me-xl-2" />
									<p>카카오로 로그인</p>
								</button>
								<button class="btn-sign google" onclick="">
									<img src="/bootstrap/assets/svgs/sns/google.svg"
										class="me-xl-2" />
									<p>구글로 로그인</p>
								</button>
								<button class="btn-sign apple" onclick="">
									<img src="/bootstrap/assets/svgs/sns/apple.svg" class="me-xl-2" />
									<p>애플로 로그인</p>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Footer-->
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>