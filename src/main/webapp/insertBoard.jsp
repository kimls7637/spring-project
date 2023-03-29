<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>ACENSE : 게시글 작성</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">
<link rel="icon" href="./assets/imgs/favicon.png" />
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet" href="assets/css/joeblog.css">
<link rel="stylesheet" href="assets/css/search.css">


<script type="text/javascript"
      src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<script type="text/javascript"
   src="https://ckeditor.com/docs/vendors/4.20.2/ckeditor/plugins/autogrow/plugin.js?t=N227"></script>


<style type="text/css">
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

.margin-bottom {
	margin-bottom: 0px;
}
</style>

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

	<%@ include file="./header.jsp"%>


	<div class="container">
		<div class="page-container">
			<div class="page-content">


				<div class="row" style="display: flow-root;">
					<div class="card mb-5">
						<div class="card-header p-0" style="margin-bottom: 20px;">
							<div class="blog-media">
								<div class="text-left">
									<h2>함께 할 때 더 즐거운 순간</h2>
									<p style="">Acense</p>
								</div>
								<div class="  loginHere"></div>

							</div>
						</div>
						<hr>

						<!--  -->
						<div>

							<c:if test="${commuDetail==null}">
								<form method="post" action="insertBoard.do" id="tag-form"
									onsubmit="checkCate(event)">

									<input type="hidden" value="${member.id}" name="bId" />
									<p class="margin-bottom" style="float: left;">카테고리</p>

									<select
										style="width: 100%; border-radius: 10px; border-color: #9e9e9e; margin-bottom: 30px;"
										name="bCate">

					
										<c:if test="${bCate=='커뮤니티' }">
											<option value="커뮤니티" selected>커뮤니티</option>
											<option value="꿀팁공유">꿀팁공유</option>
											<c:if test="${member.mNickname == '관리자'}">
											<option value="공지사항">공지사항</option>
										</c:if> 
										</c:if>
										<c:if test="${bCate=='꿀팁공유' }">
											<option value="꿀팁공유" selected>꿀팁공유</option>
											<option value="커뮤니티">커뮤니티</option>
											<c:if test="${member.mNickname == '관리자'}">
											<option value="공지사항">공지사항</option>
										</c:if> 
										</c:if>
										<c:if test="${bCate=='공지사항' }">
											<option value="공지사항" selected>공지사항</option>
											<option value="꿀팁공유">꿀팁공유</option>
											<option value="커뮤니티">커뮤니티</option>
										</c:if>
										 

									</select>

									<div style="width: 4%;">
										<p class="margin-bottom">제목</p>
									</div>
									<input id="title"
										style="width: 100%; border-radius: 10px; border-color: #9e9e9e; margin-bottom: 30px;"
										type="text" name="bTitle" placeholder="제목을 입력해주세요."
										maxlength="40" value="${commuDetail.bTitle}" />
									<div class="tr_hashTag_area">
										<p class="margin-bottom" style="float: left;">
											<strong>태그</strong>
										</p>

										<div class="form-group">
											<input
												style="width: 100%; border-radius: 10px; border-color: #9e9e9e;"
												type="text" name="tContent" id="tag" size="7"
												placeholder="엔터로 해시태그를 등록해주세요." style="width: 300px;" />
										</div>

										<ul id="tag-list" style="list-style: none;"></ul>
									</div>
									<div style="display: grid;">
										<textarea id="editor" name="bContent" placeholder="내용"
											rows="6" required="required">${commuDetail.bContent}</textarea>
									</div>

									<div class="my-10 flex justify-end py-5 lg:my-10 lg:pl-20"
										style="width: 57%;">
										<button style="background-color: #a0ba83;" type="submit"
											class="inline-flex items-center space-x-2 rounded-md bg-blue-500 px-8 py-2 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-600 disabled:bg-blue-500 disabled:opacity-40">등록</button>
									</div>
								</form>
							</c:if>

							<c:if test="${commuDetail!=null}">
								<form method="post" action="updateBoard.do" id="tag-form"
									onsubmit="checkCate(event)">
									<input type="hidden" value="${member.id }" name="bId" /> <input
										type="hidden" value="${commuDetail.bNum}" name="bNum" />
									<p class="margin-bottom" style="float: left;">카테고리</p>

									<select
										style="width: 100%; border-radius: 10px; border-color: #9e9e9e; margin-bottom: 30px;"
										name="bCate">

										<c:if test="${commuDetail.bCate=='커뮤니티' }">
											<option value="커뮤니티" selected>커뮤니티</option>
											<option value="꿀팁공유">꿀팁공유</option>
										</c:if>
										<c:if test="${commuDetail.bCate=='꿀팁공유' }">
											<option value="꿀팁공유" selected>꿀팁공유</option>
											<option value="커뮤니티">커뮤니티</option>
										</c:if>

										<c:if test="${member.mNickname == '관리자'}">
											<option value="공지사항">공지사항</option>
										</c:if>

									</select>
									<div style="width: 4%;">
										<p class="margin-bottom">제목</p>
									</div>
									<input id="title"
										style="width: 100%; border-radius: 10px; border-color: #9e9e9e; margin-bottom: 30px;"
										type="text" name="bTitle" placeholder="제목을 입력해주세요."
										maxlength="40" value="${commuDetail.bTitle}" />
									<div class="tr_hashTag_area">
										<p class="margin-bottom" style="float: left;">
											<strong>태그</strong>
										</p>

										<div class="form-group">
											<input
												style="width: 100%; border-radius: 10px; border-color: #9e9e9e;"
												type="text" name="tContent" id="tag" size="7"
												placeholder="엔터로 해시태그를 등록해주세요." style="width: 300px;" />
										</div>

										<c:forEach var="v" items="${tagList}">
											<div class="oldTag" style="display: none;">${v.tContent}</div>
										</c:forEach>

										<ul id="tag-list" style="list-style: none;"></ul>

										<script>
											function deleteItem(button) {
												var listItem = button.parentNode;
												var list = listItem.parentNode;
												list.removeChild(listItem);
											}
										</script>

									</div>
									<div style="display: grid;">
										<textarea id="editor" name="bContent" placeholder="내용"
											rows="6">${commuDetail.bContent}</textarea>
									</div>

									<div class="my-10 flex justify-end py-5 lg:my-10 lg:pl-20"
										style="width: 57%;">
										<button style="background-color: #a0ba83;" type="submit"
											class="inline-flex items-center space-x-2 rounded-md bg-blue-500 px-8 py-2 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-600 disabled:bg-blue-500 disabled:opacity-40">수정</button>
									</div>


								</form>
							</c:if>

						</div>
						<!--  -->
					</div>
				</div>
			</div>
			<!--  Sidebar 커스텀태그 활용 -->
			<kwon:sideInfo />
		</div>
	</div>


	<%@ include file="./footer.jsp"%>
	<script>
		function checkCate(event) {
			var blank_pattern = /^\s+|\s+$/g;
			var messageLength = CKEDITOR.instances['editor'].getData().replace(
					/<[^>]*>/gi, '');
			let tag = document.getElementsByClassName('tag-item');
			let title = $('#title').val();
			let tagArr = [];
			let flag=true;
			for (let i = 0; i < tag.length; i++) {
				tagArr.push(tag[i].innerText);
			}
			console.log(messageLength);
			
			if(title.replace(blank_pattern, '' ) == "" ){
				alert('제목을 입력해주세요.');
				event.preventDefault();
			}
			 else if (messageLength.length === 0) {
				alert('내용을 입력해주세요.');
				event.preventDefault();
			} else {
				$.ajax({
					type : 'POST', //데이터를 로드하는 방식
					url : 'checkVoca.do', // 어디로 보낼건지
					async: false,
					data : {
						'bTitle' : title,
						'tContent' : tagArr.join(),
						'bContent' : messageLength
					},
					success : function(result) { // 로드 성공시 수행할 메서드
						if (result == "0") {
							alert('비속어가 포함되어 있습니다.');
							flag=false;
						}
					},
					error : function(request, status, error) {
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				})
				if(!flag){
					event.preventDefault();
				}

			}
			

		}

		var tag = {};
		var counter = 0;

		//추가///////
		var str = JSON.stringify(Object);

		function addTag(value) {
			tag[counter] = value;
			counter++; // del-btn 의 고유 id 가 된다.
		}

		// tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
		function marginTag() {
			return Object.values(tag).filter(function(word) {
				return word !== "";
			});
		}

		// 서버에 제공
		$("#tag-form").on("submit", function(e) {
			var value = marginTag(); // return array
			$("#tag").val(value);
			$(this).submit();
		});

		$("#tag")
				.on(
						"keypress",
						function(e) {
							var self = $(this);

							//엔터나 스페이스바 눌렀을때 실행
							if (e.key === "Enter" || e.keyCode == 32) {

								var tagValue = self.val(); // 값 가져오기

								// 해시태그 값 없으면 실행X
								if (tagValue !== "") {

									// 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
									var result = Object.values(tag).filter(
											function(word) {
												return word === tagValue;
											})

									// 해시태그가 중복되었는지 확인
									if (result.length == 0) {
										let arr = [ "#fff5ee", "#fffafa",
												"#f8f8ff", "#fffaf0",
												"#f5f5f5", "#f0f8ff",
												"#f0ffff", "#fdf5e6",
												"#f5fffa", "#ffefd5",
												"#ffdab9", "#faf0e6",
												"#eee8aa", "#ffe4e1", "#ffe4b5" ];
										let color = arr[Math.floor(Math
												.random()
												* arr.length)];
										$("#tag-list")
												.append(
														"<li class='tag-item' style=' margin-right:10px;   padding: 3px;  display: inline;  border-radius: 5px; background-color:"+color+";' >#"
																+ tagValue
																+ "<span style='cursor:pointer; ' class='del-btn' idx='"+counter+"'> x</span></li>");
										addTag(tagValue);
										console.log(tagValue);
										self.val("");

									} else {
										alert("태그값이 중복됩니다.");
									}
								}
								e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
							}
						});

		// 삭제 버튼 
		// 인덱스 검사 후 삭제
		$(document).on("click", ".del-btn", function(e) {
			var index = $(this).attr("idx");
			tag[index] = "";
			$(this).parent().remove();
		});

		const oldTag = document.getElementsByClassName("oldTag");
		if (oldTag[0].innerText != '') {
			for (let i = 0; i < '${tagList.size()}'; i++) {
				let arr = [ "#fff5ee", "#fffafa", "#f8f8ff", "#fffaf0",
						"#f5f5f5", "#f0f8ff", "#f0ffff", "#fdf5e6", "#f5fffa",
						"#ffefd5", "#ffdab9", "#faf0e6", "#eee8aa", "#ffe4e1",
						"#ffe4b5" ];
				let color = arr[Math.floor(Math.random() * arr.length)];
				$("#tag-list")
						.append(
								"<li class='tag-item' style=' margin-right:10px;   padding: 3px;  display: inline;  border-radius: 5px; background-color:"+color+";' >#"
										+ oldTag[i].innerText
										+ "<span style='cursor:pointer; ' class='del-btn' idx='"+counter+"'> x</span></li>");
				addTag(oldTag[i].innerText);
			}
		}
	</script>


	<!-- 이슬 ckeditor -->
	<script>
		CKEDITOR
				.replace(
						"editor",
						{
							filebrowserUploadUrl : "fileupload.do",

							extraPlugins : 'autogrow',
							autoGrow_minHeight : 250,
							autoGrow_maxHeight : 1000,
							autoGrow_bottomSpace : 50,
							removePlugins : 'resize',
							removeButtons : 'PasteFromWord',

							toolbarGroups : [
									{
										name : 'document',
										groups : [ 'mode', 'document',
												'doctools' ]
									},
									{
										name : 'clipboard',
										groups : [ 'clipboard', 'undo' ]
									},
									{
										name : 'editing',
										groups : [ 'find', 'selection',
												'spellchecker', 'editing' ]
									},
									{
										name : 'forms',
										groups : [ 'forms' ]
									},
									{
										name : 'basicstyles',
										groups : [ 'basicstyles', 'cleanup' ]
									},
									{
										name : 'paragraph',
										groups : [ 'list', 'indent', 'blocks',
												'align', 'bidi', 'paragraph' ]
									}, {
										name : 'links',
										groups : [ 'links' ]
									}, {
										name : 'insert',
										groups : [ 'insert' ]
									}, {
										name : 'styles',
										groups : [ 'styles' ]
									}, {
										name : 'colors',
										groups : [ 'colors' ]
									}, {
										name : 'about',
										groups : [ 'about' ]
									}, '/', {
										name : 'tools',
										groups : [ 'tools' ]
									}, {
										name : 'others',
										groups : [ 'others' ]
									} ],

							removeButtons : 'Source,Save,Templates,NewPage,Preview,Print,PasteText,Paste,Copy,Cut,PasteFromWord,SelectAll,Scayt,Form,HiddenField,Textarea,Checkbox,Select,Button,Radio,TextField,ImageButton,CopyFormatting,CreateDiv,BidiLtr,BidiRtl,Language,Anchor,Flash,Iframe,PageBreak,ShowBlocks,Maximize'
						});
	</script>



</body>
</html>