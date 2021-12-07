var name = "";
var phone = "";
var profileImg = "";
var uid = "";

function setProfileInfo(data){
    name = data.name;
    phone = data.phone;
    profileImageUrl = data.profileImageUrl;
    uid = data.uid;
}

function getProfileInfo(accToken){

    		$.ajax({
    			type :"GET",
    		    url :"http://192.168.1.202:8080/v1/user",
    		    dataType: 'json',
    		    data: accToken,
    		    beforeSend : function(xhr){
    		    	xhr.setRequestHeader("X-AUTH-TOKEN",accToken);

    		    },
    		    success: function(res){
    		    	if(res.success && res.data != null){
                        setProfileInfo(res.data);

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


function init(){
    //로그인 체크
    var accToken =  localStorage.getItem("accToken");
    if(accToken == null){
        alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
        location.replace("/login");
    }else{
       getProfileInfo(accToken);
    }
}



$(document).ready(function () {

	init();
});
