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
	href="/assets/favicon.ico" />
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
	<script src="/js/scripts.js"></script>
	<!-- import js -->
	<script type="text/javascript" src="/js/login/sign.js"></script>
	<script type="text/javascript" src="/js/commonUtil.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<header class="pagehead"> </header>
	<!-- Main Page -->
	<main class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="my-5" style="justify-content: center; display: grid;">
						<label style="font-weight: 600; margin-bottom: 1rem;">회원가입</label>
						<form id="contactForm"
							style="margin-bottom: 0.8rem; width: 24rem;"
							data-sb-form-api-token="API_TOKEN">
							<div class="form-floating">
								<input class="form-control" id="id" type="text"
									placeholder="아이디는 이메일 형태만 입력가능 합니다."
									data-sb-validations="required" /> <label for="id"
									style="font-size: 1rem;">아이디</label>
								<div class="invalid-feedback" id="validateId"
									data-sb-feedback="id:required">아이디를 입력하세요</div>
								<div class="invalid-feedback" id="validateInputid"
									data-sb-feedback="id:required">아이디는 이메일 형태만 입력 가능합니다</div>
							</div>
							<div class="form-floating">
								<input class="form-control" id="password" type="password"
									placeholder="비밀번호를 입력하세요" data-sb-validations="required" /> <label
									for="password" style="font-size: 1rem;">비밀번호</label>
								<div class="invalid-feedback" id="validatePw"
									data-sb-feedback="pw:required">비밀번호를 입력하세요</div>
								<div class="invalid-feedback" id="validateInputpw"
									data-sb-feedback="id:required">비밀번호는 영문/숫자만 입력 가능합니다</div>
							</div>
							<div class="form-floating" style="margin-bottom: 2rem;">
								<input class="form-control" id="passwordChk" type="password"
									placeholder="비밀번호를 다시 한 번 입력하세요" data-sb-validations="required" />
								<label for="password" style="font-size: 1rem;">비밀번호 확인</label>
								<div class="invalid-feedback" id="validateChkPw"
									data-sb-feedback="chkpw:required">비밀번호를 한번 더 입력하세요</div>
								<div class="invalid-feedback" id="validateChkInputpw"
									data-sb-feedback="chkpw:required">비밀번호는 영문/숫자만 입력 가능합니다</div>
								<div class="invalid-feedback" id="validateChkValidpw"
									data-sb-feedback="chkpw:required">입력한 비밀번호와 다릅니다.</div>
							</div>
							<div class="form-floating">
								<input class="form-control" id="name" type="text"
									placeholder="이름을 입력하세요" data-sb-validations="required" /> <label
									for="name" style="font-size: 1rem;">이름</label>
								<div class="invalid-feedback" id="validateName"
									data-sb-feedback="name:required">이름을 입력하세요.</div>
								<div class="invalid-feedback" id="validateInputName"
									data-sb-feedback="name:required">이름은 한글만 입력 가능합니다.</div>
							</div>
							<div style="display: inline-flex;">
								<div class="form-floating">
									<input class="form-control birth" id="yyyy" type="text"
										placeholder="생년월일을 입력하세요" data-sb-validations="required"
										maxlength="4" /> <label for="yyyy" style="font-size: 1rem;">생년</label>
								</div>
								<div class="form-floating">
									<input class="form-control birth" id="mm" type="text"
										placeholder="생년월일을 입력하세요" data-sb-validations="required"
										maxlength="2" /> <label for="mm" style="font-size: 1rem;">월</label>
								</div>
								<div class="form-floating">
									<input class="form-control birth" id="dd" type="text"
										placeholder="생년월일을 입력하세요" data-sb-validations="required"
										maxlength="2" /> <label for="dd" style="font-size: 1rem;">일</label>
								</div>
							</div>
							<div class="form-floating" style="margin-bottom: 10px;">
								<div class="invalid-feedback" data-sb-feedback="yyyy:required"
									id="validateBirth">생년월일을 입력하세요.</div>
								<div class="invalid-feedback" data-sb-feedback="yyyy:required"
									id="validateInputBirth">생년월일은 숫자만 입력가능합니다.</div>
							</div>
							<label for="gender" class="radio-label"
								style="margin-bottom: 10px;">성별</label>
							<ul class="radio-inline-form" id="gender"
								style="padding-inline-start: 10px; margin-bottom: 20px;">
								<div class="form-check">
									<input class="form-check-input" id="male" name="male" value="m"
										type="radio"><label>남자</label></input>
								</div>
								<div class="form-check">
									<input class="form-check-input" id="female" name="female"
										value="f" type="radio"><label>여자</label></input>
								</div>
							</ul>
							<div style="border-top: 1px solid #6c757d;">
								<div style="margin-top: 20px; margin-bottom: 20px;">
									<label for="cell" class="radio-label" style="font-size: 1rem;">휴대폰
										본인인증</label>
									<div style="display: inline-flex; margin-top: 10px;">
										<select class="form-select cell-select" id="cell1">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
										</select>
										<div class="form-floating">
											<input class="form-control birth" style="height: 3rem;"
												id="cell2" type="text" data-sb-validations="required"
												maxlength="4" />
										</div>
										<div class="form-floating">
											<input class="form-control birth" id="cell3"
												style="height: 3rem;" type="text"
												data-sb-validations="required" maxlength="4" />
										</div>
										<button class="btn btn-outline-primary auth"
											style="margin-top: 0.25rem; maring-left: 10px" id="authNum"
											onClick="">인증번호받기</button>
									</div>
									<div class="form-floating" style="margin-bottom: 10px;">
										<div class="invalid-feedback" id="validateCellNum"
											data-sb-feedback="cell:required">휴대전화 번호를 입력하세요.</div>
										<div class="invalid-feedback" id="validateInputCellNum"
											data-sb-feedback="cell:required">휴대전화는 숫자만 입력 가능합니다.</div>
									</div>
								</div>
							</div>
							<div
								style="display: inline-flex; margin-top: 10px; margin-bottom: 20px;">
								<label for="cell" class="radio-label"
									style="font-size: 0.9rem; display: contents;">휴대폰 인증이
									어려우신가요?</label>
								<button class="btn btn-outline-primary auth"
									style="width: 7rem; margin-left: 5.7rem;" id="authMail"
									onClick="">이메일 인증으로 전환</button>
							</div>
							<br>
							<button class="btn btn-primary normal text-uppercase"
								style="width: 100%;" id="confirmAuth" type="button">인증확인</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Footer-->
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>