var name = "";
var phone = "";
var profileImg = "";
var uid = "";
var commonUtil;

function setProfileInfo(result){

    if(result.code=='0' && result.data != null){
       name = result.data.name;
        phone = result.data.phone;
        profileImageUrl = result.data.profileImageUrl;
        uid = result.data.uid;

        //이름세팅
        if(name != null){
            $("#profileNm").val(name);
        }
        //전화번호세팅
        if(phone != null){
            $("#profilePhone").val(phone);
        }
        //img세팅
        if(profileImageUrl != null && profileImageUrl != '' && profileImageUrl != 'undefined'){
            document.getElementById("profileImg").src = profileImageUrl;
        }

        //이름에 포커스 주기
        document.getElementById('profileNm').focus();
    }else{
         var msg  = commonUtil.rtnMsg(result.code);
         alert(msg);
    }
}

function getProfileInfo(){
            var accToken = localStorage.getItem("accToken");
            var header = {
                "X-AUTH-TOKEN" : accToken
            }

            commonUtil.sendAjax("GET","http://13.209.61.51:8080/v1/user",header, accToken, function(res){setProfileInfo(res);}
            , function(res){ //실패 callback
                 commonUtil.failFunc(res);
            });

}

function init(){
    //로그인 체크
   if(commonUtil.chkLogin()){
        getProfileInfo();
    }else{
        alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
        commonUtil.redirect("/login");

    }
}

function validationChk(){
  var isValid = true;
  var invalidCnt  = 0;

  var elements = $("#profileEditForm .form-control");
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

         var validateId = id;
         $("#validate"+validateId).css('display',displayVal);

         if(displayVal == 'block'){
             invalidCnt ++;
         }

    	//형태 체크
       	var chkType = $("#"+id).attr('data-sb-type');

        if(chkType == 'name'){
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

    if(invalidCnt > 0 ){
  	    isValid = false;
  	}


  	return isValid;

}

function sendProfileEditInfo(){
    //validationChk
    if(validationChk() && commonUtil.chkLogin()){

        var url ="http://13.209.61.51:8080/v1/user";
        var params = {
            name : $("#profileNm").val()
            ,phone : $("#profilePhone").val()
            ,profileImageUrl : document.getElementById("profileImg").src
        };

        var header = { "X-AUTH-TOKEN" : localStorage.getItem("accToken")
                      ,"Content-type":"application/json; charset=utf-8"};

        $.ajax({
        			type :"PUT",
        		    url :url,
        		    dataType: 'json',
        		    contentType : 'application/json;charset=utf-8',
        		    data: JSON.stringify(params),
        		    headers : header,
        		    success: function(res){
        		    	if(res.code == '0'){
                           alert("프로필이 수정되었습니다.");
                           commonUtil.redirect("/login/profile.do");
                        }

        		    },

        		    error : function(XMLHttpRequest, textStatus, errorThrown){
        		    		commonUtil.failMsg(XMLHttpRequest);

        		    }

       });

     }

}


$(document).ready(function () {
    commonUtil = commonUtil.prototype;
	init();
});
