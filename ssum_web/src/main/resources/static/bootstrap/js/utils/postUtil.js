var commonUtil

function postUtil(){
   commonUtil = commonUtil.prototype;
}

postUtil.prototype.goPostDetailPage = function(Obj){
    if(commonUtil.chkLogin()){
        var postId = Obj.value;
        var url = "http://192.168.1.204:8080/post/postDetail.do?postId="+postId;

        commonUtil.redirect(url);
   }else{
       alert("유효하지 않은 접근 입니다. 로그인 후 다시 시도해 주세요");
       commonUtil.redirect("/login");
   }
};

/*작품목록 가져오기 */
postUtil.prototype.setPostListInfo = function(res, type){
  var title = ""; //작품제목
  var author  = ""; //작가명
  var postId =""; //작품 id
  var boardId ="" ; //게시판 id
  var thumbnailUrl=""; //작품 썸네일
  var likes =""; //좋아요수
  var views =""; //조회수

  var dataList = res.list;

   /**
    * type info
    * likes : 추천글
    * new  : 최신글
    * views : 인기 순
    */
    var id = "#"+type +"List";
    // 샘플 화면 삭제
    $(id).children().remove();

       //태그 생성 및 화면 첨부
       for(var i=0; i < dataList.length; i++){
          title = dataList[i].title;
          author = dataList[i].author;
          postId = dataList[i].postId;
          boardId = dataList[i].board.boardId;
          thumbnailUrl = dataList[i].thumbnailUrl;
          likes = dataList[i].likes;
          views = dataList[i].views;

          /* 화면 구성 태그
           * 줄 바꿈 할 경우 스타일이 의도대로 적용되지 않으므로 한줄로 구현
           */
            $(id).append("<li class='item' style='border-radius : 15px;-webkit-border-radius : 15px;overflow : hidden; border-width : 1px;' value='"+postId+"' onClick='postUtil.goPostDetailPage(this);'><a class='cover'><span class='in'><img src='"+thumbnailUrl+"' alt='표지1'></span></a><div class='infoBox'><a class='tit'>"+title+"</a><div class='sub01' style='overflow-wrap:break-word;'><span class='author'>"+author+"</span></div><div class ='sub02'><span class='hit hitYn'><img src='/bootstrap/assets/img/icon/icon-star.png' width='15' height='15' alt='관심' style='padding-right:0.25rem;'/>"+likes+"</span><span class='hit hitYn'><img src='/bootstrap/assets/img/icon/icon-eye.png' width='20' height='20' alt='HIT' style='padding-right:0.25rem;'/>"+views+"</span></div></div></li>");

         }


};



