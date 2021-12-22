var commonUtil;
var postUtil;
var postId = ""; //작품 id
var title = ""; //작품제목
var author  = ""; //작가명
var boardId ="" ; //게시판 id
var thumbnailUrl=""; //작품 썸네일
var likes =""; //좋아요수
var views =""; //조회수
var content = "";//내용
var postOwner = "";//게시자
var profileImageUrl = "";
var userId = ""; //사용자 id
var commentCnt = "0"; //comment 전체 개수


var postDetailInfo = "";//포스트 인포
var commentInfo; //코멘트 인포

function submitComment(){
    var comment = $("#commentArea").val();

    if(commonUtil.isEmpty(comment)){
        alert("코멘트를 입력해주세요!");

    }else{
        postUtil.submitComment(postId, comment);
    }
}


function renderingCommentArea(commentInfo){
    postUtil.setCommentListInfo(commentInfo, 'comment', '0');
}

function renderingPage(postInfo, commentInfo){

        //본문 세팅
        title = postInfo.title;
        author = postInfo.author;
        boardId = postInfo.board.boardId;
        boardName = postInfo.board.name;
        thumbnailUrl = postInfo.thumbnailUrl;
        likes = postInfo.likes;
        views = postInfo.views;
        content = postInfo.content;
        postOwner = postInfo.postOwner.name;
        profileImageUrl = postInfo.postOwner.profileImageUrl;
        userId =  postInfo.postOwner.userId
        if(commentInfo !=null){
            commentCnt = commentInfo.totalItems;
        }

        //화면세팅
        $("#title").text(title);
        $("#postOwner").text(postOwner);
        $("#likes").html("<img src='/bootstrap/assets/img/icon/icon-star.png' width='15' height='15' alt='관심' style='padding-right:0.25rem;'>"+likes);
        $("#views").html("<img src='/bootstrap/assets/img/icon/icon-eye.png' width='20' height='20' alt='HIT' style='padding-right:0.25rem;'>"+views);
        $("#content").html(content);
        $("#commentCnt").text(commentCnt);

        if(profileImageUrl!=null && profileImageUrl != '' && profileImageUrl != 'undefined'){
            document.getElementById('profileImageUrl').src= profileImageUrl;
        }

        //
        if(thumbnailUrl == null || thumbnailUrl == '' || thumbnailUrl == 'undefined'){
           //thumbnailUrl = "https://namiezexx-test-bucket.s3.ap-northeast-2.amazonaws.com/ssum/mylib/book/mini-book4.png";
           $("#thumbnailUrl").remove();
        }else{
            document.getElementById("thumbnailImg").src = thumbnailUrl;
        }

        //comment 화면 세팅
        if(commentInfo != null){
            renderingCommentArea(commentInfo);
        }
  }
function getCommentInfo(){

    var url = "v1/board/comment/" + postId;

    commonUtil.sendAjax("GET", url, "", ""
    ,function(res){
        if(res.code == '0'){
             if(res.list != null){
                 commentInfo = {commentList : res.list, totalItems : res.totalItems, totalPages : res.totalPages};
                 renderingPage(postDetailInfo, commentInfo );
            }else{
               var msg  = commonUtil.rtnMsg("-1004"); //통신 오류
               alert(msg);
            }
        }
       }
    , function(res){
       if(res.responseJSON.code == "-1007"){
          //조회 0건
          renderingPage(postDetailInfo);
       }else{
          commonUtil.failFunc(res);
       }

        });
}

function getPostDetailInfo(){
var accToken =  localStorage.getItem("accToken");

if(accToken == null){
        alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
        commonUtil.redirect("/login");
    }else{
        var header = {
                  "X-AUTH-TOKEN" : accToken
        };
        var url = "v1/board/post/" + postId;

        commonUtil.sendAjax("GET",url,header, ""
                    , function(res){ //정보세팅
                        if(res.code == '0'){
                            if(res.data != null){
                               //renderingPage(res.data);
                               postDetailInfo = res.data;
                               getCommentInfo();
                            }
                        }else{
                            var msg  = commonUtil.rtnMsg("-1004"); //통신 오류
                            alert(msg);
                        }

                    }
                    , function(res){ commonUtil.failFunc(res);});
    }
}


function init(){
     postId = document.getElementById("postId").value;

        if(postId != null && postId != '' && postId != 'undefined'){
             getPostDetailInfo();
        }else{
          var defaultInfo = {
                title : '퇴근까지 2시간15분'
               ,author : '직장인A'
               ,board  : {
                 boardId : '0'
                 ,name : 'novel'
               }
               ,thumbnailUrl : '/bootstrap/assets/img/book/suggest/readbook-1.png'
               ,likes : '3'
               ,views : '5'
               ,content : '퇴근시간 2시간 15분전 부터 시계를 계속보는<br> 직장인의 이야기'
              };

              renderingPage(defaultInfo);
          }
}


$(document).ready(function () {
    commonUtil = commonUtil.prototype;
    postUtil = postUtil.prototype;

    init();
});
