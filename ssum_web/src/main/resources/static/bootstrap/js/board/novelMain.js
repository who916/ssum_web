var commonUtil;
var postUtil;


function getPostListInfo(type){
    var url = "http://13.209.61.51:8080/v1/board/" + type +"/posts";

    commonUtil.sendAjax("GET",url,"", ""
                , function(res){
                    var msg = "";

                    if(res.code == '0'){
                       if(res.list != null){
                            /* 메인화면 작품 목록 가져오기 */
                            postUtil.setPostListInfo(res, type, true);
                       }else{
                         msg =  commonUtil.rtnMsg("-1004");
                         alert(msg);
                       }
                    }else{
                       msg  = commonUtil.rtnMsg(res.code);
                       alert(msg);
                    }

                 }
                , function(res){ commonUtil.failFunc(res);});

}




function init(){
    getPostListInfo('novel');
}


$(document).ready(function () {
    commonUtil = commonUtil.prototype;
    postUtil = postUtil.prototype;

    init();
});
