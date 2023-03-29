<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="kwon"%>
<!DOCTYPE html>
<html lang="en">
<!-- 의미를 갖는 시멘틱 태그 <html -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Start your development with JoeBLog landing page.">
<meta name="author" content="Devcrud">
<title>ACENSE : 게시글 상세보기</title>
<!-- font icons -->
<link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">
<link rel="icon" href="./assets/imgs/favicon.png" />
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet" href="assets/css/joeblog.css">
<script src="https://cdn.ckeditor.com/4.19.0/full/ckeditor.js"></script>
<style type="text/css">
.cke_top {
	display: none !important;
}

.cke_bottom {
	display: none !important;
}

.text-left {
	text-align: left;
}

#cke_txt {
	height: 350px !important;
}

.cke_contents {
	height: 100% !important;
}

.cke_inner {
	height: 100% !important;
}

.top {
	padding-top: 34px;
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
	margin: 10px 0;
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
.login2 input[type="submit"] {
	color: white;
}

.login2 input:hover[type="submit"] {
	color: black;
}

input:focus {
	border-color: black !important; -
	-tw-ring-color: none !important;
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

.campingSearch {
	border: 1px solid #9e9e9e;
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

.navbar-expand-md .navbar-collapse {
	display: -webkit-box !important;
	display: -webkit-flex !important;
	display: -ms-flexbox !important;
	display: flex !important;
	-webkit-flex-basis: auto;
	-ms-flex-preferred-size: auto;
	flex-basis: auto;
	justify-content: flex-end;
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

.blog-media {
	padding-top: 50px;
}

.text-left a:hover {
	color: #ccc !important;
}

.left {
	text-align: left;
	/* padding: 20px 0 0 40px; */
}

.align-items-center {
	-webkit-box-align: center !important;
	-webkit-align-items: center !important;
	-ms-flex-align: center !important;
	/* align-items: center !important; */
}

.justify-between {
	justify-content: space-between;
}

.flex {
	display: flex;
}

.com {
	padding: 10px;
	border: 1px solid #9e9e9e;
	border-radius: 10px;
	margin: 5px 0 30px 0;
	font-size: 14px;
}

.comcom {
	margin: 30px 45px 30px 45px;
}

.comcom2 {
	margin: 5px 45px 0px 45px;
}

.com1 input {
	border: 0px solid black;
	font-size: 14px;
}

.com1 input:focus {
	border: 1px solid black;
}

button:focus {
	outline: none !important;
}

button:hover {
	color: #a0ba83;
}

.rebt {
	padding: 7px 13px;
	border: 2px solid #a0ba83;
	border-radius: 10px;
	/* background-color: #a0ba83;  */
	color: black;
	font-size: 13px;
}

.re:hover {
	color: #a0ba83;
}

#re {
	display: flex;
	justify-content: flex-end;
}

.updecomcom {
	margin-right: 45px;
}

.upde a:hover {
	color: #a0ba83 !important;
}

[type="text"] {
	padding: 0px !important;
}

textarea {
	min-height: 5rem;
	overflow-y: hidden;
	resize: none;
	height: 6.25em;
}

input:focus {
	border-color: black !important; 
	--tw-ring-color: none !important;
}

newTweetContent:focus { 
	--tw-ring-shadow: none !important;
}

* { 
	--tw-ring-color: none;
}

#sideImg{
    vertical-align: middle !important;

}
img{
vertical-align: baseline !important;
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

</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

	<%@ include file="./header.jsp"%>


	<div class="container">
		<div class="page-container">
			<div class="page-content">


				<div class="row">
					<!-- <div class="col-lg-6"> -->
					<div class="card mb-5" style="width: 100%;">
						<div class="card-header p-0">
							<div class="blog-media">
								<div class="text-left">
									<!-- 커뮤니티글일때는 커뮤니티, 꿀팁공유글일때는 꿀팁공유나오게 처리  -->
									<c:if test="${commuDetail.bCate=='공지사항'}">
										<a href="noticeList.do" style="color: #a0ba83;"> 공지사항</a> / 글
                           상세보기</c:if>
									<c:if test="${commuDetail.bCate=='커뮤니티'}">
										<a href="commuList.do" style="color: #a0ba83;"> 커뮤니티</a> / 글
                           상세보기</c:if>
									<c:if test="${commuDetail.bCate=='꿀팁공유'}">
										<a href="sharingTipList.do" style="color: #a0ba83;"> 꿀팁공유</a> / 글
                           상세보기</c:if>
								</div>
								<hr>
								<!-- <img src="assets/imgs/blog-2.jpg" alt="" class="w-100"> -->

							</div>
						</div>
						<!-- 수정 삭제  -->
						<c:if test="${member.id ==commuDetail.bId }">
							<div class="upde" style="display: flex; justify-content: flex-end; font-size: 14px;">

								<a href="updateBoard.do?bNum=${commuDetail.bNum}" class="up" style="margin: 0 5px 0 5px; color: black;">수정</a>
								/
								<a id="deleteBoard" class="de" style="margin: 0 5px 0 5px; color: black; cursor: pointer;">삭제</a>
							</div>
						</c:if>


						<div class="com" style="border: 1px solid #9e9e9e; border-radius: 10px;">
							<!-- 게시글 상세 띄어주기 -->
							<!-- 등급 닉네임
                         작성날짜 
                         제목, 글 내용  -->
							<div class="left">
								<div class="card-title mb-2" style="display: flex; justify-content: space-between; align-items: center;">
									<div class="nick" style="display: flex; align-items: center;">
										<!-- level1 씨앗 -->
										<!-- level2 새싹 -->
										<!-- level3 가지 -->
										<!-- level4 열매 -->
										<!-- level5 관리자 : jstl로 이미지 바꾸기-->

										<div style="width: 30%; margin: 0 15px 0 0;">
											<c:if test="${commuDetail.mNickName!='관리자'}">
												<img src="./assets/imgs/${commuDetail.grade}" alt="등급사진">
											</c:if>
											<c:if test="${commuDetail.mNickName=='관리자'}">
												<img src="./assets/imgs/level5.png" alt="등급사진">
											</c:if>
										</div>
										<div>${commuDetail.mNickName}</div>

									</div>
									<div>${commuDetail.bDate}</div>
								</div>
							</div>
							<!-- 글 제목 -->
							<div style="margin-bottom: 15px; margin-top: 15px;">
								<h5 style="font-weight: bold; display: flex;" id="title">${commuDetail.bTitle}</h5>
							</div>
							<!-- 글 내용 -->
							<div>${commuDetail.bContent}</div>

							<!-- 태그란 -->
							<div class="tl" style="display: flex;">
								<div id="tag-list" style="list-style: none; margin-top: 5px;"></div>
							</div>


							<!-- 좌측 하단에 좋아요 / 신고 -->
							<div class="llrr" style="display: flex;">
								<!-- 인라인 css 적용 -->

								<div class="ll" style="margin: 2px 10px 0 0">
									<div>
										<c:if test="${commuDetail.myheart==1}">
											<img src="./images/heartAfter.png" id="boardHeart" align="left" style="cursor: pointer; width: 30px;">
										</c:if>
										<c:if test="${commuDetail.myheart==0}">
											<img src="./images/heartBefore.png" id="boardHeart" align="left" style="cursor: pointer; width: 30px;">
										</c:if>
									</div>

									<div id="boardHeartCnt" style="text-align: center;">${commuDetail.heartCnt}</div>
								</div>

								<div class="rr" style="margin-right: 10px; width: 86%;">
									<img src="./images/reportBefore.png" onclick="this.src='./images/reportAfter.png'" onmouseover="this.src='./images/reportAfter.png'" onmouseout="this.src='./images/reportBefore.png'" id="boardReport" align="left" style="cursor: pointer; width: 30px;">
								</div>
								<div>
									<div id="re">
										<button class="rebt" style="margin: 10px 0px 0px 0px;" onclick="showTable()" >댓글</button>
									</div>
								</div>

							</div>
						</div>
						<div id="commentView">
						<c:if test="${commentList.size()==0 }">
							<img class="acense" src="assets/imgs/ace.png" alt="메인로고" style="margin-left: 45%; margin-bottom: 40px;" id="display-none2" />
							<h5 style="text-align: center;" id="display-none">아직 등록된 댓글이 없습니다.${commuDetail.mNickName}님의 게시글에 첫번째 댓글을 남겨보세요.</h5>
						</c:if>

						<!-- 댓글 작성창 -->
						<div class="com" id="com_reply" style="display: none;">
							<form class=" justify-between align-items-center">
								<div class="com1">
									<input type="hidden" class="cBnum" name="cBnum" value="${commuDetail.bNum}" id="re_text1">
									<input style="float: left;" type="text" class="cId" name="cId" value="${member.mNickname}" id="re_text2" readonly="readonly">
									<input type="text" placeholder="댓글을 입력해주세요." name="cContent" style="width: 100%; border: none; resize: none; margin-top: 17px;" class="newTweetContent cContent">
								</div>
								<div class="com2">
									<button style="
   								 margin-left: 88%;" class="rebt" class="butten" type="button" onclick="insertComment(${v.cNum})">댓글 등록</button>
								</div>
							</form>
						</div>
						
						
						<!-- 수정 삭제  -->
							<c:forEach var="v" items="${commentList}">
								<c:if test="${v.cSequence==0}">
									<c:if test="${v.cBlind==1 }">
										<!--  댓글 수정 wlals 수정-->
										<div class="com" style="margin-bottom: 5px;">
											<form id="${v.cNum }">
												<input type="hidden" name="cBnum" value="${v.cBnum}" id="re_text1">
												<input type="hidden" class="cnum1" name="cNum" value="${v.cNum}" id="re_text1">
												<input type="hidden" class="coCommentcGroup" name="cGroup" value="${v.cGroup}" id="rere_test">
												<input type="text" value="${v.cDate}" readonly style="border: none; text-align: right; float: right;" />
												<textarea rows="1" readonly name="content" id="${v.cNum }content" style="width: 50%; border: none; resize: none;" class="newTweetContent1" >관리자에 의해 블라인드 처리된 댓글입니다.</textarea>
												
											</form>

										</div>
									</c:if>
									<c:if test="${v.cBlind==2 }">
										<!--  댓글 수정 wlals 수정-->
										<div class="com" style="margin-bottom: 5px;">
											<form id="${v.cNum }">
												<input type="hidden" name="cBnum" value="${v.cBnum}" id="re_text1">
												<input type="hidden" class="cnum1" name="cNum" value="${v.cNum}" id="re_text1">
												<input type="hidden" class="coCommentcGroup" name="cGroup" value="${v.cGroup}" id="rere_test">
												<input type="text" value="${v.cDate}" readonly style="border: none; text-align: right; float: right;" />
												<textarea rows="1" readonly name="content" id="${v.cNum }content" style="width: 50%; border: none; resize: none;" class="newTweetContent1" >삭제된 댓글입니다.</textarea>
												
											</form>

										</div>

									</c:if>
									<c:if test="${v.cBlind==0 }">
										<div class="cnum" style="display: none;">${v.cNum}</div>
										<!--  댓글 수정 wlals 수정-->
										<div class="com" style="margin-bottom: 5px;">
											<form id="${v.cNum }">
												<c:if test="${v.mNickName!='관리자'}">
													<img style="float: left; width: 25px; margin-right: 5px;" src="./assets/imgs/${v.grade}" alt="등급사진">
												</c:if>
												<c:if test="${v.mNickName=='관리자'}">
													<img style="float: left; width: 25px; margin-right: 5px;" src="./assets/imgs/level5.png" alt="등급사진">
												</c:if>
												<input type="text" id="${v.cNum}cNum" class="cId" name="cId" value="${v.mNickName}" readonly style="border: none; float: left;" />
												<c:if test="${member.id == v.cId}">
													<div style="text-align: right; margin-bottom: 10px;">
														<input type="button" value="수정 /" class="updateReply2" id="ur${v.cNum}" onclick="comentUpdate(${v.cNum})"/>
														<input type="button" value="완료 /" style="display: none;" class="updateSubmit2" id="us${v.cNum}" onclick="updateComment(${v.cNum})" />
														<input type="button" value="삭제" class="de" onclick="deleteComment(${v.cNum})" />
													</div>
												</c:if>
												<input type="hidden" name="cBnum" value="${v.cBnum}" id="re_text1">
												<input type="hidden" class="cnum1" name="cNum" value="${v.cNum}" id="re_text1">
												<input type="hidden" class="coCommentcGroup" name="cGroup" value="${v.cGroup}" id="rere_test">
												<input type="text" value="${v.cDate}" readonly style="border: none; text-align: right; float: right;" />
												<textarea rows="1" readonly name="content" id="${v.cNum }content" style="width: 100%; border: none; resize: none;" class="newTweetContent1" >${v.cContent}</textarea>
												
											</form>

											<!-- 좌측 하단에 좋아요 / 신고 wlals 수정-->
											<div class="llrr" id="showRetable" style="display: flex;">
												<div class="ll" style="margin: 2px 10px 0 0">
												 <c:if test="${v.myheart =='1' }">
													<img src="./images/heartAfter.png" class="commentHeart"	 align="left" style="cursor: pointer; width: 30px;" onclick="clickReHeart(${v.myheart},${v.cNum},'${v.mNickName}')">
												</c:if>
												<c:if test="${v.myheart != '1' }">
													<img src="./images/heartBefore.png" class="commentHeart" align="left" style="cursor: pointer; width: 30px;" onclick="clickReHeart(${v.myheart},${v.cNum},'${v.mNickName}')">
												</c:if> 
													<div class="commentHeartCnt" style="text-align: center;">${v.heartCnt}</div>
												</div>
												<div class="rr" style="margin-right: 10px; width: 85%;">
													<img src="./images/reportBefore.png" class="commentReport" align="left" style="cursor: pointer; width: 30px;"  onclick="clickReReport(${v.cNum},'${v.mNickName}')" onmouseover="this.src='./images/reportAfter.png'" onmouseout="this.src='./images/reportBefore.png'">
												</div>

												<div id="re">
													<button class="rebt btn-reply" class="rebt" style="margin: 10px 0px 0px 0px;" >댓글</button>
												</div>
											</div>
										</div>

										<!-- 대댓글 작성창 -->
										<div class="com comcom" id="com_reReply" style="display: none">
											<form class=" justify-between align-items-center">
												<div class="com1">
													<input type="hidden" class="cBnum" name="cBnum" value="${commuDetail.bNum}" id="re_text1">
													<input style="float: left;" type="text" class="cId" name="cId" value="${member.mNickname}" id="re_text2" readonly="readonly">
													<textarea placeholder="댓글을 입력해주세요." rows="1" name="cContent2" id="reReply" style="width: 100%; border: none; resize: none; margin-top: 17px;" class="newTweetContent cContent2" ></textarea>
												</div>
												<div class="com2">
													<button style="margin-left: 85%;" class="rebt" type="button" >댓글 등록</button>
												</div>									
											</form>
										</div>			
										
									</c:if>
								</c:if>

								<c:if test="${v.cSequence!=0 }">
									<c:if test="${v.cBlind==1 }">
										<div style="display:flex; flex=direction:row;">
										<div class="esul">
											<img alt="대댓글" src="./images/coComment.png" style="display: inline; width: 100%; margin-top:25px;">
										</div>
											<div class="com comcom2" style="margin-right: 0px; display: inline-table;width:90%;">
												<!-- 대댓 수정 삭제  -->
												<form id="${v.cNum }">
													<input type="hidden" name="cBnum" value="${v.cBnum}" id="re_text1">
													<input type="hidden" class="cnum1" name="cNum" value="${v.cNum}" id="re_text1">
													<input type="hidden" class="coCommentcGroup2" name="cGroup" value="${v.cGroup}" id="rere_test">
													<%--<input type="text" name="cContent" id = "${v.cNum}re" class="content" value="${v.cContent}" readonly style="border: none;" />--%>
													<input type="text" value="${v.cDate}" readonly style="border: none; text-align: right; float: right;" />
													<textarea readonly id="${v.cNum}content" style="width: 400px; border: none; resize: none;" class="newTweetContent1" >관리자에 의해 블라인드된 댓글입니다.</textarea>
												</form>
											</div>
										</div>
									</c:if>
									<c:if test="${v.cBlind==2 }">
										<div style="display:flex; flex=direction:row;">
										<div class="esul">
											<img alt="대댓글" src="./images/coComment.png" style="display: inline; width: 100%; margin-top:25px;">
										</div>
											<div class="com comcom2" style="margin-right: 0px; display: inline-table;width:90%;">
												<!-- 대댓 수정 삭제  -->
												<form id="${v.cNum }">
													<input type="hidden" name="cBnum" value="${v.cBnum}" id="re_text1">
													<input type="hidden" class="cnum1" name="cNum" value="${v.cNum}" id="re_text1">
													<input type="hidden" class="coCommentcGroup2" name="cGroup" value="${v.cGroup}" id="rere_test">
													<%--<input type="text" name="cContent" id = "${v.cNum}re" class="content" value="${v.cContent}" readonly style="border: none;" />--%>
													<input type="text" value="${v.cDate}" readonly style="border: none; text-align: right; float: right;" />
													<textarea readonly id="${v.cNum}content" style="width: 400px; border: none; resize: none;" class="newTweetContent1" >삭제된 댓글입니다.</textarea>
												</form>
											</div>
										</div>
									</c:if>
									<c:if test="${v.cBlind==0 }">
										<div class="conmentCnum cnum" style="display: none;">${v.cNum}</div>
										<div style="display:flex; flex=direction:row;">
										<div class="esul">
											<img alt="대댓글" src="./images/coComment.png" style="display: inline; width: 100%; margin-top:25px;">
										</div>
											<div class="com comcom2" style="margin-right: 0px; display: inline-table;width:90%;">
												<!-- 대댓 수정 삭제  -->
												<form id="${v.cNum }">
													<c:if test="${v.mNickName!='관리자'}">
														<img style="float: left; width: 25px; margin-right: 5px;" src="./assets/imgs/${v.grade}" alt="등급사진">
													</c:if>
													<c:if test="${v.mNickName=='관리자'}">
														<img style="float: left; width: 25px; margin-right: 5px;" src="./assets/imgs/level5.png" alt="등급사진">
													</c:if>
													<input type="text" id="${v.cNum}cNum" class="cId" name="cId" value="${v.mNickName}" readonly style="border: none; float: left;" />
													<c:if test="${member.id == v.cId}">
														<div style="text-align: right; margin-bottom: 10px;">
															<input type="button" value="수정 /" class="updateReply2" id="ur${v.cNum}" onclick="comentUpdate(${v.cNum})"/>
															<input type="button" value="완료 /" style="display: none;" class="updateSubmit2" id="us${v.cNum}" onclick="updateComment(${v.cNum})" />
															<input type="button" value="삭제" class="de" onclick="deleteComment(${v.cNum})" />
														</div>
													</c:if>
													<input type="hidden" name="cBnum" value="${v.cBnum}" id="re_text1">
													<input type="hidden" class="cnum1" name="cNum" value="${v.cNum}" id="re_text1">
													<input type="hidden" class="coCommentcGroup2" name="cGroup" value="${v.cGroup}" id="rere_test">
													<%--<input type="text" name="cContent" id = "${v.cNum}re" class="content" value="${v.cContent}" readonly style="border: none;" />--%>
													<input type="text" value="${v.cDate}" readonly style="border: none; text-align: right; float: right;" />
													<textarea readonly id="${v.cNum}content" style="width: 400px; border: none; resize: none;" class="newTweetContent1" >${v.cContent}</textarea>
												</form>


												<!-- 좌측 하단에 좋아요 / 신고 -->
												<div class="llrr" style="display: flex;">
													<!-- 인라인 css 적용 -->
													<div class="ll" style="margin: 2px 10px 0 0">
													 <c:if test="${v.myheart =='1' }">
														<img src="./images/heartAfter.png" class="commentHeart"	 align="left" style="cursor: pointer; width: 30px;" onclick="clickReHeart(${v.myheart},${v.cNum},'${v.mNickName}')">
													</c:if>
													<c:if test="${v.myheart != '1' }">
														<img src="./images/heartBefore.png" class="commentHeart" align="left" style="cursor: pointer; width: 30px;" onclick="clickReHeart(${v.myheart},${v.cNum},'${v.mNickName}')">
													</c:if> 
														<div class="commentHeartCnt" style="text-align: center;">${v.heartCnt}</div>
													</div>
													<div class="rr" style="margin-right: 10px">
														<img src="./images/reportBefore.png" class="commentReport" align="left" style="cursor: pointer; width: 30px;" onclick="clickReReport(${v.cNum},'${v.mNickName}')" onmouseover="this.src='./images/reportAfter.png'"  onmouseout="this.src='./images/reportBefore.png'">
													</div>
												</div>
											</div>
										</div>
									</c:if>
								</c:if>
							</c:forEach>
						</div>



					</div>
				</div>
			</div>
			<!--  Sidebar 커스텀태그 활용 -->
			<kwon:sideInfo />
		</div>
	</div>
	<c:forEach var="v" items="${tagList}">
		<div class="oldTag" style="display: none;">${v.tContent}</div>
	</c:forEach>

	<%@ include file="./footer.jsp"%>

	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
	
   
   function resize(obj) {
       obj.style.height = '1px';
       obj.style.height = (12 + obj.scrollHeight) + 'px';
   }
   
   
   const oldTag = document.getElementsByClassName("oldTag");
   if(oldTag[0].innerText != ''){
   for (let i = 0; i < '${tagList.size()}'; i++) {
      let arr = [ "#fff5ee", "#fffafa", "#f8f8ff", "#fffaf0", "#f5f5f5",
            "#f0f8ff", "#f0ffff", "#fdf5e6", "#f5fffa", "#ffefd5",
            "#ffdab9", "#faf0e6", "#eee8aa", "#ffe4e1", "#ffe4b5" ];
      let color = arr[Math.floor(Math.random() * arr.length)];
      $("#tag-list")
            .append(
                  "<button class='tag-item' style=' margin-right:10px;   padding: 3px;  display: inline;  border-radius: 5px; background-color:"+color+";' >#"
                        + oldTag[i].innerText
                        + "</button>");
   };
   }
   
   
			   const tagItem = document.getElementsByClassName("tag-item");
			   
			   for(let i = 0; i < tagItem.length; i++){
			      tagItem[i].addEventListener('click', function(){
			         console.log("냥");
			         location.href="searchTag.do?tag="+oldTag[i].innerText;
			      })
			   }
   
            
            $('#deleteBoard').on('click',function(){
               if(confirm('삭제하시겠습니까?')){
                  location.href="deleteBoard.do?bNum=${commuDetail.bNum}";
               }
            })
            
            
          //--------------------- 게시글 좋아요 버튼을 클릭시 실행되는 스크립트
          let nickName="<c:out value='${member.mNickname}'/>";
          console.log('${hBnum}');
          $('#boardHeart').on(
                "click",
                function() {
                   console.log('클릭됨');
                   var imgSrc = $('#boardHeart').attr("src"); // src(사진경로)불러와서 저장
                   console.log($('#boardHeart').attr("src"));
                   
 
                   if(nickName == '${commuDetail.mNickName}'){ // 내 게시글일때
	                   alert('본인 게시글은 좋아요를 실행할 수 없습니다.');
	                   return;
                   }
                   
                   if(nickName != ''){ // 로그인했을때만 ajax 실행
                      
	                   $.ajax({
	                      type : 'POST', //데이터를 로드하는 방식
	                      url : 'heart.do', // 어디로 보낼건지
	                      data : {
	                         'hImgPath' : imgSrc,
	                         'htype' : '게시글',
	                         'hbnum' : ${commuDetail.bNum} 
	                      },
	                      success : function(result) { // 로드 성공시 수행할 메서드
	                         console.log("데이터 반환됨. 반환된 데이터 " + result);
	
	                         //-------- 좋아요 사진 변경
	                         if (imgSrc == './images/heartBefore.png') { // 색 있는사진으로 변경
	                            $('#boardHeart').prop("src",
	                                  "./images/heartAfter.png");
	                         } else { // 색 없는 사진으로 변경
	                            $('#boardHeart').prop("src",
	                                  "./images/heartBefore.png");
	                         }
	                         //--------- 좋아요 카운트 측정
	                         $('#boardHeartCnt').text(result);
	
	                      },
	                      error : function(request, status, error) {
	                         console.log("code:" + request.status + "\n"
	                               + "message:" + request.responseText + "\n"
	                               + "error:" + error);
	                      }
	                   });
                  }
                   else{ // 로그인안했을때 alert창
                      alert('로그인 후 이용바랍니다.');
                   }
                   
                });
	
          //-------------------- 댓글/대댓글 좋아요 버튼을 클릭시 실행되는 스크립트
         
           function clickReHeart(myHeart,cNum,mNick){
       	   		let path = myHeart;
       	   		if(path==0){
       	   			path="./images/heartBefore.png";
       	   		}else{
       	   			path="./images/heartAfter.png";
       	   		}
        	    
        	    if(mNick==nickName){
            	  alert('본인 (대)댓글은 좋아요를 실행할 수 없습니다.');
            	  return;
        	    }
        	    if(nickName != ''){
        		  $.ajax({
                      type : 'POST', //데이터를 로드하는 방식
                      url : 'heart.do', // 어디로 보낼건지
                      data : {
                          'hImgPath' : path,
                          'htype' :  '댓글',
                          'hbnum' : cNum
                      },
                      success : function(result) { // 로드 성공시 수행할 메서드
                          //비동기후 이벤트 클릭등이 끊어지므로 다시연결
                    	  $('#commentView').load(location.href + ' #commentView', function() {
                        	  $(".btn-reply").off("click").on("click", function() {
                        	    var index = $(".btn-reply").index(this);
                        	    console.log(index);
                        	    if (comcom[index].style.display == "none") {
                        	      comcom[index].style.display = "";
                        	    } else {
                        	      comcom[index].style.display = "none";
                        	    }
                        	  });                        	  
                        	});
                      },
                      error : function(err) { // 로드 실패시 수행할 메서드
                         console.log('에러발생!');
                         console.log(err.status);
                         console.log(err.errText);
                      }
                   });
        		  
        	   }else{
        		  alert('로그인 후 이용바랍니다.');
        	   }
          } 
          //--------------------- 게시글 신고 버튼을 클릭시 실행되는 스크립트
          $('#boardReport').on( "click", function() {
                   console.log('클릭됨');
                   
                   if('${commuDetail.mNickName}' == '관리자'){ //관리자
                   	alert('관리자글은 신고를 실행할 수 없습니다.');
                    return;
                   }
                   
                   if(nickName == '${commuDetail.mNickName}'){ // 내 게시글일때
                      console.log('들오어옴');
                   alert('본인 게시글은 신고를 실행할 수 없습니다.');
                   return;
                   }

                   if(nickName != ''){ // 로그인했을때만 ajax 실행  
                   $.ajax({
                      type : 'POST', //데이터를 로드하는 방식
                      url : 'report.do', // 어디로 보낼건지
                      data : {
                         'rtype' : '게시글',
                         'rbnum' : ${commuDetail.bNum} 
                      },
                      success : function(result) { // 로드 성공시 수행할 메서드
                         console.log("데이터 반환됨. 반환된 데이터 " + result);
                         //-------- 1과 0으로 알람창띄어주기
                         if (result == '1') { 
                            alert('신고 완료되었습니다.');
                         } else { 
                            alert('이미 신고 되었습니다.');
                         }

                      },
                      error : function(request, status, error) {
                         console.log("code:" + request.status + "\n"
                               + "message:" + request.responseText + "\n"
                               + "error:" + error);
                      }
                   })
                  }
                   else{ // 로그인안했을때 alert창
                      alert('로그인 후 이용바랍니다.');
                   }
                });

          //-------------------- 댓글/대댓글 신고 버튼을 클릭시 실행되는 스크립트
          const commentReport = document.getElementsByClassName("commentReport");
          const cnum1 = document.getElementsByClassName("cnum1");
          
          function clickReReport(cNum,mNick){
   	      	  let nickName="<c:out value='${member.mNickname}'/>";
	   	      if(mNick == '관리자'){ // 관리자
            	alert('관리자글은 신고를 실행할 수 없습니다.');
            	return;
	          }
   	      	  if(mNick==nickName){
          	    alert('본인 (대)댓글은 신고를 실행할 수 없습니다');
          	    return;
      	      }
   	      	  
   	      	if(nickName != ''){
	   	      	$.ajax({
	                type : 'POST', //데이터를 로드하는 방식
	                url : 'report.do', // 어디로 보낼건지
	                data : {
	                   'rtype' : '댓글',
	                   'rbnum' : cNum
	                },
	                success : function(result) { // 로드 성공시 수행할 메서드
	                   console.log("데이터 반환됨. 반환된 데이터 " + result);	                
	                    //-------- 1과 0으로 알람창띄어주기
	                    if (result == '1') { 
	                       alert('신고 완료되었습니다.');
	                    } else { 
	                       alert('이미 신고 되었습니다.');	                       
	                    }
	
	                    //비동기후 이벤트 클릭등이 끊어지므로 다시연결
	                    $('#commentView').load(location.href + ' #commentView', function() {
	                     	  $(".btn-reply").off("click").on("click", function() {
	                     	    var index = $(".btn-reply").index(this);
	                     	    console.log(index);
	                     	    if (comcom[index].style.display == "none") {
	                     	      comcom[index].style.display = "";
	                     	    } else {
	                     	      comcom[index].style.display = "none";
	                     	    }
	                     	  });                        	  
	                     	});
	                },
	                error : function(err) { // 로드 실패시 수행할 메서드
	                   console.log('에러발생!');
	                   console.log(err.status);
	                   console.log(err.errText);
	                }
	             });
   	      	}else{
      		  alert('로그인 후 이용바랍니다.');   	      		
   	      	}
          }
          
        //----------------------------- 댓글/대댓글------------------------------ 
          //-------------------- 댓글 버튼 토글 showTable()
			function showTable() {
				if(nickName!=''){
             		$('#com_reply').toggle();
                }
                else{
                   alert('로그인 후 댓글 달아주세요');
                }
			 }
        
             function insertComment(cGroup){
                   let cBnum = $('.cBnum').val();
                   let Content = $('.cContent').val();
                   if(Content==''){
                      alert('댓글을 작성해주세요');
                   }else{
                      $.ajax({
                         type : 'POST',
                         async : false,
                         url : 'commentInsert.do' ,
                         data : {
                         'cContent': Content,
                         'cBnum' : cBnum,
                         'cId' : '${member.id}',
                         'cSequence' : 0
                         },
                         success : function(result){
                             alert('댓글이 등록되었습니다.');
                             //비동기후 이벤트 클릭등이 끊어지므로 다시연결
                             $('#commentView').load(location.href + ' #commentView', function() {
                             	  $(".btn-reply").off("click").on("click", function() {
                             	    var index = $(".btn-reply").index(this);
                             	    console.log(index);
                             	    if (comcom[index].style.display == "none") {
                             	      comcom[index].style.display = "";
                             	    } else {
                             	      comcom[index].style.display = "none";
                             	    }
                             	  });
                             	  
                             	});
                             $('.cContent').val('')   	   		// 댓글 등록시 등록창 초기화 
                             $('#com_reply').hide();		// 댓글 등록 후 댓글창 안보이게 
                         },
                         error : function(err) { // 로드 실패시 수행할 메서드
                                 console.log('에러발생!');
                                 console.log(err.status);
                                 console.log(err.errText);
                              }
                      });
                   }
                
                };
                
           window.onload = function() {
               CKEDITOR.replace("txt", {
                 toolbar: false
               });
           };                
           
           <!-- 대댓글 작성 토 글 -->            
           // -- 대댓글 작성 버튼 
           const btnReply = document.getElementsByClassName("btn-reply");
           // -- 대댓글 작성 창 
           const comcom = document.getElementsByClassName("comcom");
			
			$(".btn-reply").on("click", function(){
				//모든 대댓글 작성창 숨기기
				$(".comcom").css("display", "none");
				if(nickName!=''){
					var index = $(".btn-reply").index(this);
					  console.log(index);
					  if(comcom[index].style.display == "none"){
					    comcom[index].style.display = "";
					  }else{
					    comcom[index].style.display = "none";
					  }					
				}else{
	                   alert('로그인 후 댓글 달아주세요');
					
				}
				  
				});
                
			
			//댓글에서 댓글버튼루를시 cGrop받기위해 상수선언
			let cGrop;
			
			$(document).on('click', '#showRetable button', function() {
			  cGroup = $(this).closest('.com').find('.coCommentcGroup').val();
			});

			//대댓글 등록시 위에서받은 cGrop이랑 입력한값을 insertcoComment에전달
			$(document).on('click', '#com_reReply button', function() {
			  const content = $(this).closest('.comcom').find('#reReply').val();
			  insertcoComment(cGroup,content);
			}); 

			
            //---대댓글 등록
			function insertcoComment(cGroup,content){
            	let coMMuDetail = ${commuDetail.bNum};
                let cbnum = ${commuDetail.bNum};
                let id = "${member.id}";
                if(id==""){
                	
                }
            	if(content ==''){
            		alert('댓글을 작성해주세요');
            	}else{
            		$.ajax({
            			type : 'POST',
                        async : false,
                        url : 'commentInsert.do' ,
                        data : {
                        'cContent': content,
                        'cBnum' :cbnum,
                        'cId' : id,
                        'cSequence' : 1,
                        'cGroup' : cGroup
                        },
                        success : function(result){                          
                             alert('댓글이 등록되었습니다.');
                             //비동기후 이벤트 클릭등이 끊어지므로 다시연결
                             $('#commentView').load(location.href + ' #commentView', function() {
   	                     	  $(".btn-reply").off("click").on("click", function() {
   	                     	    var index = $(".btn-reply").index(this);
   	                     	    console.log(index);
   	                     	    if (comcom[index].style.display == "none") {
   	                     	      comcom[index].style.display = "";
   	                     	    } else {
   	                     	      comcom[index].style.display = "none";
   	                     	    }
   	                     	  });                        	  
   	                     	});
                        },
                        error : function(err) { // 로드 실패시 수행할 메서드
                                console.log('에러발생!');
                                console.log(err.status);
                                console.log(err.errText);
                             }
            		})
           		            		
            	}
                
            }
             
            <!-- 댓글수정-->
            // 댓댓글 수정 함수
            function comentUpdate(cNum) {
            	$('#'+cNum+'content').focus();
                $('#'+cNum+'content').attr("readonly", false);           
                // 수정 버튼 지우기
                $('#ur'+cNum).css("display", "none");
                // 완료 버튼 보이기
                $('#us'+cNum).css("display", "");
            }
            
            
            <!--댓글 대댓글 수정 누르면 -->
            function updateComment(cNum){
            console.log('번'+cNum);
               var cContent = $('#'+cNum+'content').val();
               if($('#'+cNum+'content').val().length ===0){
            	   alert('댓글을 입력해주세요.');
            	   $('#'+cNum+'content').focus();
            	   return ;
               }
               $.ajax({
                  type :'POST',
                  async : false,
                  url : 'commentUpdate.do',
                  data : 
                  {
                       'cNum': cNum,
                      'cContent' : cContent
                    },
                  success : function(result){
                     if(result==1){
                        alert('수정 완료했습니다.');                       
                     }else{
                        alert('수정실패');
                     }
                     //비동기후 이벤트 클릭등이 끊어지므로 다시연결
                     $('#commentView').load(location.href + ' #commentView', function() {
                   	  $(".btn-reply").off("click").on("click", function() {
                   	    var index = $(".btn-reply").index(this);
                   	    console.log(index);
                   	    if (comcom[index].style.display == "none") {
                   	      comcom[index].style.display = "";
                   	    } else {
                   	      comcom[index].style.display = "none";
                   	    }
                   	  });
                   	  
                   	});
                  },
                   error : function(err) { // 로드 실패시 수행할 메서드
                         console.log('에러발생!');
                         console.log(err.status);
                         console.log(err.errText);
                      }
               });
            }
            
            //대댓글 삭제 
            function deleteComment(cNum){
               console.log('번호 '+cNum);
               var ans = confirm('삭제 하시겠습니까? ');
              if(!ans){
                 return false;
              }else{
               $.ajax({
                 type : 'POST',                          
                 url : 'commentDelete.do', 
                 data :{cNum : cNum},
                 success : function(result){
                    if(result ==1){
                       alert('삭제되었습니다.');
                    } else{
                      alert('삭제되지 않았습니다.');
                    }
                    //비동기후 이벤트 클릭등이 끊어지므로 다시연결
                    $('#commentView').load(location.href + ' #commentView', function() {
                  	  $(".btn-reply").off("click").on("click", function() {
                  	    var index = $(".btn-reply").index(this);
                  	    console.log(index);
                  	    if (comcom[index].style.display == "none") {
                  	      comcom[index].style.display = "";
                  	    } else {
                  	      comcom[index].style.display = "none";
                  	    }
                  	  });
                  	  
                  	});
                 },
                 error : function(err) { // 로드 실패시 수행할 메서드
                        console.log('에러발생!');
                        console.log(err.status);
                        console.log(err.errText);
                     }
              });
            }
             
            }
            $('input[type="text"]').keydown(function() {
                if (event.keyCode === 13) {
                  event.preventDefault();
                };
              });
        </script>
</body>
</html>