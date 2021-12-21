var commonUtil;
var postUtil;
var type = "community";
var subType = "free";
var accToken ="";


function submitPost(){

    if(accToken == null || accToken == '' || accToken == 'undefined'){
       alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
       commonUtil.redirect("/login");
    }

    var url = "v1/board/"+subType;
    var params = {
        //author : $("#author").val() //내 정보
       content : $("#content").val()
       ,thumbnailUrl : ""
       ,title : $("#title").val()
    };

    var header = {"X-AUTH-TOKEN": accToken
                  ,"Content-Type" : "application/json"};

    commonUtil.sendAjax("POST",url,header,params
                        ,function(res){
                             if(res.code == '0'){ //success return
                                alert('게시글이 등록되었습니다.');

                                var postId= res.data.postId;

                                //post Detail정보 부르기
                                commonUtil.redirect("/community/freeTalkDetail.do?postId="+postId);
                             }else{
                                var msg  = rtnMsg(res.code);
                                 alert(msg);
                             }
                         }
                        ,function(res){//error return
                         commonUtil.failFunc(res);}
                      );

}

function init(){
    //로그인 체크
        if(!commonUtil.chkLogin()){
            alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
            commonUtil.redirect("/login");
        }else{
          accToken = localStorage.getItem("accToken");
        }
}


$(document).ready(function () {
    commonUtil = commonUtil.prototype;
    postUtil = postUtil.prototype;

    init();
});
