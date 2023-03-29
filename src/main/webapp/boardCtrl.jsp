<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ACENSE : 관리자 게시글 관리</title>
<link rel="icon" href="./assets/imgs/favicon.png" />

<!-- plugins:css -->
<link rel="stylesheet"
	href="admin.assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="admin.assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<link rel="stylesheet"
	href="admin.assets/vendors/jvectormap/jquery-jvectormap.css">
<link rel="stylesheet"
	href="admin.assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="admin.assets/vendors/owl-carousel-2/owl.carousel.min.css">
<link rel="stylesheet"
	href="admin.assets/vendors/owl-carousel-2/owl.theme.default.min.css">
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="admin.assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="admin.assets/imgs/favicon.png" />
<style>
.table th, .jsgrid .jsgrid-table th, .table td, .jsgrid .jsgrid-table td {
    line-height: unset;
}
.text-color {
	color: white !important;
}

.text-color {
	color: white;
}

.btn-tomung {
	border: none;
	background-color: #ffffff00;
	color: white;
	font-size: smaller;
}

.btn-tomung:hover {
	color: darkgray;
}

a {
	color: white;
}

a:hover {
	color: darkgray;
}

.recent {
	background-color: rgb(0, 0, 0, 0);
	color: white;
	border: none;
}

.recentReport{
	background-color: rgb(0, 0, 0, 0);
	color: white;
	border: none;
}
.recentBlind {
	background-color: rgb(0, 0, 0, 0);
	color: white;
	border: none;
}
.leftArea {
	width: 400px;
	background: #191c24;
}

.rightArea {
	width: 220px;
	background: #191c24;
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
.sidebar .nav .nav-item.active > .nav-link:before {
    background: unset;
}
</style>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<div
				class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
				<a class="sidebar-brand brand-logo" href="admin.do"
					style="color: white; font-weight: 600; padding-left: 60px; text-decoration: none;">A
					C E N S E</a> <a class="sidebar-brand brand-logo-mini" href="admin.do"
					style="color: white; font-weight: 600; padding-left: 27px;">A</a>
			</div>
			<ul class="nav">
				<li class="nav-item profile">
					<div class="profile-desc">
						<div class="profile-pic">
							<div class="count-indicator">
								<img class="img-xs rounded-circle "
									src="assets/imgs/favicon.png" alt="로고"> <span
									class="count bg-success"></span>
							</div>
							<div class="profile-name">
								<h5 class="mb-0 font-weight-normal">Sixsense</h5>
								<span>admin</span>
							</div>
						</div>

					</div>
				</li>
				<li class="nav-item nav-category"><span class="nav-link"></span>
				</li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="boardCtrl.do" style="background-color:#0f1015;"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title" style="color: white !important;">게시글관리</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="memberCtrl.do"> <span class="menu-icon"> <i
							class="mdi mdi-table-large"></i>
					</span> <span class="menu-title">회원관리</span>
				</a></li>

			</ul>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_navbar.html -->
			<nav class="navbar p-0 fixed-top d-flex flex-row">
				<div
					class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
					<a class="navbar-brand brand-logo-mini" href="admin.do"><img
						style="width: 35px; height: 35px;" src="assets/imgs/favicon.png"
						alt="logo" /></a>
				</div>
				<div
					class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
					<button class="navbar-toggler navbar-toggler align-self-center"
						type="button" data-toggle="minimize">
						<span class="mdi mdi-menu"></span>
					</button>
					<ul class="navbar-nav w-100">
					</ul>
					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item dropdown"><a class="nav-link"
							id="profileDropdown" href="#" data-toggle="dropdown">
								<div class="navbar-profile">
									<img class="img-xs rounded-circle"
										src="assets/imgs/favicon.png" alt="로고">
									<p class="mb-0 d-none d-sm-block navbar-profile-name">Sixsense</p>
									<i class="mdi mdi-menu-down d-none d-sm-block"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
								aria-labelledby="profileDropdown">
								<h6 class="p-3 mb-0">Profile</h6>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item preview-item" href="main.do">
									<div class="preview-thumbnail">
										<div class="preview-icon bg-dark rounded-circle">
											<i class="mdi mdi-logout text-danger"></i>
										</div>
									</div>
									<div class="preview-item-content">
										<p class="preview-subject mb-1">go to main</p>
									</div>
								</a>
								<div class="dropdown-divider"></div>
								<p class="p-3 mb-0 text-center">Advanced settings</p>
							</div></li>
					</ul>
					<button
						class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
						type="button" data-toggle="offcanvas">
						<span class="mdi mdi-format-line-spacing"></span>
					</button>
				</div>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<div style="float: left; display: inline-block;">
							<button class="recentReport" id="choiceInit">신고수 초기화</button>
							/
							<button id="choiceBlind" class="recentBlind">글 블라인드</button>
						</div>
						<div style="float: right; display: inline-block;">
							<!--     <a href="boardCtrl.do"><button class="recent">최신순</button></a> / <a
                        href="report.do"><button class="recent">신고순</button></a> -->
							<button class="recent" value="최신순">최신순</button>
							/
							<button class="recent" value="신고순">신고순</button>
						</div>
					</div>

					<div class="row">
						<!--왼쪽 시작 -->
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title"
										style="display: inline-block; margin-bottom: 30px;">댓글 목록</h4>

									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th style="cursor: pointer"><input type="checkbox"
														id="cAllAgree" name="chk_all" value="selectall" /></th>
													<th class="text-color">날짜</th>
													<th class="text-color">내용</th>
													<th class="text-color">블라인드</th>
													<th class="text-color">작성자</th>
													<th class="text-color">신고수</th>
												</tr>
											</thead>
											<tbody>

												<!-- 댓글목록 -->
												<c:forEach var="v" items="${commemtCtrlReport}">
													<c:if test="${v.cBlind!=2}">
													<tr>
														<td style="display: none;"><input type="hidden"
															class="cId" value="${v.cId }" /></td>
														<td style="cursor: pointer"><input type="checkbox"
															class="cAllBtn cNum" name="cNum" value="${v.cNum}" /></td>
														<td class="text-color">${v.cDate }</td>
														<td class="text-color"><div
																class="rightArea white-space overflow ellipsis">
																<a href="commuDetail.do?bNum=${v.cBnum}" target="_blank">${v.cContent }</a>
															</div></td>
														<c:if test="${v.cBlind==0}">
															<td class="text-color rBlind">X</td>
														</c:if>

														<c:if test="${v.cBlind==1}">
															<td class="text-color rBlind">O</td>
														</c:if>
														<td class="text-color">${v.mNickName }</td>
														<td class="text-color"><div class="progress">
																<div class="progress-bar bg-danger rCnt"
																	role="progressbar" style="width: ${v.reportCnt}%"
																	aria-valuenow="50" aria-valuemin="0" aria-valuemax="50"></div>
															</div></td>
														<td class="text-color rCnt2">${v.reportCnt}</td>
													</tr>
													</c:if>
												</c:forEach>


											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 왼쪽 끝 -->

						<!-- 오른 -->
						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title"
										style="display: inline-block; margin-bottom: 30px;">게시글
										목록</h4>

									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th style="cursor: pointer"><input type="checkbox"
														id="bAllAgree" name="chk_all" value="selectall" /></th>
													<th class="text-color">날짜</th>
													<th class="text-color">제목</th>
													<th class="text-color">블라인드</th>
													<th class="text-color">작성자</th>
													<th class="text-color">신고수</th>
												</tr>
											</thead>
											<tbody>

												<c:forEach var="v" items="${boardCtrlBoard}">
													<tr>
														<td style="display: none;"><input type="hidden"
															class="bId" value="${v.bId }" /></td>
														<td style="cursor: pointer"><input type="checkbox"
															class="bAllBtn bNum" name="bNum" value="${v.bNum}" /></td>
														<td class="text-color">${v.bDate }</td>
														<td class="text-color"><div
																class="rightArea white-space overflow ellipsis">
																<a href="commuDetail.do?bNum=${v.bNum}" target="_blank">${v.bTitle }</a>
															</div></td>
														<c:if test="${v.blind==0}">
															<td class="text-color bBlind">X</td>
														</c:if>

														<c:if test="${v.blind==1}">
															<td class="text-color bBlind">O</td>
														</c:if>
														<td class="text-color">${v.mNickName }</td>
														<td class="text-color"><div class="progress">
																<div class="progress-bar bg-danger bCnt"
																	role="progressbar" style="width: ${v.reportCnt}%"
																	aria-valuenow="50" aria-valuemin="0" aria-valuemax="50"></div>
															</div></td>
														<td class="text-color bCnt2">${v.reportCnt}</td>
													</tr>

												</c:forEach>


											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 오른쪽 끝 -->
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<!-- <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer> -->
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<a href="apple.do">dadfs</a>

	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="admin.assets/vendors/chart.js/Chart.min.js"></script>
	<script src="admin.assets/vendors/progressbar.js/progressbar.min.js"></script>
	<script src="admin.assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
	<script
		src="admin.assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="admin.assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="admin.assets/js/off-canvas.js"></script>
	<script src="admin.assets/js/hoverable-collapse.js"></script>
	<script src="admin.assets/js/misc.js"></script>
	<script src="admin.assets/js/settings.js"></script>
	<script src="admin.assets/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="admin.assets/js/dashboard.js"></script>
	<!-- End custom js for this page -->

	<!-- 지민스크립트 -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
		// 체크박스 전체선택, 전체해제, 부분선택
		$(function() {
			// 게시글 목록 체크박스 전체선택
			$("#bAllAgree").click(function() {
				if ($("#bAllAgree").prop("checked")) {
					$(".bAllBtn").prop("checked", true);
				} else {
					$(".bAllBtn").prop("checked", false);
				}
			});

			// 댓글 목록 체크박스 전체선택
			$("#cAllAgree").click(function() {
				if ($("#cAllAgree").prop("checked")) {
					$(".cAllBtn").prop("checked", true);
				} else {
					$(".cAllBtn").prop("checked", false);
				}
			});

			// 게시글 목록, 댓글 목록 부분선택
			$(".bAllBtn, .cAllBtn").click(function() {
				if ($(this).prop("checked")) {
					var allCnt = $("input[name='chk_all']").length;
					var checkedCnt = $("input[name='chk_all']:checked").length;
					if (allCnt == checkedCnt) {
						$("#bAllAgree, #cAllAgree").prop("checked", true);
					} else {
						$("#bAllAgree, #cAllAgree").prop("checked", false);
					}
				} else {
					$("#bAllAgree, #cAllAgree").prop("checked", false);
				}
			});
		});

		// ----------------------체크된거 기능 실행
		let commentArr = []; // 댓글 체크하면 여기에 cNum하고 cContent(댓글인지 게시글인지)가 들어간다.
		let boardArr = []; // 게시글 체크하면 여기에 bNum하고 bCate(댓글인지 게시글인지)가 들어간다.
		let commentFlag = false; // 댓글이 하나라도 불러왔다면 트루로 바뀔 예정
		let boardFlag = false; // 게시글이 하나라도 불러왔다면 트루로 바뀔 예정
		let initFlag = false; // alert창 한번만 할 flag처리
		let blindFlag = false; // alert창 한번만 할 flag처리

		// ----------------------신고수 초기화, 블라인드 버튼 클릭시
		$('#choiceInit,#choiceBlind')
				.click(
						function() {
							const rCnt = document
									.getElementsByClassName("rCnt");
							const rCnt2 = document
									.getElementsByClassName("rCnt2");
							const cNum = document
									.getElementsByClassName("cNum");
							const bNum = document
									.getElementsByClassName("bNum");
							const bCnt = document
									.getElementsByClassName("bCnt");
							const bCnt2 = document
									.getElementsByClassName("bCnt2");
							const rBlind = document
									.getElementsByClassName("rBlind");
							const bBlind = document
									.getElementsByClassName("bBlind");
							var id_check = $(this).attr("id"); // check한 값의 id가져오기
							// 댓글
							$('input[name=cNum]:checked').each(function() {
								let ckvalue = $(this).val();
								commentArr.push(ckvalue);
								commentFlag = true; // 값이 하나라도 들어왔따면 트루
							})

							if (commentFlag) {
								$
										.ajax({
											type : "POST",
											async : false, // ajax 실행 끝날때까지 아래코드 진행하지마
											url : (id_check == 'choiceInit') ? 'commentInit.do'
													: 'commentBlind.do',
											data : {
												'adminCtrlrNum' : commentArr
														.join()
											//obj라는 파라미터로 서버에 전송한다.
											},
											success : function(result) {
												if (result == 1) { // 초기화
													for (let j = 0; j < commentArr.length; j++) { // 댓글목록에서 클릭한 체크박스
														for (let i = 0; i < cNum.length; i++) { // 댓글목록 전체
															if (cNum[i].value == commentArr[j]) { // 두개가 같다면
																rCnt2[i].innerText = 0;
																rCnt[i].style.width = 0;
															}
														}
													}
													initFlag = true;
												} else { // 블라인드
													for (let j = 0; j < commentArr.length; j++) { // 댓글목록에서 클릭한 체크박스
														for (let i = 0; i < cNum.length; i++) { // 댓글목록 전체
															if (cNum[i].value == commentArr[j]) { // 두개가 같다면
																rBlind[i].innerText = 'O';
															}
														}
													}
													blindFlag = true;
												}
											},
											error : function(xhr) {
												console.log(xhr.responseText);
											}
										});
							}

							// 게시글
							$('input[name=bNum]:checked').each(function() {
								var ckvalue = $(this).val();
								boardArr.push(ckvalue);
								boardFlag = true;
							})

							if (boardFlag) {
								$
										.ajax({
											type : "POST",
											async : false, // ajax 실행 끝날때까지 아래코드 진행하지마
											url : (id_check == 'choiceInit') ? 'boardInit.do'
													: 'boardBlind.do',
											data : {
												'adminCtrlbNum' : boardArr
														.join()
											//obj라는 파라미터로 서버에 전송한다.
											},
											success : function(result) {
												if (result == 1) { // 초기화
													for (let j = 0; j < boardArr.length; j++) {
														for (let i = 0; i < bNum.length; i++) {
															if (bNum[i].value == boardArr[j]) {
																bCnt2[i].innerText = 0;
																bCnt[i].style.width = 0;
															}
														}
													}
													console.log('result==1')
													initFlag = true;
												} else { // 블라인드
													for (let j = 0; j < boardArr.length; j++) {
														for (let i = 0; i < bNum.length; i++) {
															if (bNum[i].value == boardArr[j]) {
																bBlind[i].innerText = 'O';
															}
														}
													}
													blindFlag = true;
												}
											},
											error : function(xhr) {
												console.log(xhr.responseText);
											}
										});
							}
							if (initFlag) {
								alert("신고 초기화 완료.");
								initFlag = false;
							} else if (blindFlag) {
								alert("글 블라인드 완료.");
								blindFlag = false;
							}
						})

		$('.recent').on('click', function() {
			let recentFlag = true;
			let coComentFlag = true;
			const bId = document.getElementsByClassName("bId");
			const cId = document.getElementsByClassName("cId");
			const recent = $(this).val();
			console.log(recent)

			if (bId.length === 0 && cId.length === 0) {
				alert('게시글이 없습니다.');
				return;
			}

			if (recent === '최신순') {
				if (bId.length !== 0) {
					for (let i = 0; i < bId.length - 1; i++) {				
						if (bId[i].value !== bId[i + 1].value) {		
							coComentFlag = false;										
						}
					}
				}
				if (cId.length !== 0) {
					for (let i = 0; i < cId.length - 1; i++) {
						if (cId[i].value !== cId[i + 1].value) {
							recentFlag = false;
						}
					}
				}
				if (recentFlag && coComentFlag) {
					location.href = "boardCtrl.do?bId=" + bId[0].value;
					return;
				}
				location.href = "boardCtrl.do";
			} else {
				if (bId.length !== 0) {
					for (let i = 0; i < bId.length - 1; i++) {
						if (bId[i].value !== bId[i + 1].value) {
							coComentFlag = false;
						}
					}
				}
				if (cId.length !== 0) {
					for (let i = 0; i < cId.length - 1; i++) {
						if (cId[i].value !== cId[i + 1].value) {
							recentFlag = false;
						}
					}
				}
				if (recentFlag && coComentFlag) {
					location.href = "report.do?bId=" + bId[0].value;
					return;
				}
				location.href = "report.do";
			}
		})
	</script>



</body>
</html>