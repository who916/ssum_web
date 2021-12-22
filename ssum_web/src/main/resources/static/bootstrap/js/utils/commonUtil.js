var prefixUrl = "http://13.209.61.51:8080/";
//var prefixUrl ="http://192.168.1.202:8080/";

function commonUtil(){}


/**

 * 입력값이  null 인지 체크한다

 */

commonUtil.prototype.isNull = function(input){

       if (input.value == null || input.value == ""){

             return true;

       }else{

             return false;

       }

};

/**

 * 입력값이 스페이스 이외의 의미있는 값이 있는지 체크한다

 * if (isEmpty(form.keyword)){

 *       alert('값을 입력하여주세요');

 * }

 */

commonUtil.prototype.isEmpty = function(input){

       if (input == null || input.replace(/ /gi,"") == ""){

             return true;

       }else{

             return false;

       }

};

/**
*
*이메일 형태 확인
*
*/
commonUtil.prototype.isEmail = function(asValue) {
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	return regExp.test(asValue);
};

/**
*
*password 형태 확인
*
*/
commonUtil.prototype.isPassword = function(asValue) {
	var regExp =  /^[A-Za-z0-9+]*$/;

	return regExp.test(asValue);
};

commonUtil.prototype.isId = function(asValue) {
	var regExp = /^[A-Za-z0-9+]*$/;

	return regExp.test(asValue);
};

commonUtil.prototype.isKorean = function(asValue) {
	var regExp =/^[가-힣]*$/;

	return regExp.test(asValue);
};


commonUtil.prototype.isNum= function(asValue) {
	var regExp = /^[0-9]*$/;

	return regExp.test(asValue);
};

commonUtil.prototype.redirect = function(url){
    location.replace(url);
};

commonUtil.prototype.rtnMsg = function(res){
	var msg = '';

	switch(res){
		case "-1000":
		  msg = '존재하지 않는 회원 입니다';
		case "-1001":
		  msg = '계정이 존재하지 않거나 이메일 또는 비밀번호가 정확하지 않습니다.';
		case "-1002":
		  msg = "해당 리소스에 접근하기 위한 권한이 없습니다.";
		case "-1003":
		  msg = "보유한 권한으로 접근할수 없는 리소스 입니다.";
		case "-1004":
		  msg = "통신 중 오류가 발생하였습니다.";
	    case "-1005":
		  msg = "이미 가입한 회원입니다.로그인을 해주세요.";
		case "-1006":
		  msg ="해당 자원의 소유자가 아닙니다.";
		case "-1007":
          msg= "요청한 자원이 존재 하지 않습니다.";
        case "-1008":
        msg= "요청한 accessToken이 만료되었습니다.";
        case "-9999":
          msg ="알수 없는 오류가 발생하였습니다.";
        default :
          msg ="알수 없는 오류가 발생하였습니다.";

	}

	return msg;
};

commonUtil.prototype.failMsg = function(res){
 var msg = "";
     if(res.responseJSON != null){
          msg = res.responseJSON.msg;
      }else{
         msg = res.statusText;
       }

       alert(msg);
       return false;
};

commonUtil.prototype.failFunc = function(res){
    var code = "";
    if(res.responseJSON != null){
       result = res.responseJSON.code;
       if(code == '-1008'){
         //acckessToken Refresh
         commonUtil.refreshToken();
       }else{
         commonUtil.failMsg(res);
       }

    }else{
        commonUtil.failMsg(res);
    }
};

commonUtil.prototype.sendAjax = function(sendType, url, header, params, successCallback, errorCallback){

        var sendUrl = prefixUrl + url;

        $.ajax({
			type :sendType,
		    url :sendUrl,
		    dataType: 'json',
		    data: JSON.stringify(params),
		    headers : header,
		    success: function(res){
		    	successCallback(res);

		    },

		    error : function(XMLHttpRequest, textStatus, errorThrown){
		    		errorCallback(XMLHttpRequest);

		    }

		});
	};


 commonUtil.prototype.logout = function(redirectUrl){
       localStorage.removeItem("accToken");
       localStorage.removeItem("refToken");

       location.replace(redirectUrl);
 };

 
 commonUtil.prototype.refreshToken = function(){
    var refreshToken = localStorage.getItem("refToken");

    if(refreshToken == null || refreshToken == 'undefined' || refreshToken == ''){
       alert("로그인 정보가 만료되었습니다. 재 로그인 후 사용바랍니다.");
       commonUtil.redirect("/login");
       return;
    }

    var url = "v1/refresh/token";
    var params = { refreshToken : refreshToken };
    var header = {"Content-Type": "application/json"
                 ,"Accept": "application/json"};

    commonUtil.sendAjax("POST", url, header, params
                           , function(res){
                              if(res.code =='0'){
                                //token 갱신
                                var accessToken = res.data.accessToken;
                                var refreshToken = res.data.refreshToken;

                                localStorage.setItem("accToken", accessToken);
                                localStorage.setItem("refToken", refreshToken);

                                //재 연결 알림
                                alert("로그인 정보가 갱신되었습니다.작업을 다시 진행해주세요.");

                                //새로고침
                                location.reload();
                               }
                           }
                           ,  function(res){
                                 alert("로그인 정보가 만료되었습니다. 재 로그인 후 사용바랍니다.");
                                 commonUtil.logout("/login");
                                 return;
                           });

 };

 commonUtil.prototype.failFunc = function(res){
     var code = "";
     if(res.responseJSON != null){
        code = res.responseJSON.code;
     }else{
        code = res.code;
     }

     if(code == '-1008'){
         commonUtil.refreshToken();
     }else{
         commonUtil.failMsg(res);
     }

  };

   commonUtil.prototype.chkLogin = function(){
     var isLogin  = true;
     var accToken = localStorage.getItem("accToken");

     if(accToken == null || accToken == '' || accToken =='undefined' ){
         isLogin = false;
     }

     return isLogin;

   };

  commonUtil.prototype.getAccToken = function(){
        return localStorage.getItem("accToken");
  };

