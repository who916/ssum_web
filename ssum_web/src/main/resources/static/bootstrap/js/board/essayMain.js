var commonUtil;
var postUtil;
var prefixUrl = "http://13.209.61.51:8080/";
var type = "board";
var subType = "essay";

function getPostListInfo(pageNum){
    var url = prefixUrl+"v1/board/" + subType +"/posts/" + pageNum;
    postUtil.getPostListInfo(url,type,subType,pageNum,true);
}

function init(){
    getPostListInfo('0');
}


$(document).ready(function () {
    commonUtil = commonUtil.prototype;
    postUtil = postUtil.prototype;

    init();
});
