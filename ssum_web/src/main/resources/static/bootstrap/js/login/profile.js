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
            $("#profileNm").append(name);
        }
        //전화번호세팅
        if(phone != null){
            $("#profilePhone").append(phone);
        }
        //img세팅
        if(profileImageUrl != null && profileImageUrl != '' && profileImageUrl != 'undefined'){
            document.getElementById("profileImg").src = profileImageUrl;
        }
    }else{
         var msg  = commonUtil.rtnMsg(result.code);
         alert(msg);
    }
}

function getProfileInfo(accToken){
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
    var accToken =  localStorage.getItem("accToken");
    if(accToken == null){
        alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
        commonUtil.redirect("/login");
    }else{
       getProfileInfo(accToken);
    }
}



$(document).ready(function () {
    commonUtil = commonUtil.prototype;
	init();
});
