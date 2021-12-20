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
	<!-- jQuery -->
	<script src="/webjars/jquery/dist/jquery.min.js"></script>
    <!-- js -->
    <script type="text/javascript" src="/bootstrap/js/utils/commonUtil.js"></script>
    <script type="text/javascript" src="/bootstrap/js/utils/postUtil.js"></script>
    <script type="text/javascript" src="/bootstrap/js/community/freeTalkMain.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<!-- Page Header-->
	<header class="pagehead"
		style="background-image: url('/bootstrap/assets/img/bg/home-bg.jpg')">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="site-heading">
						<h1 style="color:#FFFFFF; text-align:center;">자유게시판</h1>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Main Content-->
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-md-10 col-lg-8 col-xl-7" style="display:inline-grid;">
			    <div style="display:flex; justify-content:space-between;">
			      <a href="#!" style="font-size:1rem; margin-left:1rem; margin-top:0.5rem">
			       <img src="/bootstrap/assets/img/icon/icon-megaphone.png" style="margin-right:0.5rem;width:30px;">자유게시판 이용수칙 입니다.</a>
			      <a href="#!">
			        <button class="btn btn-primary normal auth text-uppercase" style="padding-left:1rem; padding-right:1rem; height:3rem; font-size:0.8rem;">새 글 등록</button>
			      </a>
			   </div>
			    <div style="border-top:1px solid #dee2e6; margin-top:1rem;"/>
				<!-- Pager-->
				<div id="freeList" style="margin-top:1.5rem">
                     <!--<div class='post-preview' style='display:flex; flex-direction:inherit; justify-content:space-between;' id='postId' value="+postId+">
                          <div style='display:block; margin-left :1rem;'>
                            <div onClick='postUtil.goPostDetailPage(postId);'>
                                <h3 class='post-title' style='margin-top:1rem; font-size:1.25rem;' id='title'>
                                    <a href='#!'>title</a>
                                </h3>
                            </div>
                            <div>
                               <p style='margin:0; margin-bottom:1.5rem; margin-top:1rem; color:#707070; font-family:NotoSan; font-size:1rem; font-weight:100;' id='content'>content</p>
                            </div>
                            <div style='display:flex; justify-content :flex-start;'>
                                 <img src='/bootstrap/assets/img/icon/avatar.png' style='width:2rem; aspect-ratio:1/1; margin-right:0.5rem;'>
                                 <p class='post-meta' style='margin:0; font-size:1rem;' id='name'><a href='#!'>name</a></p>
                                 <span style='color:#dee2e6; margin:0 0.5rem;'>|</span>
                                 <span id='views' style='font-size:0.8rem; letter-spacing:1px;'>
                                    <img src='/bootstrap/assets/img/icon/icon-eye.png' width='20' height='20' alt='HIT' style='padding-right:0.25rem;'>views</span>
                            </div>
                          </div>
                           <div>
                              <img src='/bootstrap/assets/img/book/readBook1.png' style='width:10rem; aspect-ratio:1/1;' id='thumbnailUrl'>
                           </div>
                     </div>
                                 <hr class='my-4' />-->
				</div>
                <div style="display:flex; justify-content:center; margin-bottom :2rem;">
                   <div class="pagination" id="freePaging">
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