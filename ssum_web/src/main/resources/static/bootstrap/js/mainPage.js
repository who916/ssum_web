var commonUtil;
var postUtil ;
var type = "main";

function getPostListInfo(subType){
    var pageNum = '0';
    var url = "v1/board/post/"+ subType +"/"+pageNum;
    postUtil.getPostListInfo(url, type, subType, pageNum);
}

function init(){
    //추천 글 불러오기
    getPostListInfo('likes');
    //최신 글 불러오기
    getPostListInfo('new');
    //인기글 불러오기
    getPostListInfo('views');
}

$(document).ready(function () {
    commonUtil = commonUtil.prototype;
    postUtil = postUtil.prototype;

	init();
});