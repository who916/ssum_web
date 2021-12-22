<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<link href="/bootstrap/css/postStyles.css" rel="stylesheet" />
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
	<!-- js -->
	<script type="text/javascript" src="/bootstrap/js/community/freeTalkDetail.js"></script>
	<script type="text/javascript" src="/bootstrap/js/utils/commonUtil.js"></script>
	<script type="text/javascript" src="/bootstrap/js/utils/postUtil.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
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
	<!-- Main Page -->
	<input type="hidden" id="postId" value = "${postId}" />
	<main class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="my-5" style="justify-content: center; display: inline-block; margin-bottom:1rem !important;">
						<label style="font-weight: 600; margin-bottom: 1rem;" id="title"></label>
			            <div style="display:flex; justify-content : space-around;">
			                 <img src='/bootstrap/assets/img/icon/avatar.png' style='width:2rem; aspect-ratio:1/1; margin-right:0.5rem;' id='profileImageUrl'>
			                 <span id="postOwner" style="line-height:2rem; font-size:1rem; color:#707070; font-weight:700; display:flex; justify-content:center;"></span>
			                 <span style='color:#dee2e6; margin : 0 0.5rem'>|</span>
			                 <div style="display:inherit; margin-top:0.3rem;">
                                 <span id="likes" style="font-size:0.8rem; letter-spacing:1px; margin : 0 0.5rem;">
                                     <img src="/bootstrap/assets/img/icon/icon-star.png" width="15" height="15" alt="관심" style="padding-right:0.25rem;">
                                 </span>
                                 <span id="views" style="font-size:0.8rem; letter-spacing:1px; margin : 0 0.5rem;">
                                      <img src="/bootstrap/assets/img/icon/icon-eye.png" width="20" height="20" alt="HIT" style="padding-right:0.25rem;">
                                  </span>
                              </div>
                        </div>
					</div>
					<div id="freeTalkDetailForm" style="border-top:1px solid #dee2e6;">
					   <!--본문 ---->
                        <div style="display:-webkit-inline-box; grid-gap:2rem; gap:2rem; margin-bottom:2rem; margin-top:1.5rem;">
                            <img src="/bootstrap/assets/img/bg/home-bg.jpg" width="180px" height="240px" id="thumbnailImg">
                            <div id="content" style="font-size :1rem; font-family:'NotoSan';">
                            </div>
                        </div>
                        <!-- 댓글 창 --->
                        <div style="border-top:1px solid #dee2e6;"></div>
                        <label for="comment" style="font-size:1rem;margin-top:1rem;margin-bottom:0.75rem;">댓글 <span style="font-weight:700; font-size:0.75rem;color:#006a81;" id='commentCnt'></span></label>
                        <!--댓글 리스트 -->
                        <div class="post-preview" id="commentList">
                            <!--div class="post-title episode-item" style="margin-top:0.625rem;font-size:1rem;">
                                 <img src='/bootstrap/assets/img/icon/avatar.png' style='width:2rem; aspect-ratio:1/1; margin-right:0.5rem;' id='profileImageUrl'>
                                 <span style="line-height:2rem; font-size:0.8rem; color:#707070;">직장인1</span><br>
                                 <span style="font-size:0.8rem; display:inline-grid;color:#707070;font-weight:500">댓글 테스트 댓글 댓글</span>
                             </div>
                             <div class="post-title episode-item" style="margin-top:0.625rem;font-size:1rem;">
                                   <img src='/bootstrap/assets/img/icon/avatar.png' style='width:2rem; aspect-ratio:1/1; margin-right:0.5rem;'>
                                   <span style="line-height:2rem; font-size:0.8rem; color:#707070;">직장인1</span><br>
                                   <span style="font-size:0.8rem; display:inline-grid;color:#707070; font-weight:500">퍼블퍼블</span>
                              </div>-->
                             </div>
                        <!-- 댓글 Page 처리 -->
                        <div style="display:flex; justify-content:center; margin-top:1rem; margin-bottom:1rem;">
                            <div class="pagination" id="commentPaging">
                            </div>
                           </div>
                        </div>
                        <div class="form-floating">
							<textarea class="form-control" id="comment"
								placeholder="Enter your introduce here..." style="height: 12rem; border:1px solid #ced4da;"></textarea>
						</div>
                        <div style="border-top: 1px solid #ced4da; margin-top : 2rem; justify-content:space-between; display:flex;"/>
                                <div style="margin-top:1rem;">
                                  <button class="btn btn-outline-primary normal auth"  style="padding-left:1rem; padding-right:1rem; height:3rem; font-size:0.8rem;"
                                        id="listButton" onClick="commonUtil.redirect('/community/freeTalk.do');">목록</button>
                        		 </div>
						        <div style="margin-top:1rem;">
                                     <button class="btn btn-primary normal auth"  style="padding-left:1rem; padding-right:1rem; height:3rem; font-size:0.8rem;"
                                       id="submitComment" onClick="submitComment();">등록</button>
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