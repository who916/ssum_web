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
	<script type="text/javascript" src="/bootstrap/js/post/postDetail.js"></script>
	<script type="text/javascript" src="/bootstrap/js/commonUtil.js"></script>
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/layout/gnb.jsp"%>
	<header class="pagehead"> </header>
	<!-- Main Page -->
	<input type="hidden" id="postId" value = "${postId}" />
	<main class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="my-5" style="justify-content: center; display: inline-block;">
						<label style="font-weight: 600; margin-bottom: 1rem;">작품 상세</label>
					</div>
					<form id="postDetailForm">
                        <div style="display:-webkit-inline-box; grid-gap:2rem; gap:2rem; margin-bottom:2rem;">
                            <img src="#" width="180px" height="240px" id="thumbnailImg">
                            <div style="display:flex; align-items : center; flex-direction:column;">
                                    <div style="margin-bottom :1rem; letter-spacing:3px;">
                                        <p id="title" style="line-height:2rem; font-size:1.5rem; font-weight:700;  margin-top:1.5rem; margin-bottom:0.5rem;"></p>
                                    </div>
                                    <div style="display:flex; justify-content : space-around;">
                                      <span id="likes" style="font-size:0.8rem; letter-spacing:1px; margin : 0 0.5rem;">
                                            <img src="/bootstrap/assets/img/icon/icon-star.png" width="15" height="15" alt="관심" style="padding-right:0.25rem;">
                                       </span>
                                       <span id="views" style="font-size:0.8rem; letter-spacing:1px; margin : 0 0.5rem;">
                                            <img src="/bootstrap/assets/img/icon/icon-eye.png" width="20" height="20" alt="HIT" style="padding-right:0.25rem;">
                                       </span>
                                       <span style='color:#dee2e6; margin : 0 0.5rem'>|</span>
                                       <span id ="boardName" style="font-size:0.8rem; letter-spacing:1px;"></span>
                                    </div>
                                <div style="border-top:1px solid #dee2e6; width:100%;">
                                    <p id="author" style="line-height:2rem; font-size:1rem; font-weight:700; margin-top:1rem; margin-bottom:0.5rem; display:flex; justify-content:center;">직장인A</p>
                                </div>
                            </div>
                            <div style="display:flex; align-items :baseline; flex-direction:column;">
                                <p style="font-weight:700; font-size:0.7rem; color:#c1c5c9; font-family:'NotoSan'; margin-bottom:1rem; margin-top:1rem;">작품설명</p>
                                <p id="content" style="font-family:'NotoSan'; font-size:1rem; margin-top:0; margin-bottom:0;"></p>
                                <div style="margin-top : 2rem; display:inline-flex;">
                                    <button class="btn btn-primary normal auth">이어보기</button>
                                    <button class="btn btn-outline-primary auth" style="margin-left:0.5rem;">첫화보기</button>
                                </div>
                            </div>
                         </div>
                        <!--작품 회차 목록 -->
                        <div class="article-book-wrapper">
                               <span class="article-tab-container">
                                     <!-- 탭 -->
                                   <div class="nav-tabs" style="display:flex;border:none;">
                                       <div class="nav-link" style="border:none;">작품 회차</div>
                                       <div class="nav-link" style="border:none;">작가공지</div>
                                   </div>
                                   <!--order by-->
                               </span>
                        <!--회차목록-->
                             <div class="post-preview">
                                <a href="#">
                                    <div class="post-title episode-item" style="margin-top:0.625rem;font-size:1rem;">
                                         <td>1. 퇴근까지 2시간15분 첫번째 에피소드</td>
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="post-title episode-item" style="margin-top:0.625rem;font-size:1rem;">
                                         2. 퇴근까지 2시간15분 두번째 에피소드
                                    </div>
                                </a>
                                <a href="#">
                                    <div class="post-title episode-item" style="margin-top:0.625rem;font-size:1rem;">
                                         3. 퇴근까지 2시간15분 세번째 에피소드
                                    </div>
                                </a>
                             </div>
                           <!-- Page 처리 -->
                           <div style="display:flex; justify-content:center;">
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