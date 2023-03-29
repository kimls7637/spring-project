<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="kwon"%>
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
<title>ACENSE : 게시글 목록</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">
<link rel="icon" href="./assets/imgs/favicon.png" />
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet" href="assets/css/joeblog.css">
<link rel="stylesheet" href="assets/css/search.css">
<!-- 페이징 -->
<link rel="stylesheet" href="assets/css/paginate.css">
<link rel="stylesheet" href="assets/css/ligne.css">
<script type="text/javascript" src="assets/js/paginate.js"></script>
<style type="text/css">
div.paginate input[type='button'] {
	margin: 0px 2px;
	border: none;
	color: #a0ba83 !important;
	background-color: transparent;
	border-radius: 50%;
	min-width: 1.5rem;
	min-height: 1.5rem;
	outline: none;
}

div.paginate input[type='button'].active {
	background-color: white !important;
	color: #fff;
	font-weight: bold;
}

.text-left {
	text-align: left;
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
	padding: 20px 0 0 40px;
}

.row {
	/* display: -webkit-box; */
	/* display: -webkit-flex; */
	display: -ms-flexbox;
	/* display: flex; */
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

#title {
	border: 1px solid black;
}

#content {
	border: 1px solid black;
}

#else {
	border: 1px solid black;
}

span:hover {
	color: black;
}

.list button:hover {
	color: #a0ba83 !important;
}

.leftArea {
	width: 100%;
}

.rightArea {
	width: 220px;
}

.rankArea {
	width: 40px;
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

input:focus {
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


				<div class="row" style="display: flow-root;">
					<div class="card text-center mb-5">
						<div class="card-header p-0" style="margin-bottom: 20px;">
							<div class="blog-media">
								<div class="text-left">
									<h4 style="font-weight: bold;">꿀팁공유</h4>
									<p style="">다양한 정보를 공유하고 캠핑의 질을 상승시켜보세요.</p>
								</div>
								<c:if test="${member!=null}">
									<div class="  loginHere">
										<a
											class="flex h-9 items-center space-x-1 rounded-md bg-blue-500 py-2 px-3 text-white shadow-sm hover:bg-blue-400 sm:pr-4"
											href="insertBoard.do?bCate=꿀팁공유"
											style="width: 14%; background-color: #a0ba83;"><svg
												xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
												fill="currentColor" aria-hidden="true" class="h-4 w-4">
                                 <path
													d="M21.731 2.269a2.625 2.625 0 00-3.712 0l-1.157 1.157 3.712 3.712 1.157-1.157a2.625 2.625 0 000-3.712zM19.513 8.199l-3.712-3.712-12.15 12.15a5.25 5.25 0 00-1.32 2.214l-.8 2.685a.75.75 0 00.933.933l2.685-.8a5.25 5.25 0 002.214-1.32L19.513 8.2z"></path></svg><span
											class="inline text-sm font-medium hover:no-underline sm:leading-5">작성하기</span></a>
									</div>
								</c:if>
							</div>
						</div>

						<!--  최신순 / 조회순-->
						<div class="list" style="text-align: right;">
							<a href="recent.do?bCate=꿀팁공유"><button id="recent"
									style="color: black; text-decoration: none; outline: none;">최신순</button></a>
							/ <a href="hit.do?bCate=꿀팁공유"><button id="hit"
									style="color: black; text-decoration: none; outline: none;">조회순</button></a>
						</div>
						<hr>

						<!-- 게시글 -->
						<div
							style="border-bottom: 1px solid #dee2e6; padding-bottom: 20px; display: flex;">
							<span
								style="float: left; font-weight: 700; width: 7%; padding-left: 24px;">번호</span>
							<span
								style="float: left; font-weight: 700; width: 45%; padding-left: 40px;">제목</span>
							<span style="float: left; font-weight: 700; width: 10%;">댓글수</span>
							<span style="float: left; font-weight: 700; padding-left: 30px;">작성자</span>
							<span
								style="float: left; font-weight: 700; width: 10%; padding-left: 33px;">조회수</span>
							<span style="font-weight: 700; width: 15%; padding-left: 20px;">작성일</span>
						</div>
						<table class="myTable table hover"
							style="table-layout: auto; width: 100%; table-layout: fixed;">
							<tbody>
								<c:forEach var="v" items="${commuList}" varStatus="num">
									<tr style="border-color: transparent;">
										<td style="width: 50px;">${fn:length(commuList)-num.index}</td>
										<td style="width: 45%;"><div
												class="leftArea white-space overflow ellipsis">
												<a href="commuDetail.do?bNum=${v.bNum}"
													style="color: black;">${v.bTitle}</a>
											</div></td>
										<td style="font-size: small; color: red; width: 30px;">${v.commentCnt}
										</td>
										<c:if test="${v.mNickName!='관리자'}">
											<td class="rankArea white-space overflow ellipsis"
												style="width: 15%; "><img src="./assets/imgs/${v.grade}"
												style="display: inline; width: 25px; padding-bottom: 3px;" />
												<span>${v.mNickName}</span></td>
										</c:if>
										<c:if test="${v.mNickName =='관리자'}">
											<td style="width: 15%;"><img
												src="./assets/imgs/level5.png"
												style="display: inline; width: 25px; padding-bottom: 3px;" />
												<span>${v.mNickName}</span></td>
										</c:if>
										<td style="width: 40px;">${v.bHits}</td>
										<td style="width: 90px;">${v.bDate}</td>
									</tr>

								</c:forEach>
							</tbody>

						</table>
						<!--게시글 끝.  -->
					</div>
				</div>
			</div>

			<!—  Sidebar 커스텀태그 활용 —>
			<kwon:sideInfo />
		</div>
	</div>


	<%@ include file="./footer.jsp"%>

	<script>
		let options = {
			numberPerPage : 10, //Cantidad de datos por pagina
			goBar : true, //Barra donde puedes digitar el numero de la pagina al que quiere ir
			pageCounter : true, //Contador de paginas, en cual estas, de cuantas paginas
		};

		paginate.init('.myTable', options);
	</script>



</body>
</html>