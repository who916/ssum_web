function init(){
 //안내 문구 reset
 $(".invalid-feedback").css('display','none');
 
 //입력값 초기화
 $("#id").val('');
 $("#password").val('');
 $("#passwordChk").val('');
 $("#name").val('');
 $("#yyyy").val('');
 $("#mm").val('');
 $("#dd").val('');
 $("#cell1").val('010');
 $("#cell2").val('');
 $("#cell3").val('');
 
 //성별초기화
 $('input:radio[name=male]').prop('checked',true);
 $('input:radio[name=female]').prop('checked',false);
 
 $("#gender").val('m');
 
}

function validationChk(){
	var isValid = true;
	
	var id = $("#id").val();
	var pw = $("#password").val();
	var pwChk = $("#passwordChk").val();
	var name = $("#name").val();
	//생년월일
	var yyyy = $("#yyyy").val();
	var mm = $("#mm").val();
	var dd = $("#dd").val();
	//전화번호
	var cell1 = $("#cell1").val();
	var cell2 = $("#cell2").val();
	var cell3 = $("#cell3").val();
	
	
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
	
	if(isEmpty(pwChk)){
		isValid=false;
		$("#validateChkPw").css('display','block');
	}else{
		$("#validateChkPw").css('display','none');
	}
	
	//이름체크
	if(isEmpty(name)){
		isValid=false;
		$("#validateName").css('display','block');
	}else{
		$("#validateName").css('display','none');
	}
	
	//생년월일체크
	if(isEmpty(yyyy) || isEmpty(mm) || isEmpty(dd)){
		isValid=false;
		$("#validateBirth").css('display','block');
	}else{
		$("#validateBirth").css('display','none');
	}
	
	//전화번호체크
	if(isEmpty(cell1) || isEmpty(cell2) || isEmpty(cell3)){
		isValid=false;
		$("#validateCellNum").css('display','block');
	}else{
		$("#validateCellNum").css('display','none');
	}
	
	if(pwChk != pw){
		isValid=false;
		$("#validateChkValidpw").css('display','block');
	}else{
		$("#validateChkValidpw").css('display','none');
	}
	
	//id유효성 체크
	if(isEmail(id)){
		$("#validateInputid").css('display','none');
	}else{
		isValid=false;
		$("#validateInputid").css('display','block');
	}
	
	//pw유효성 체크
	if(isPassword(pw)){
		$("#validateInputpw").css('display','none');
	}else{
		isValid=false;
		$("#validateInputpw").css('display','block');
	}
	
	//pw 확인 유효성 체크
	if(isPassword(pwChk)){
		$("#validateChkInputpw").css('display','none');
	}else{
		isValid=false;
		$("#validateChkInputpw").css('display','block');
	}

	//이름 유효성 체크
	if(isKorean(name)){
		$("#validateInputName").css('display','none');
	}else{
		isValid=false;
		$("#validateInputName").css('display','block');
	}
	
     //생년월일 유효성 체크
	if(isNum(yyyy) || isNum(mm) || isNum(dd)){
		$("#validateInputBirth").css('display','none');
	}else{
		isValid=false;
		$("#validateInputBirth").css('display','block');
	}
	
	
	//전화번호 유효성 체크
	if(isNum(cell1) || isNum(cell2) || isNum(cell3)){
		$("#validateInputCellNum").css('display','none');
	}else{
		isValid=false;
		$("#validateInputCellNum").css('display','block');
	}
	
	

	return isValid;
	
}

function signUp(){
	
	if(validationChk()){//입력값 체크 후 로그인 로직 처리
		var params = {
		   	id : $("#id").val()
		   ,password : $("#password").val()
		   ,name : $("#name").val()
		}
		
		$.ajax({
			type :"POST",
		    url :"http://192.168.1.202:8080/v1/signup",
		    dataType: 'json',
		    data: JSON.stringify(params),
		    beforeSend : function(xhr){
		    	xhr.setRequestHeader("Accept","*/*");
		    	xhr.setRequestHeader("Content-Type","application/json");
		    	
		    },
		    success: function(res){
		    	if(res.success){
		    		alert('가입에 성공하였습니다. 로그인 화면으로 이동합니다.');

		    		location.replace("/login");
		    		
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
	

	//성별라디오 버튼 제어
	$('input:radio[name=male]').click(function(){
	   if($("#gender").val()=='f'){
	   		 $('input:radio[name=male]').prop('checked',true);
 			 $('input:radio[name=female]').prop('checked',false);
 			 $("#gender").val('m');
	   }
	});
	
	$('input:radio[name=female]').click(function(){
	   if($("#gender").val()=='m'){
	   		 $('input:radio[name=male]').prop('checked',false);
 			 $('input:radio[name=female]').prop('checked',true);
 			 $("#gender").val('f');
	   }
	});

	$("#confirmAuth").click(function(){
			signUp();
	});
});
