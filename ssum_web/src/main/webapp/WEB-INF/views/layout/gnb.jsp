<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- jQuery -->
<script src="/webjars/jquery/dist/jquery.min.js"></script>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
		<div class="container px-4 px-lg-5">
			<a href="/" class="navbar-brand">쑴</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<!-- PC -->
				<ul class="navbar-nav ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="#">작품읽기</a>
						<ul class="navbar-sub">
						  <li class="navbar-sub-item"><a href="/read-book/novel.do" class="nav-sub-link px-lg-3 py-3 py-lg-4">소설</a></li>
						  <li class="navbar-sub-item"><a href="/read-book/novel.do" class="nav-sub-link px-lg-3 py-3 py-lg-4">시·에세이</a></li>
						</ul>	
					</li>
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="#">창작하기</a>
					    <ul class="navbar-sub">
						  <li class="navbar-sub-item"><a href="/author/registration.do" class="nav-sub-link px-lg-3 py-3 py-lg-4">작가 신청하기</a></li>
						</ul>
					</li>
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="#">커뮤니티</a>
						<ul class="navbar-sub">
						  <li class="navbar-sub-item"><a href="/community/home.do" class="nav-sub-link px-lg-3 py-3 py-lg-4">홈</a></li>
						  <li class="navbar-sub-item"><a href="/community/home.do" class="nav-sub-link px-lg-3 py-3 py-lg-4">자유게시판</a></li>
						  <li class="navbar-sub-item"><a href="/community/home.do" class="nav-sub-link px-lg-3 py-3 py-lg-4">매거진</a></li>
						  <li class="navbar-sub-item"><a href="/community/home.do" class="nav-sub-link px-lg-3 py-3 py-lg-4">프로모션</a></li>
						</ul>
					</li>
					<li class="nav-item logout"><a class="nav-link px-lg-3 py-3 py-lg-4"
							href="/login/login.do">로그인</a>
					</li>
					<li class="nav-item login" style="display:none;"><a class="nav-link px-lg-3 py-3 py-lg-4"
							href="/login/profile.do">프로필</a>
					</li>
					<li class="nav-item login" style="display:none;"><a class="nav-link px-lg-3 py-3 py-lg-4"
							onClick="logout();">로그아웃</a>
					</li>
					</div>
				</ul>
			</div>
		</div>
	</nav>
<script type="text/javascript">
function logout(){
	
	localStorage.removeItem("accToken");
	localStorage.removeItem("refToken");
	
	alert("로그아웃 되었습니다.");
	
	
	location.replace("/");
}


function chkLogin(){
	//token확인
	var accToken = localStorage.getItem("accToken");
	var refToken = localStorage.getItem("refToken");
	
	if(accToken != null){
		$(".login").css("display","block");
		$(".logout").css("display","none");
	}else{
		$(".login").css("display","none");
		$(".logout").css("display","block");
	}
}

$(document).ready(function () {
	
	chkLogin();
	
});
</script>
</body>
</html>