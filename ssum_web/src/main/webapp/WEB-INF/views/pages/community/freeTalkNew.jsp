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
	<script type="text/javascript" src="/bootstrap/js/community/freeTalkNew.js"></script>
	<script type="text/javascript" src="/bootstrap/js/utils/commonUtil.js"></script>
	<script type="text/javascript" src="/bootstrap/js/utils/postUtil.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<header class="pagehead"> </header>
	<!-- Main Page -->
	<main class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="my-5"> <!--style="justify-content: center; display: grid;">-->
					   <div style ="display: inline-block; margin-bottom:2rem;" >
						    <label style="font-weight: 600; margin-bottom: 1.25rem;">게시글 등록</label>
                        </div>
                        <div id="freeTalkNewForm" style="margin-bottom: 0.8rem;">
                            <label for="category" style="margin-bottom: 1rem; font-size:1rem;">카테고리</label>
							  <select class="form-select" id="category" type="text" style="margin-bottom: 1rem; height:3rem; font-size:1rem;"
									placeholder="Select to category..." data-sb-validations="required" data-sb-type="category">
									<option value="1">구해요</option>
									<option value="2">나눠요</option>
									<option value="3">자랑해요</option>
							    </select>
								<div class="invalid-feedback" id="validatecategory" data-sb-feedback="category:required">말머리는 필수 입니다.</div>
                            <div class="form-floating"  style="margin-bottom: 1rem;">
								<input class="form-control" id="title" type="text"
									placeholder="Enter to title..." data-sb-validations="required" data-sb-type="title" />
								<label for="title" style="font-size:1rem;">제목 </label>
								<div class="invalid-feedback" id="validatetitle" data-sb-feedback="title:required">제목은 필수 입니다.</div>
							</div>
		                    <div class="form-floating"  style="margin-bottom: 1rem;">
        								<input class="form-control" id="author" type="text"
        									placeholder="Enter your name..." data-sb-validations="required" data-sb-type="name" />
        								<label for="author" style="font-size:1rem;">작성자</label>
        								<div class="invalid-feedback" id="validateauthor" data-sb-feedback="author:required">제목은 필수 입니다.</div>
        							</div>
                            <div class="form-floating">
								<textarea class="form-control" id="content"
									placeholder="Enter to Contents here..." style="height: 12rem"
									data-sb-validations="required"></textarea>
								<label for="content" style="font-size:1rem;">내용</label>
								<div class="invalid-feedback" id="validatecontent"
									data-sb-feedback="message:required">게시글 내용 입력은 필수 입니다.</div>
							</div>
                        </div>
                        <!-- 등록 버튼 -->
						<div style="border-top: 1px solid #ced4da; margin-top : 2rem;"/>
                           <div style="justify-content:flex-end; display:flex; margin-top:1rem;">
                              <button class="btn btn-primary normal auth" style="padding-left:1rem; padding-right:1rem; height:3rem; font-size:0.8rem;"
                                   id="submitButton" onClick="submitPost();">게시글 등록</button>
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