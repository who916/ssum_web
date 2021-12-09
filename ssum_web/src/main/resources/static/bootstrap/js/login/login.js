var commonUtil;


function init(){
 //안내 문구 reset
 $(".invalid-feedback").css('display','none');
 
 //입력값 초기화
 $("#id").val('');
 $("#password").val('');
}

function validationChk(){
	var isValid = true;
	
	var id = $("#id").val();
	var pw = $("#password").val();
	var pwChk = $("#passwordChk").val();
	
	//id유효성 체크
	if(!commonUtil.isEmail(id)){
		isValid=false;
		$("#validateInputid").css('display','block');
	}else{
		$("#validateInputid").css('display','none');
	}
	
	//pw유효성 체크
	if(!commonUtil.isPassword(pw)){
		isValid=false;
		$("#validateInputpw").css('display','block');
	}else{
		$("#validateInputpw").css('display','none');
	}

	
	if(commonUtil.isEmpty(id)){
		isValid=false;
		$("#validateId").css('display','block');	
	}else{
		$("#validateId").css('display','none');
	}
	
	if(commonUtil.isEmpty(pw)){
		isValid=false;
		$("#validatePw").css('display','block');
	}else{
		$("#validatePw").css('display','none');
	}
	
	
	return isValid;
	
}

function setTokens(res){
     if(res.success){
		   alert('로그인에 성공하였습니다');

		   //token처리
		   var accessToken = res.data.accessToken;
		   var refreshToken = res.data.refreshToken;

		   localStorage.setItem("accToken", accessToken);
		   localStorage.setItem("refToken", refreshToken);

		   commonUtil.redirect("/");

		   }else{
		    var msg  = commonUtil.rtnMsg(res.code);
		    alert(msg);
		   }

}


function login(){
	
	if(validationChk()){//입력값 체크 후 로그인 로직 처리

		var params = {
		  id : $("#id").val(),
		  password : $("#password").val()
		}

		commonUtil.sendAjax("POST", "v1/signin","",params, function(res){setTokens(res);}, function(res){
		       var msg = "";
		       if(res.responseJSON != null){
		          msg = res.responseJSON.msg;

		       }else{
		           msg = res.statusText;
		       }

		       alert(msg);

		});

	}
	
}



$(document).ready(function () {
    commonUtil = commonUtil.prototype;
	init();

	$("#submitButton").click(function(){
			login();
	});
});
