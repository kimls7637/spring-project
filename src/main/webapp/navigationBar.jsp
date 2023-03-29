<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<div class="sidebar">
	<div class="page-sidebar text-center">
	
		<div class="profile">
	
			<div class="pn">로그인</div>
			<form action="" method="POST">
				<div class="input-box">
					<input id="username" type="text" name="mid" placeholder="아이디">
				</div>
				<div class="input-box">
					<input id="password" type="password" name="mpw" placeholder="비밀번호">
				</div>
				<div id="forgot">
					<a href="forgot.jsp" style="color: black;"> 아이디 </a>/<a
						href="forgot2.jsp" style="color: black;"> 비밀번호 </a> 찾기
				</div>
				<div class="login">
					<input type="submit" value="로그인하기">
				</div>
			</form>
		
			<!-- 로그인 후 프로필  -->
			<div class="pn">프로필</div>
			<!-- /////  프로필 아이콘 -->

			<div data-v-a1e696e6="" class="mr-10">
				<div data-v-16c10fa5="" data-v-a1e696e6=""
					class="c-application c-avatar--container large">
					<i data-v-16c10fa5="" class="c-avatar profile large"></i>
					<div data-v-16c10fa5="" class="c-avatar--item">
						<svg data-v-bd9f2bcc="" data-v-16c10fa5="" width="36" height="36"
							viewBox="0 0 36 36" fill="black"
							xmlns="http://www.w3.org/2000/svg" padding-top=""
							class="c-application c-icon" style="fill: rgb(207, 212, 215);">
										<circle data-v-bd9f2bcc="" cx="18" cy="11" r="6"></circle>
										<path data-v-bd9f2bcc=""
								d="M8.89065 23.704C10.986 20.7531 14.3809 19 18 19C21.6191 19 25.014 20.7531 27.1094 23.704L27.3942 24.1052C29.7451 27.416 27.3779 32 23.3174 32H12.6826C8.6221 32 6.25494 27.416 8.60575 24.1052L8.89065 23.704Z"></path></svg>
						<!---->
						<!---->
					</div>
				</div>
			</div>
			<!-- 프로필 아이콘 ///// -->
			<div class="nick">
				<div class="input-box">닉네임</div>
				<div class="input-box">등급</div>
			</div>
			<%-- <c:if > --%>
			<div id="forgot">
				<a href="forgot.jsp" style="color: black;"> 마이페이지 </a>
			</div>
			<%-- </c:if> --%>
			<div id="forgot">
				<a href="forgot.jsp" style="color: black;"> 관리자페이지 </a>
			</div>
			<div class="logout">
				<a href=" "><button>로그아웃하기</button></a>
			</div>
			<!--  -->
		</div>

		<div class="profile">
			<div class="like">좋아요순 회원 랭킹</div>
			<hr>
			<div class="sidelike">
				<br> 나는한빛 / 🖤 30개 <br> 나는이슬 / 🖤 24개 <br> 나는지민 / 🖤
				20개 <br> <br>
			</div>
		</div>
		<div class="chat">
			<form action="">
				<div class="subscribe-wrapper">
					<input type="email" class="form-control" placeholder="채팅">
					<button type="submit" class="btn btn-primary">
						<i class="ti-location-arrow"></i>
					</button>
				</div>
			</form>
		</div>
	</div>

</div>

</div>