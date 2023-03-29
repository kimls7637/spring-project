<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Start your development with JoeBLog landing page.">
<meta name="author" content="Devcrud">
<title>JoeBLog | Free Bootstrap 4.3.x template</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet" href="assets/css/joeblog.css">
<style type="text/css">
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
/* 1번째 부터 4번째 까지 box 배경색 변경 */
.box:nth-child(-n+4) {
	border-bottom: 1px solid #dee2e6;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">


	<!-- Page Footer -->
	<footer class="page-footer">
		<div class="container">
			<hr>
			<div class="row align-items-center justify-content-between">
				<div class="col-md-3 text-center text-md-left mb-3 mb-md-0"></div>
				<div class="col-md-9 text-center text-md-right">
					<div class=" mb-0 small" data-v-59015b26="" data-v-555a2171="">

						<!-- 우리 로고 -->
						<a class="navbar-brand" href="main.do"> <img
							src="assets/imgs/ace.png" alt="로고" />
						</a>
						<div class="footer-info-copyright" data-v-59015b26=""
							data-v-555a2171="">
							<div class="c-application c-typography c-caption1"
								style="color: #ADB3B8;" data-v-45a3e27e="" data-v-555a2171=""
								data-v-59015b26="">
								<!-- 대표 : 김이슬 ㅣ 06236 서울시 강남구 역삼동 테헤란로 146(역삼동) 13층 J강의장 ㅣ Tel :
                        1108-0331 ㅣ 사업자 등록번호 : 123-45-67890 -->
								<spring:message code="message.footer.first" />
								<br data-v-45a3e27e="" data-v-555a2171="">
								<!-- 통신판매업 신고번호 : 제 2021-서울중구-2580호 ㅣ
                        정보제공 사업신고 : 서울청 제2018-19호 -->
								<spring:message code="message.footer.second" />
								<br data-v-45a3e27e="" data-v-555a2171="">
								<!-- 소개사업 등록번호 : 제
                         2022-3010165-14-5-00021호 -->
								<div data-v-45a3e27e="" data-v-555a2171="" class="">
									Copyright by (주)SixthSense. All right reserved.</div>
							</div>

						</div>
					</div>
					<div class="socials"></div>
				</div>
			</div>
			<p class="border-top mb-0 mt-4 pt-3 small">
				&copy;
				<script>
               document.write(new Date().getFullYear())
            </script>
				, Acense Community Created By SixthSense
			</p>
		</div>
	</footer>
	<!-- End of Page Footer -->



</body>
</html>