var commonUtil;
var postId = ""; //작품 id

var title = ""; //작품제목
var author  = ""; //작가명
var boardId ="" ; //게시판 id
var thumbnailUrl=""; //작품 썸네일
var likes =""; //좋아요수
var views =""; //조회수


function getPostDetailInfo(){
var url = "http://13.209.61.51:8080/v1/board/post/" + postId;

    commonUtil.sendAjax("GET",url,"", ""
                , function(res){ //정보세팅
                    if(res.success){
                        if(res.list != null){
                           title = res.list.title;
                           author = res.list.data.author;
                           boardId = res.list.data.board.boardId;
                           boardName = res.list.data.board.name;
                           thumbnailUrl = res.list.thumbnailUrl;
                           likes = res.list.likes;
                           views = res.list.views;
                        }
                    }else{
                        var msg  = commonUtil.rtnMsg("-1004"); //통신 오류
                        alert(msg);
                    }

                }
                , function(res){ commonUtil.failMsg(res);});
}


function init(){
    postId = document.getElementById("postId").value;

    if(postId != null && postId != '' && postId != 'undefined'){
        getPostDetailInfo();
    }
}


$(document).ready(function () {
    commonUtil = commonUtil.prototype;

    init();
});
