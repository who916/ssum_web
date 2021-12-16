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
	<script type="text/javascript" src="/bootstrap/js/login/profileEdit.js"></script>
	<script type="text/javascript" src="/bootstrap/js/commonUtil.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<header class="pagehead"> </header>
	<!-- Main Page -->
	<main class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="my-5" style="justify-content: center; display: grid;">
					    <div style ="display: inline-block; margin-bottom:2rem;" >
						<label style="font-weight: 600; margin-bottom: 1.25rem;">프로필 수정</label>
                        </div>
						<div id="profileEditForm" style="margin-bottom: 0.8rem;">
						    <div style="display:inline-flex; border:1px solid #ced4da; padding:3rem 3rem; width:100%;">
						       <!--이미지--->
						       <div style="display:block;">
                                  <img src="/bootstrap/assets/img/icon/icon-avatar.png"
                                   style="width:8rem; height:8rem; margin-bottom:1rem; display:list-item;" id="profileImg"></img>
                                  <button class="btn btn-outline-primary auth normal" style="width: 8rem;"> 프로필 이미지 등록하기
                                  </button>
						       </div>
						       <!--정보--->
						        <div style="margin-left:10rem;">
				                        <div class="form-floating">
                							<input class="form-control" id="profileNm" type="text"
                							  placeholder="이름을 입력하세요" data-sb-validations="required" data-sb-type="name"/>
                							  <label for="name" style="font-size: 1rem; font-weight:600; color:#21529">이름</label>
                							<div class="invalid-feedback" id="validateprofileNm"
                                              data-sb-feedback="name:required">이름을 입력하세요.</div>
                                            <div class="invalid-feedback" id="validateInputprofileNm"
                                             data-sb-feedback="name:required">이름은 한글만 입력 가능합니다.</div>
                						</div>
                                        <div class="form-floating">
                							<input class="form-control" id="profilePhone" type="text"
                							  placeholder="휴대전화 번호를 입력하세요" data-sb-validations="required" data-sb-type="number" />
                							  <label for="name" style="font-size: 1rem; font-weight:600; color:#21529;">휴대전화 번호</label>
                                            <div class="form-floating" style="margin-bottom: 10px;">
										    <div class="invalid-feedback" id="validateprofilePhone"
											    data-sb-feedback="cell:required">휴대전화 번호를 입력하세요.</div>
										    <div class="invalid-feedback" id="validateInputprofilePhone"
											    data-sb-feedback="cell:required">휴대전화는 숫자만 입력 가능합니다.</div>
									</div>
                						</div>
                                     <div style="display:inherit; margin-bottom:1rem;">
                                       <label style="font-weight:600; font-size:1rem;">등급</label>
                                       <span class="span-info" id="profileLevel">일반회원</span>
                                     </div>
                                     <div style="display:inline-grid; margin-bottom:1rem;">
                                         <label style="font-weight:600; font-size:1rem; margin-bottom:0.5rem;">관심장르</label>
                                          <button class="btn btn-outline-primary auth normal" style="width: 8rem;">
                                            관심장르설정 </button>
                                      </div>
						        </div>
						    </div>
						    <div style="border-top: 1px solid #ced4da; margin-top : 2rem;"/>
						        <div style="justify-content:flex-end; display:flex; margin-top:1rem;">
                                     <button class="btn btn-primary normal auth"  style="padding-left:1rem; padding-right:1rem; height:3rem; font-size:0.8rem;"
                                       id="saveButton" onClick="sendProfileEditInfo();">저장 하기</button>
			                     </div>
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