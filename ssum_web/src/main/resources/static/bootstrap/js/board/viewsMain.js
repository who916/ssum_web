var commonUtil;
var postUtil;
var prefixUrl = "http://13.209.61.51:8080/";
var type = "board";
var subType = "views";


function getPostListInfo(pageNum){
    var url = prefixUrl +"v1/board/post/"+ subType +"/"+ pageNum;
    postUtil.getPostListInfo(url,type,subType, pageNum, true);
}

function init(){
    getPostListInfo('0');
}


$(document).ready(function () {
    commonUtil = commonUtil.prototype;
    postUtil = postUtil.prototype;

    init();
});
