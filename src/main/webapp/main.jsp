<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="kwon"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<!-- 의미를 갖는 시멘틱 태그 <html -->
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
   content="Start your development with JoeBLog landing page.">
<meta name="author" content="Devcrud">
<title>ACENSE</title>
<!-- font icons -->
<link rel="stylesheet"
   href="assets/vendors/themify-icons/css/themify-icons.css">
<link rel="icon" href="./assets/imgs/favicon.png" />
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet" href="assets/css/joeblog.css">
<style type="text/css">
.text-left {
   text-align: left;
}

.pn {
   padding: 50px 0 20px 0;
   font-size: 17px;
}

.like {
   padding-top: 50px;
   font-size: 16px;
}

.chat {
   padding-top: 50px;
}

.input-box {
   position: relative;
   /* margin: 10px 0; */
}

.input-box>input {
   background: transparent;
   border: none;
   border-bottom: solid 1px #ccc;
   padding: 5px 0px 5px 0px;
   font-size: 10pt;
   width: 100%;
}

.profile {
   font-size: 13px;
}

#forgot {
   color: black;
   /* margin: 15px; */
   padding-top: 20px;
   text-decoration: none;
   font-size: 13px;
   text-align: center;
}
/* #forgot a {
    text-decoration: none;
    background-color: transparent;
} */
.login2 input[type="submit"]{
   color:white;
}

.login2 input:hover[type="submit"]{
   color:black;
}

input:focus{
   border-color: black !important;
    --tw-ring-color: none !important;
} 

.login {
   padding: 10px;
   margin-top: 20px;
   border: 1px solid #ffffff00;
   border-radius: 10px;
   background-color: #a0ba83;
   color: white;
}

.login:hover {
   color: black;
}

.login button {
   color: white;
}

.login button:hover {
   color: black;
   text-decoration-line: none;
}

.page-sidebar {
   margin-left: 0px;
}

.profile a:hover {
   color: #ccc !important;
}

.col-lg-6 {
   padding-top: 50px;
}

.sidelike {
   border: 1px solid #9e9e9e;
   border-radius: 10px;
}

.btn-primary {
   color: white;
   background-color: #a0ba83;
}

.bg-primary {
   background-color: white !important;
   border-bottom: 1px solid #9e9e9e;
}

.ml-auto {
   list-style: none;
   margin-left: 0px !important;
}

img {
   vertical-align: middle;
   border-style: none;
}

.container {
   /* width: 80%; */
   padding-right: 15px;
   padding-left: 15px;
   margin-right: auto;
   margin-left: auto;
}



.acense {
   padding-bottom: 0px;
}

.navbar .navbar-brand img {
   width: 90px;
}

img {
   width: 80px;
}

.btn-primary {
   color: white;
   background-color: #a0ba83;
}

.listTitle a:hover {
   color: #a0ba83 !important;
}

.leftArea {
   width: 195px;
   background: #fff;
}
.rightArea{
 width: 220px;
   background: #fff;
}
.rankArea{
 width: 40px;
   background: #fff;
}
/* 텍스트가 영역을 넘치도록 하는 속성 */
.white-space {
   white-space: nowrap;
}

/* 영역에 넘치는 요소를 숨겨주는 속성 */
.overflow {
   overflow: hidden;
}

/* 말줄임표 적용 */
.ellipsis {
   text-overflow: ellipsis;
}
input:focus{
   border-color: black !important;
    --tw-ring-color: none !important;
}
</style>

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

   <%@ include file="./header.jsp"%>


   <div class="container">
      <div class="page-container">
         <div class="page-content">


            <div
               style="height: 350px; margin: 10px; padding: 5px; border-radius: 10px; background-image:url('./images/로그인.png'); background-size:cover;">
<div style="background-color:white; height:100%; padding: 20px; border-radius:6px">
               <form method="post" style="display: flex; height: 100%;"
                  action="insertInsta.do" onsubmit="submitSel(event)"
                  enctype="multipart/form-data">
                  <div
                     style="width: 60%; height: 100%; display: flex; flex-direction: column; justify-content: center;">
                     <input type="text" id="id" placeholder="id" name="multiId"
                        style="width: 100%; border: 0px; margin-bottom: 10px; border-radius: 10px; background-color:#eaeaea;"
                        required /> <input type="password" id="pw" placeholder="pw"
                        name="multiPw"
                        style="width: 100%; border: 0px; margin-bottom: 10px; border-radius: 10px;background-color:#eaeaea;"
                        required />
                     <textarea id="content" name="multiContent"
                        style="width: 100%; height: 60%; border: 0px; resize: none; border-radius: 10px;background-color:#eaeaea;"
                        required></textarea>
                  </div>
                  <div style="width: 5%"></div>
                  <div
                     style="width: 35%; height: 100%; display: flex; flex-direction: column; justify-content: center;">
                     <div style="display: flex; justify-content: center;">
                        <input type="file" id="file" name="uploadFile"
                           style="width: 100%; display: none;" /> <label for="file"
                           style="width: 100%; background-color: white; border-radius: 10px; width: 50%; height: 30px; align-items: center; display: flex; justify-content: center; cursor: pointer; margin-bottom: 10px; margin-right: 10px; background-color:#eaeaea;">
                           <spring:message code="message.main.selectFile" /></label>
                        <button type="submit" id="uploadBtn"
                           style="width: 100%; background-color: white; border-radius: 10px; width: 50%; height: 30px; outline: 0;background-color:#eaeaea;"><spring:message code="message.main.upload" /></button>
                     </div>
                     <img src="./images/인스타그램6.png" id="preview"
                        style="width: 100%; max-height: 80%; border-radius: 10px;">
                  </div>
               </form>
</div>
            </div>

            <div class="row">
               <div class="col-lg-6">
                  <div class="card text-center mb-5">
                     <div class="card-header p-0">
                        <div class="blog-media">
                           <div class="text-left" style="font-weight: bold;">
                              <spring:message code="message.main.recentBList" />
                           </div>
                           <hr>
                        </div>
                     </div>
                     <!-- 최신순 게시글 목록 -->
                     <c:forEach var="v" items="${recentList}">
                        <div class="card-body px-0"
                           style="display: flex; padding-top: 0px !important; font-size: 15px;">
                           <div class="mList"
                              style="margin-right: 20px; font-weight: bold;">${v.bCate}</div>
                           <div class="listTitle leftArea white-space overflow ellipsis "
                              style="margin-right: 10px; cursor:pointer;" onclick="location.href='commuDetail.do?bNum=${v.bNum}';">
                              ${v.bTitle}
                           </div>
                           <div class="listLike" style="font-weight: bold;">
                             ${v.bDate}</div>
                        </div>
                  </c:forEach>
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="card text-center mb-5">
                     <div class="card-header p-0">
                        <div class="blog-media">
                           <div class="text-left" style="font-weight: bold;">
                              <spring:message code="message.main.likeList" />
                           </div>
                           <hr>
                        </div>
                     </div>
                     
                     
                     <!-- 좋아요순 게시글 목록 -->
                     <c:forEach var="v" items="${likeList}">
                        <div class="card-body px-0"
                           style="display: flex; padding-top: 0px !important; font-size: 15px;">
                           <div class="mList"
                              style="margin-right: 20px; font-weight: bold; width:20%;">${v.bCate}</div>
                           <div class="listTitle rightArea white-space overflow ellipsis "
                              style="margin-right: 10px; cursor:pointer;" onclick="location.href='commuDetail.do?bNum=${v.bNum}';">
                              ${v.bTitle}
                           </div>
                           <div class="listLike" style="font-weight: bold;">♥
                              ${v.heartCnt}</div>
                        </div>
               </c:forEach>
                  </div>
               </div>
            </div>


         </div>

         <!--  Sidebar 커스텀태그 활용 -->
         <kwon:sideInfo />
      </div>
   </div>


   <%@ include file="./footer.jsp"%>
   <script>
      const $fileInput = document.getElementById("file");
      // 사진
      const $previewImg = document.getElementById("preview");
      // 프리뷰
      const reader = new FileReader();
      // 파일리더
      let flag = false;
      
      function submitSel(event){
        if(!flag){
           alert("사진을 첨부해주세요");
           event.preventDefault();
        }
      }
      
      
      reader.onload = function(e) {
         // 리더가 로드되면
         $previewImg.src = e.target.result;
         // 결과를 미리보기 이미지에 박아 
         flag=true;
      }

      $fileInput.addEventListener("change", function() {
         // 파일이 들어오면
         var file = $('#file').val();
         try {
            const files = this.files;
            // 입력받은 파일
            if (files && files[0]) { // 파일을 여러개 선택해서 보낼 수 있어서 배열로 들어옴
               // 배열의 첫번째 값이 들어있는지 확인
               const fileName = this.value.split(".");
               // 파일형태를 알아보기 위해 . 을 기준으로 스플릿해서 자름 xxx.jsp > xxx jsp
               const ex = fileName.at(-1); // 배열의 제일 마지막것 jsp
               if (ex == "jpg" || ex == "jpeg" || ex == "png"
                     || ex == "gif") {
                  // 형태가 사진형태라면
                  reader.readAsDataURL(files[0]);
                  // 리더 로드 (파일의 첫번째 값)
               } else {
                  alert("사진만 첨부해주세요.");
                  $previewImg.src = "./images/인스타그램6.png";
                  flag = false;
               }
            } else { // 잘 안들어왔으면
               $previewImg.src = "./images/인스타그램6.png"; //미리보기는 없어용!
            }
         } catch (error) {
         }
      })
   </script>
</body>
</html>