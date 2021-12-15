<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/bootstrap/css/styles.css" rel="stylesheet" />
<link href="/bootstrap/css/postStyles.css" rel="stylesheet" />
</head>
<body>
<!-- jQuery -->
	<script src="/webjars/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/bootstrap/js/scripts.js"></script>
	<!-- JS -->
	<script type="text/javascript" src="/bootstrap/js/commonUtil.js"></script>
	<script type="text/javascript" src="/bootstrap/js/post/post.js"></script>
	<!-- Contents-->
	 <div class="container px-4 px-lg-5">
           <div class="row gx-4 gx-lg-5 justify-content-center">
             <div class="col-md-10 col-lg-8 col-xl-7" style="display:inline-grid;">
                <!--추천 글 리스트 -->
				<article class="post_unit" id="likesUnit">
				    <div class="unit_header">
				        <label style="font-weight: 600; margin-bottom: 1.25rem;">추천 글 리스트</label>
				    </div>
				    <div class="thumb_type01" id ="likesUnitList">
				       <!-- post item-->
				       <div class = "bx-wrapper" style="max-width:1000px;">
				            <div class="bx-viewport" aria-live="polite">
				                <ul id="likesList">
				                  <!--Sample Contents Area-->
                                    <li class="item" style="border-radius : 15px;-webkit-border-radius : 15px;overflow : hidden; border-width : 1px;" value="1" onClick='goPostDetailPage(this);'>
				                        <a href="#" class="cover">
				                            <span class="in">
				                                <img src="/bootstrap/assets/img/book/suggest/readbook-1.png" alt="표지1">
				                            </span>
				                        </a>
				                        <div class="infoBox">
				                            <a href="#" class="tit">테스트1</a>
				                            <div class="sub01" style="overflow-wrap:break-word;">
				                                <span class="author">지은이1</span>
				                            </div>
				                            <div class ="sub02">
				                            	<span class="hit hitYn">
                                                      <img src="/bootstrap/assets/img/icon/icon-star.png" width="15" height="15" alt="관심" style="padding-right:0.25rem;">96</span>
                                                </span>
				                                <span class="hit hitYn">
				                                    <img src="/bootstrap/assets/img/icon/icon-eye.png" width="20" height="20" alt="HIT" style="padding-right:0.25rem;">1.5만</span>
				                                </span>
				                            </div>
				                        </div>
				                    </li>
				                </ul>
				            </div>
				            <!--스크롤 -->
				            <div class="bx-controls bx-has-controls bx-has-page">
				                <div class="bx-controls-direction">
				                  <a class="bx-prev" href>Prev</a>
				                  <a class="bx-next" href>Next</a>
				                </div>
				                <div class="bx-pager bx-default-pager">
				                    <div class="bx-pager-item">
				                        <a href data-slide-index="0" class="bx-pager-link">1</a>
				                    </div>
				                    <div class="bx-pager-item">
				                        <a href data-slide-index="1" class="bx-pager-link">2</a>
				                    </div>
				                </div>
				            </div>
				       </div>
				    </div>
				</article>
				<!-- 최신 글 리스트 -->
				<div style="border-top:1px solid #dee2e6; margin-bottom:2rem;"></div>
                <article class="post_unit" id="newUnit">
				    <div class="unit_header">
				        <label style="font-weight: 600; margin-bottom: 1.25rem;">최신 글 리스트</label>
				    </div>
				    <div class="thumb_type01" id ="newUnitList">
				       <!-- post item-->
				       <div class = "bx-wrapper">
				            <div class="bx-viewport" aria-live="polite">
				                <ul id="newList">
				                 <!--Sample Contents Area-->
				                    <li class="item" style="border-radius : 15px;-webkit-border-radius : 15px;overflow : hidden; border-width : 1px;" value="2" onClick='goPostDetailPage(this);'>
				                        <a href="#" class="cover">
				                            <span class="in">
				                                <img src="/bootstrap/assets/img/book/suggest/readbook-1.png" alt="표지1">
				                            </span>
				                        </a>
				                        <div class="infoBox">
				                            <a href="#" class="tit">테스트1</a>
				                            <div class="sub01" style="overflow-wrap:break-word;">
				                                <span class="author">지은이1</span>
				                            </div>
				                            <div class ="sub02">
				                            	<span class="hit hitYn">
                                                      <img src="/bootstrap/assets/img/icon/icon-star.png" width="15" height="15" alt="관심" style="padding-right:0.25rem;">96</span>
                                                </span>
				                                <span class="hit hitYn">
				                                    <img src="/bootstrap/assets/img/icon/icon-eye.png" width="20" height="20" alt="HIT" style="padding-right:0.25rem;">1.5만</span>
				                                </span>
				                            </div>
				                        </div>
				                    </li>
				                </ul>
				            </div>
				            <!--스크롤 -->
				            <div class="bx-controls bx-has-controls bx-has-page">
				                <div class="bx-controls-direction">
				                  <a class="bx-prev" href>Prev</a>
				                  <a class="bx-next" href>Next</a>
				                </div>
				                <div class="bx-pager bx-default-pager">
				                    <div class="bx-pager-item">
				                        <a href data-slide-index="0" class="bx-pager-link">1</a>
				                    </div>
				                    <div class="bx-pager-item">
				                        <a href data-slide-index="1" class="bx-pager-link">2</a>
				                    </div>
				                </div>
				            </div>
				       </div>
				    </div>
				</article
                <!-- 인기 글 리스트 -->
				<div style="border-top:1px solid #dee2e6; margin-bottom:2rem; "></div>
                <article class="post_unit" id="viewsUnit"  style="margin-bottom : 5rem !important;">
				    <div class="unit_header">
				        <label style="font-weight: 600; margin-bottom: 1.25rem;">인기 글 리스트</label>
				    </div>
				    <div class="thumb_type01" id ="viewsUnitList">
				       <!-- post item-->
				       <div class = "bx-wrapper" style="max-width:1000px;">
				            <div class="bx-viewport" aria-live="polite">
				                <ul id="viewsList">
				                 <!--Sample Contents Area-->
				                    <li class="item" style="border-radius : 15px;-webkit-border-radius : 15px;overflow : hidden; border-width : 1px;" value="3" onClick='goPostDetailPage(this);'>
				                        <a href="#" class="cover">
				                            <span class="in">
				                                <img src="/bootstrap/assets/img/book/suggest/readbook-1.png" alt="표지1">
				                            </span>
				                        </a>
				                        <div class="infoBox">
				                            <a href="#" class="tit">테스트1</a>
				                            <div class="sub01" style="overflow-wrap:break-word;">
				                                <span class="author">지은이1</span>
				                            </div>
				                            <div class ="sub02">
				                            	<span class="hit hitYn">
                                                      <img src="/bootstrap/assets/img/icon/icon-star.png" width="15" height="15" alt="관심" style="padding-right:0.25rem;">96</span>
                                                </span>
				                                <span class="hit hitYn">
				                                    <img src="/bootstrap/assets/img/icon/icon-eye.png" width="20" height="20" alt="HIT" style="padding-right:0.25rem;">1.5만</span>
				                                </span>
				                            </div>
				                        </div>
				                    </li>
				                </ul>
				            </div>
				            <!--스크롤 -->
				            <div class="bx-controls bx-has-controls bx-has-page">
				                <div class="bx-controls-direction">
				                  <a class="bx-prev" href>Prev</a>
				                  <a class="bx-next" href>Next</a>
				                </div>
				                <div class="bx-pager bx-default-pager">
				                    <div class="bx-pager-item">
				                        <a href data-slide-index="0" class="bx-pager-link">1</a>
				                    </div>
				                    <div class="bx-pager-item">
				                        <a href data-slide-index="1" class="bx-pager-link">2</a>
				                    </div>
				                </div>
				            </div>
				       </div>
				    </div>
				</article>
		    </div>
        </div>
         </div>
         </body>
 </html>