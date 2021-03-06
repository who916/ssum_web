var commonUtil

function postUtil(){
   commonUtil = commonUtil.prototype;
}

postUtil.prototype.goFreeTalkDetailPage = function(postId){
    if(commonUtil.chkLogin()){
        var url = "http://192.168.1.204:8080/community/freeTalkDetail.do?postId="+postId;

        commonUtil.redirect(url);
   }else{
       alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
       commonUtil.redirect("/login");
   }
};

postUtil.prototype.goPostDetailPage = function(postId, boardName){
    if(commonUtil.chkLogin()){
        var url = "http://192.168.1.204:8080/post/postDetail.do?postId="+postId;

        if(boardName =='free'){
            postUtil.goFreeTalkDetailPage(postId);
        }else{
            commonUtil.redirect(url);
        }
   }else{
       alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
       commonUtil.redirect("/login");
   }
};



/* paging 처리 */
postUtil.prototype.setPaging = function(res, subType, currentPage){

  var itemCnt = 10; //최소 설정 page 갯수
  var totalPage = res.totalPages; //게시판 전체 페이지 갯수
  var pageId = "#"+subType+"Paging";

  var prevPage = parseInt(currentPage -1); //이전 page
  var nextPage = parseInt(currentPage +1); //다음 page

  var startPage = currentPage;
  var endPage = itemCnt; //화면에 세팅 할 마지막 page


    //화면에 그릴 page개 수 세팅
    if(totalPage < itemCnt || (currentPage + itemCnt)>= totalPage){
          endPage = totalPage;
    }else{
          endPage = currentPage + itemCnt;
    }

    //시작넘버 세팅
    if(totalPage < itemCnt){
        startPage = 0;
    }else if(totalPage-parseInt(currentPage-1) < itemCnt){
        startPage = endPage-9;
    }


    //기존 데이터 제거
    $(pageId).empty();

    var html = "";

    if(currentPage > 0 && totalPage >= itemCnt){

        html += "<div class='page-link custom-page-link' id='prevPage' value="+prevPage+" onClick='getPostListInfo("+prevPage+");'>이전</div>";
        //$(pageId).append("");
    }

    for(var i = startPage; i < endPage; i++){
        if(subType == 'comment'){
            html+= "<div class='page-link custom-page-link' value="+i+" id='page"+i+"' onClick='getCommentListInfo("+i+");'>"+parseInt(i+1)+"</div>";
        }else{
            html+= "<div class='page-link custom-page-link' value="+i+" id='page"+i+"' onClick='getPostListInfo("+i+");'>"+parseInt(i+1)+"</div>";
        }
       //$(pageId).append("");
    }

    if(currentPage + parseInt(itemCnt-1) < totalPage){
       html += "<div class='page-link custom-page-link' id='nextPage' value="+nextPage+" onClick='getPostListInfo("+nextPage+");'>다음</div>";
         //$(pageId).append("<div class='page-link custom-page-link' id='nextPage' value="+nextPage+" onClick='getPostListInfo("+nextPage+");'>다음</div>");
    }

    $(pageId).append(html);

  //select css 설정
  $(".custom-page-link").removeClass('active');
  $("#page"+currentPage).addClass('active');

  //scroll 맨위로
  window.scrollTo(0,0);
}

/*작품목록 가져오기 */
postUtil.prototype.setPostListInfo = function(res, type, subType, pageNum, pageYn){
  var title = ""; //작품제목
  var author  = ""; //작가명
  var postId =""; //작품 id
  var boardId ="" ; //게시판 id
  var boardName ="" ; //게시판 이름
  var thumbnailUrl=""; //작품 썸네일
  var likes =""; //좋아요수
  var views =""; //조회수
  var content = ""; // 게시물 내용

  /* 작성자 */
  var profileImageUrl = ""; //프로필사진
  var userId = ""; //사용자 id
  var name = ""; //회원 이름

  var dataList = res.list;

  //page처리
  if(pageYn){
     postUtil.setPaging(res, subType,pageNum );
   }

   /**
    * type info
    * likes : 추천글
    * new  : 최신글
    * views : 인기 순
    */
    var id = "#"+subType +"List";
    // 샘플 화면 삭제
    $(id).children().remove();

       //태그 생성 및 화면 첨부
       for(var i=0; i < dataList.length; i++){
          title = dataList[i].title;
          author = dataList[i].author;
          postId = dataList[i].postId;
          boardId = dataList[i].board.boardId;
          boardName = dataList[i].board.name;
          thumbnailUrl = dataList[i].thumbnailUrl;
          likes = dataList[i].likes;
          views = dataList[i].views;
          content = dataList[i].content;
          profileImageUrl = dataList[i].postOwner.profileImageUrl;
          userId = dataList[i].postOwner.userId;
          name = dataList[i].postOwner.name;

          /* 화면 구성 태그 */

           var html = "";

           //미리보기 자르기
           if(title.length > 15){
               title = title.substring(0,10);
               title += "...";
           }

           if(content.length > 50){
              content = content.substring(0,45);
              content += "...";
           }

           if(type == 'main'){
             html += "<li class='item' style='border-radius : 15px;-webkit-border-radius : 15px;overflow : hidden; border-width : 1px;' value='"+postId+"'>";

             if(boardName == 'free'){
                html += "<div onClick='postUtil.goFreeTalkDetailPage("+postId+")'>";
             }else{
                html += "<div onClick='postUtil.goPostDetailPage("+postId+")'>";
             }

             html += "<a class='cover'><span class='in'><img src='"+thumbnailUrl+"' alt='표지1' id='thumbnailUrl'></span></a>";
             html += "<div class='infoBox'><a class='tit'>"+title+"</a><div class='sub01' style='overflow-wrap:break-word;'><span class='author'>"+author+"</span></div>";
             html += "<div class ='sub02'><span class='hit hitYn'><img src='/bootstrap/assets/img/icon/icon-star.png' width='15' height='15' alt='관심' style='padding-right:0.25rem;'/>"+likes+"</span>";
             html += "<span class='hit hitYn'><img src='/bootstrap/assets/img/icon/icon-eye.png' width='20' height='20' alt='HIT' style='padding-right:0.25rem;'/>"+views+"</span></div></div></a></li>";

            }else if(type == 'board'){
                 html += "<div class='post-preview' style='display:flex;' id='postId' value="+postId+"><img src='"+thumbnailUrl +"' width='200px' height='250px id='thumbnailUrl'/><div style='display:block; margin-left :1rem;'>";

                 if(boardName == 'free'){
                    html += "<div onClick='postUtil.goFreeTalkDetailPage("+postId+")'>";
                 }else{
                    html += "<div onClick='postUtil.goPostDetailPage("+postId+")'>";
                 }



                 html += "<h2 class='post-title' style='margin-top:1rem;' id='title'><a href='#!'>"+ title +"</a></h2></div><div><p class='post-meta' style='margin:0; font-size:1rem;' id='author'>Posted by <a href='#!'>"+author+"</a></p></div>";
                 html += "<div><p style='margin:0; margin-bottom:1.5rem; margin-top:1rem; font-family:'NotoSan'; id='content'>"+content+"</p></div>";
                 html += "<div style='display:inline-block; justify-content : space-around;'><span id='likes' style='font-size:0.8rem; letter-spacing:1px; margin:0 0.5rem;'><img src='/bootstrap/assets/img/icon/icon-star.png' width='15' height='15' alt='관심' style='padding-right:0.25rem;'>"+ likes+"</span>";
                 html += "<span id='views' style='font-size:0.8rem; letter-spacing:1px;'><img src='/bootstrap/assets/img/icon/icon-eye.png' width='20' height='20' alt='HIT' style='padding-right:0.25rem;'>"+views+"</span><span style='color:#dee2e6; margin:0 0.5rem;'>|</span>";
                 html += "<span id ='boardName' style='font-size:0.8rem; letter-spacing:1px;'>"+boardName+"</span></div></div></div><hr class='my-4' />";


            }else if(type == 'community'){

                  html += "<div class='post-preview' style='display:flex; flex-direction:inherit; justify-content:space-between;' id='postId' value="+postId+"><div style='display:block; margin-left :1rem;'>";
                  html += "<div onClick='postUtil.goFreeTalkDetailPage("+postId+");'>";
                  html += "<h3 class='post-title' style='margin-top:1rem; font-size:1.5rem;' id='title'><a href='#!'>"+title+"</a></h3></div>";
                  html += "<div><p style='margin:0; margin-bottom:1.5rem; margin-top:1rem; color:#707070; font-family:NotoSan; font-size:1rem; font-weight:100;' id='content'>"+content+"</p></div>";
                  html += "<div style='display:flex; justify-content :flex-start;'><img src='"+profileImageUrl+"' style='width:2rem; aspect-ratio:1/1; margin-right:0.5rem;' id='profileImageUrl'>";
                  html += "<p class='post-meta' style='margin:0; font-size:1rem;' id='name' value="+userId+"><a href='#!'>"+name+"</a></p><span style='color:#dee2e6; margin:0 0.5rem;'>|</span>";
                  html += "<span id='views' style='font-size:0.8rem; letter-spacing:1px;'><img src='/bootstrap/assets/img/icon/icon-eye.png' width='20' height='20' alt='HIT' style='padding-right:0.25rem;'>"+views+"</span></div></div>";
                  html += "<div><img src='"+thumbnailUrl+"' style='width:10rem; aspect-ratio:1/1;' id='thumbnailUrl'></div></div><hr class='my-4' />";

            }

            $(id).append(html);

             //썸네일 없을 경우
             if(thumbnailUrl == null || thumbnailUrl == '' || thumbnailUrl == 'undefined' || thumbnailUrl == 'string'){
               if(type == 'community'){
                    $("#thumbnailUrl").remove();
                }else{
                    document.getElementById("thumbnailUrl").src = "https://namiezexx-test-bucket.s3.ap-northeast-2.amazonaws.com/ssum/mylib/book/mini-book4.png";
                }
              }
         }


};

/* 코멘트 등록하기 */
postUtil.prototype.submitComment = function(postId, comments){

   if(!commonUtil.chkLogin()){
      alert("로그인 후 사용가능한 서비스입니다! 로그인 해주세요.");
   }else{

      var url = "v1/board/comment/" + postId;
      var header = {"X-AUTH-TOKEN": commonUtil.getAccToken()
                    ,"Content-type":"application/json; charset=utf-8"};
      var params = {contents: comments};

      commonUtil.sendAjax("POST",url,header,params
                         ,function(res){
                            if(res.code == '0'){
                                alert("등록되었습니다.");
                                //새로고침
                                location.reload();
                            }else{
                                commonUtil.failFunc(res);
                            }

                         }
                         ,function(res){
                          commonUtil.failFunc(res);
                         });


    }



};

/*자유게시판 코멘트목록 가져오기 */
postUtil.prototype.setCommentListInfo = function(res, subType, currentPage){
  /* comment 정보 */
  var commonId = "";
  var contents = ""; //댓글
  var modifiedAt = ""; //등록일자
  var nestedCommentCount = ""; //대댓글 갯수
  var userId = "";
  var userName = ""; //작성자 이름

  /* 페이징 count */
  var totalPage = "";
  var total

  var dataList = res.commentList;

    //page처리
    //postUtil.setPaging(res, subType, currentPage);


    var id = "#"+subType +"List";
    // 샘플 화면 삭제
    $(id).children().remove();

       //태그 생성 및 화면 첨부
       for(var i=0; i < dataList.length; i++){
          commentId= dataList[i].commentId;
          comment= dataList[i].contents;
          modifiedAt = dataList[i].modifiedAt;
          nestedCommentCount = dataList[i].nestedCommentCount;
          userId = dataList[i].userId;
          userName = dataList[i].userName;


          /* 화면 구성 태그 */
          var html = "";

          html += "<div class='post-title episode-item' style='margin-top:0.625rem;font-size:1rem;'value='"+commentId+"'>";
          html += "<img src='/bootstrap/assets/img/icon/avatar.png' style='width:2rem; aspect-ratio:1/1; margin-right:0.5rem;'>";
          html += "<span style='line-height:2rem; font-size:0.8rem; color:#707070;' id='userName' value='"+userId+"'>"+userName+"</span><br>";
          html += "<span style='font-size:0.8rem; display:inline-grid; color:#707070; font-weight:500' margin-top:0.5rem; id='comment'>"+comment+"</span><br>";
          html += "<span style='line-height:2rem; display:inline-grid; font-size:0.8rem; color:#707070; font-weight:300;' id='modifiedAt'>"+modifiedAt+"</span></div>";

          $(id).append(html);
        }


};

postUtil.prototype.getPostListInfo = function(url ,type, subType, pageNum, pageYn){
        commonUtil.sendAjax("GET",url,"", ""
                    , function(res){
                        var msg = "";

                        if(res.code == '0'){
                           if(res.list != null){
                                /*  작품 목록 가져오기 */
                                postUtil.setPostListInfo(res, type, subType, pageNum, pageYn);
                           }else{
                             msg =  commonUtil.rtnMsg("-1004");
                             alert(msg);
                           }
                        }else{
                           msg  = commonUtil.rtnMsg(res.code);
                           alert(msg);
                        }

                     }
                    , function(res){ commonUtil.failFunc(res);}
               );
};

postUtil.prototype.getCommentListInfo = function(url ,subType, pageNum){
        commonUtil.sendAjax("GET",url,"", ""
                    , function(res){
                        var msg = "";

                        if(res.code == '0'){
                           if(res.list != null){
                                /*  코멘트 목록 가져오기 */
                                postUtil.setCommentListInfo(res, type, subType, pageNum);
                           }else{
                             msg =  commonUtil.rtnMsg("-1004");
                             alert(msg);
                           }
                        }else{
                           msg  = commonUtil.rtnMsg(res.code);
                           alert(msg);
                        }

                     }
                    , function(res){ commonUtil.failFunc(res);}
               );
};