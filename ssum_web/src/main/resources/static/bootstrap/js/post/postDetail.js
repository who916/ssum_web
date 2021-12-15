var commonUtil;
var postId = ""; //작품 id

var title = ""; //작품제목
var author  = ""; //작가명
var boardId ="" ; //게시판 id
var thumbnailUrl=""; //작품 썸네일
var likes =""; //좋아요수
var views =""; //조회수
var content = ""//설명


function getPostDetailInfo(){
var accToken =  localStorage.getItem("accToken");

if(accToken == null){
        alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
        commonUtil.redirect("/login");
    }else{
        var header = {
                  "X-AUTH-TOKEN" : accToken
        };
        var url = "http://13.209.61.51:8080/v1/board/post/" + postId;

        commonUtil.sendAjax("GET",url,header, ""
                    , function(res){ //정보세팅
                        if(res.code == '0'){
                            if(res.data != null){
                               title = res.data.title;
                               author = res.data.author;
                               boardId = res.data.board.boardId;
                               boardName = res.data.board.name;
                               thumbnailUrl = res.data.thumbnailUrl;
                               likes = res.data.likes;
                               views = res.data.views;
                               content = res.data.content;

                               //화면세팅
                               $("#title").text(title);
                               $("#author").text(author);
                               $("#likes").html("<img src='/bootstrap/assets/img/icon/icon-star.png' width='15' height='15' alt='관심' style='padding-right:0.25rem;'>"+likes);
                               $("#views").html("<img src='/bootstrap/assets/img/icon/icon-eye.png' width='20' height='20' alt='HIT' style='padding-right:0.25rem;'>"+views);
                               $("#content").text(content);

                               //
                               document.getElementById("thumbnailImg").src = thumbnailUrl;
                            }
                        }else{
                            var msg  = commonUtil.rtnMsg("-1004"); //통신 오류
                            alert(msg);
                        }

                    }
                    , function(res){ commonUtil.failMsg(res);});
    }
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
