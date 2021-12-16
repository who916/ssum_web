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
    <!-- js -->
    <script type="text/javascript" src="/bootstrap/js/utils/commonUtil.js"></script>
    <script type="text/javascript" src="/bootstrap/js/utils/postUtil.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<!-- Page Header-->
	<header class="masthead"
		style="background-image: url('/bootstrap/assets/img/bg/home-bg.jpg')">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="site-heading">
						<h1>소설</h1>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Main Content-->
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-md-10 col-lg-8 col-xl-7" id="novelList">
				<!-- Post preview-->
				<div class="post-preview" style="display:flex; margin-left:1rem;" id="postId">
				    <img src="/bootstrap/assets/img/book/readBook2.png" width="200px" height="250px"/>
					  <a href="../../post.html">
					   <div style="display:block; margin-left :1rem;">
					   <div>
					    <!--title-->
						<h2 class="post-title" style="margin-top:1rem;" id="title">Man must explore, and this is
							exploration at its greatest</h2>
					    </a>
					   </div>
					   <!--작가-->
					   <div>
                        <p class="post-meta" style="margin:0; font-size:1rem;" id="author">
                            Posted by <a href="#!">Start Bootstrap</a></p>
                       </div>
                       <!--소개 -->
                       <div>
                        <p style="margin:0; margin-bottom:1.5rem; margin-top:1rem; font-family:'NotoSan';" id="content">소개소개</p>
                       </div>
                          <div style="display:inline-block; justify-content : space-around;">
                              <span id="likes" style="font-size:0.8rem; letter-spacing:1px;">
                                  <img src="/bootstrap/assets/img/icon/icon-star.png" width="15" height="15" alt="관심" style="padding-right:0.25rem;">5
                               </span>
                               <span id="views" style="font-size:0.8rem; letter-spacing:1px;">
                                   <img src="/bootstrap/assets/img/icon/icon-eye.png" width="20" height="20" alt="HIT" style="padding-right:0.25rem;">4
                               </span>
                               <span style='color:#dee2e6;'>|</span>
                               <span id ="boardName" style="font-size:0.8rem; letter-spacing:1px;"></span>
                           </div>
                      </div>
				</div>
				<!-- Divider-->
				<hr class="my-4" />
				<!-- Post preview-->
				<div class="post-preview">
					<a href="../../post.html"><h2 class="post-title">I believe
							every human has a finite number of heartbeats. I don't intend to
							waste any of mine.</h2></a>
					<p class="post-meta">
						Posted by <a href="#!">Start Bootstrap</a> on September 18, 2021
					</p>
				</div>
				<!-- Divider-->
				<hr class="my-4" />
				<!-- Post preview-->
				<div class="post-preview">
					<a href="../../post.html">
						<h2 class="post-title">Science has not yet mastered prophecy</h2>
						<h3 class="post-subtitle">We predict too much for the next
							year and yet far too little for the next ten.</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#!">Start Bootstrap</a> on August 24, 2021
					</p>
				</div>
				<!-- Divider-->
				<hr class="my-4" />
				<!-- Post preview-->
				<div class="post-preview">
					<a href="../../post.html">
						<h2 class="post-title">Failure is not an option</h2>
						<h3 class="post-subtitle">Many say exploration is part of our
							destiny, but itâs actually our duty to future generations.</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#!">Start Bootstrap</a> on July 8, 2021
					</p>
				</div>
				<!--End of ListArea -->
				<!-- Divider-->
				<hr class="my-4" />
				<!-- Pager-->
                <div style="display:flex; justify-content:center; margin-bottom :2rem;">
                   <div class="pagination">
                      <div class="page-link custom-page-link">1</div>
                      <div class="page-link custom-page-link">2</div>
                      <div class="page-link custom-page-link">3</div>
                      <div class="page-link custom-page-link">4</div>
                      <div class="page-link custom-page-link">5</div>
                      <div class="page-link custom-page-link">6</div>
                      <div class="page-link custom-page-link"><div>다음</div></div>
                    </div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/bootstrap/js/scripts.js"></script>
</body>
</html>