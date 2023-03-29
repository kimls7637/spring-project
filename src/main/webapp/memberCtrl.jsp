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
<title>ACENSE : 관리자 회원 관리</title>
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
<!-- 페이징 -->
<!-- <link rel="stylesheet" href="assets/css/paginate.css">
<link rel="stylesheet" href="assets/css/ligne.css">
<script type="text/javascript" src="assets/js/paginate.js"></script> -->
<style>
.text-color {
	color: white !important;
}

a: hover {
	color: white;
}

.recent {
	background-color: rgb(0, 0, 0, 0);
	color: white;
	border: none;
}
.memberBoardList{
cursor:pointer;
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
					href="boardCtrl.do"> <span class="menu-icon"> <i
							class="mdi mdi-speedometer"></i>
					</span> <span class="menu-title">게시글관리</span>
				</a></li>
				<li class="nav-item menu-items"><a class="nav-link"
					href="memberCtrl.do" style="background-color:#0f1015;"> <span class="menu-icon"> <i
							class="mdi mdi-table-large"></i>
					</span> <span class="menu-title" style="color: white !important;">회원관리</span>
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
						<h3 class="page-title"></h3>
					</div>
<!-- 검색 -->
						<!-- <div class="panel" style="border:none;">
							<div class="body" style="    background-color: black;">
								<div class="input-group" style="display: contents;">
									<label for="searchBox" style="color:white;">검색</label> <input type="search"
										id="searchBox" placeholder="검색어를 입력하세요"
										style="margin-left: 30px; width: 30%;">
								</div>
							</div>
						</div> -->
					<div class="row">

						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">회원관리</h4>
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													<th class="text-color">아이디</th>
													<th class="text-color">이름/닉네임</th>
													<th class="text-color">등급</th>
													<th class="text-color">신고수</th>
													<th></th>
													<th class="text-color" style="width: 10%;">가입날짜</th>
													<th class="text-color"
														style="padding-left: 3%; width: 14%;">회원정지</th>
													<th class="text-color" style="width: 14%;">정지일수/횟수</th>
												</tr>
											</thead>
											<tbody class="myTable table hover">

												<c:forEach var="v" items="${memberCtrl}">
													<tr>
														<td class="py-1 text-color bid">${v.id }</td>
														<td class="text-color"><div class="memberBoardList">${v.mName }/ ${v.mNickname }</div></td>
														<td class="text-color"><img
															src="./assets/imgs/${v.grade}"
															style="display: inline; width: 28px; padding-bottom: 3px;" />
														</td>
														<td>
															<div class="progress">
																<!-- 그래프 관리 -->
																<div class="progress-bar bg-success" role="progressbar"
																	style="width: ${v.reportCnt}%" aria-valuenow="25"
																	aria-valuemin="0" aria-valuemax="50"></div>
															</div>
														</td>
														<td class="text-color">${v.reportCnt}</td>
														<td class="text-color">${v.mJoinDate}</td>
														<!-- 이름 vo에 맞는 값으로 설정. -->
														<td style="padding-left: 18px;"><select
															name="mStopDate"><option value="3">3일</option>
																<option value="7">7일</option>
																<option value="15">15일</option>
																<option value="30">30일</option></select> <button class="btn"
																	style="border-radius: 9px; background-color: white; color: black; height: 25px;">정지</button>
														</td>
														<td class="text-color" style="padding-left: 25px;">${v.benDate}
															/ ${v.benCnt}</td>

													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
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
	<script src="admin. assets/js/dashboard.js"></script>
	<!-- End custom js for this page -->
	<script>
   
    let option = '3';
    let bid = null;
      let btn = document.getElementsByClassName('btn');
    
    $("select[name=mStopDate]").change(function(){
       option = $(this).val();
       
     });
         for(let i=0; i<btn.length;i++){
            btn[i].addEventListener('click', function(event){
                 if(confirm(option+'일 정지하겠습니까?')){
                  bid=  document.getElementsByClassName('bid')[i].innerText;
                  console.log(bid);
                  console.log(option);
                  location.href='locked.do?id='+bid+'&benDate='+option;
                 }
                 return;
              });
            
           }
         const memberBoardList = document.getElementsByClassName('memberBoardList');
         for(let i=0; i<memberBoardList.length; i++){
        	 memberBoardList[i].addEventListener('click',function(){
        		console.log( $('.bid')[i].innerText);
        		const bid = $('.bid')[i].innerText;
        		  document.write('<form action="memberContents.do" id="smb_form" method="post"><input type="hidden" id="bid" name="id" value="'+bid +'"></form>');
        	         document.getElementById("smb_form").submit(); 
        	 })
        	 
        	 
         }
       
    
    
    </script>
    
<!-- 	<script>

    let options = {
        numberPerPage:1000, //Cantidad de datos por pagina
        goBar:true, //Barra donde puedes digitar el numero de la pagina al que quiere ir
        pageCounter:true, //Contador de paginas, en cual estas, de cuantas paginas
    };

    let filterOptions = {
        el:'#searchBox' //Caja de texto para filtrar, puede ser una clase o un ID
    };

    paginate.init('.myTable',options,filterOptions);
</script> -->
</body>
</html>