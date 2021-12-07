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
	if(!isEmail(id)){
		isValid=false;
		$("#validateInputid").css('display','block');
	}else{
		$("#validateInputid").css('display','none');
	}
	
	//pw유효성 체크
	if(!isPassword(pw)){
		isValid=false;
		$("#validateInputpw").css('display','block');
	}else{
		$("#validateInputpw").css('display','none');
	}

	
	if(isEmpty(id)){
		isValid=false;
		$("#validateId").css('display','block');	
	}else{
		$("#validateId").css('display','none');
	}
	
	if(isEmpty(pw)){
		isValid=false;
		$("#validatePw").css('display','block');
	}else{
		$("#validatePw").css('display','none');
	}
	
	
	return isValid;
	
}


function login(){
	
	if(validationChk()){//입력값 체크 후 로그인 로직 처리

		//골뱅이 인코딩안되도록 replace처리
		//var formData = $("#contactForm").serialize().replace('%40','@');
		
		var params = {
		  id : $("#id").val(),
		  password : $("#password").val()
		}
		
		$.ajax({
			type :"POST",
		    url :"http://192.168.1.202:8080/v1/signin",
		    dataType: 'json',
		    data: JSON.stringify(params),
		    beforeSend : function(xhr){
		    	xhr.setRequestHeader("Accept","*/*");
		    	xhr.setRequestHeader("Content-Type","application/json");
		    	
		    },
		    success: function(res){	    
		    	if(res.success){
		    		alert('로그인에 성공하였습니다');
		    		
		    		//token처리
		    		var accessToken = res.data.accessToken;
		    		var refreshToken = res.data.refreshToken;
		    		
		    		localStorage.setItem("accToken", accessToken);
		    		localStorage.setItem("refToken", refreshToken);
		    		
		    		location.replace("/");
		    		
		   		}else{
		   		   msg  = rtnMsg(res.code);
		   		   alert(msg);
		   		}
		   		
		   		
		    },
		    
		    error : function(XMLHttpRequest, textStatus, errorThrown){
		    		var res = XMLHttpRequest.responseJSON;
					//alert(res.msg);
					alert(XMLHttpRequest.statusText);

		    }
		
		});
	}
	
}



$(document).ready(function () {

	init();

	$("#submitButton").click(function(){
			login();
	});
});
