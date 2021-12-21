var commonUtil;

function init(){
 //안내 문구 reset
 $(".invalid-feedback").css('display','none');
 
 //입력값 초기화
 var elements = $("#signUpForm .form-control");
 for(var i=0; i < elements.length; i++){
 	   var id = elements.eq(i).attr("id");
 	   $("#"+id).val('');
 }
 $("#cell1").val('010');
 
 //성별초기화
 $('input:radio[name=male]').prop('checked',true);
 $('input:radio[name=female]').prop('checked',false);
 
 $("#gender").val('m');
 
}

function validationChk(){
	var isValid = true;
    var invalidCnt  = 0;

    //form 내 input class 전부 validation 체크
    //기본 설정 값이 있는 성별 및 전화번호 앞자리 제외
    var elements = $("#signUpForm .form-control");
	for(var i=0; i < elements.length; i++){
	   var id = elements.eq(i).attr("id");
	   var value = $("#"+id).val();

	   //경고 문구 화면 유무여부
	   var displayVal = 'none';

	   //공란 체크
	   if(commonUtil.isEmpty(value)){
       		displayVal = 'block';
       	}else{
       		displayVal = 'none';
       	}

       	//생년월일 및 전화번호 항목일 경우 경고문구 id 변경
       	var validateId = id;
       	if(id.indexOf('cell') != -1){
       	   validateId = 'cell';
       	}else if(id == 'yyyy' || id == 'mm' || id == 'dd'){
       	   validateId = 'birth';
       	}

       	$("#validate"+validateId).css('display',displayVal);

        if(displayVal == 'block'){
             invalidCnt ++;
        }

       	//형태 체크
       	var chkType = $("#"+id).attr('data-sb-type');
       	if(chkType == 'email'){
       	    if(commonUtil.isEmail(value)){
       	        displayVal = 'none';
       	    }else{
       	        displayVal = 'block';
       	    }
       	}else if(chkType == 'password'){
       	    if(commonUtil.isPassword(value)){
                 displayVal = 'none';
            }else{
                 displayVal = 'block';
             }
       	}else if(chkType == 'name'){
       	    if(commonUtil.isKorean(value)){
                 displayVal = 'none';
            }else{
                 displayVal = 'block';
            }
       	}else if(chkType == 'number'){
       	    if(commonUtil.isNum(value)){
                 displayVal = 'none';
            }else{
                 displayVal = 'block';
            }
       	}

        $("#validateInput"+validateId).css('display',displayVal);

        if(displayVal == 'block'){
              invalidCnt ++;
        }
	}


	if($("#pwChk").val() != $("#pw").val()){
		invalidCnt++;
		$("#validateSamepwChk").css('display','block');
	}else{
		$("#validateSamepwChk").css('display','none');
	}
	


	if(invalidCnt > 0 ){
	    isValid = false;
	}
	

	return isValid;
	
}

function signUp(){
	
	if(validationChk()){//입력값 체크 후 로그인 로직 처리
		var params = {
		   	email : $("#id").val()
		   ,password : $("#pw").val()
		   ,name : $("#name").val()
		   ,phone : $("#cell1").val()+$("#cell2").val()+$("#cell3").val()
		   ,profileImageUrl : ''
		}

	    var header = {"Content-Type": "application/json"
        	         ,"Accept": "application/json"};

		commonUtil.sendAjax("POST","v1/join",header, params, function(res){
		    if(res.code == '0'){ //success return
            	alert('가입이 완료되었습니다. 로그인 화면으로 이동합니다.');
            	commonUtil.redirect("/login");

            }else{
            	var msg  = rtnMsg(res.code);
            	alert(msg);
            }
		}, function(res){ //error return
             commonUtil.failFunc(res);
        });

	}

}



$(document).ready(function () {
    commonUtil = commonUtil.prototype;
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
