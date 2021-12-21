var commonUtil;
var postUtil;
var type = "community";
var subType = "free";


function getPostListInfo(pageNum){
    var url = "v1/board/" + subType +"/posts/"+ pageNum;
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
