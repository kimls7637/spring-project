<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
   content="Start your development with JoeBLog landing page.">
<meta name="author" content="Devcrud">
<title>ACENSE : 정보변경</title>
<link rel="icon" href="./assets/imgs/favicon.png" />
<!-- font icons -->
<link rel="stylesheet"
   href="assets/vendors/themify-icons/css/themify-icons.css">
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet" href="assets/css/joeblog.css">

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">




   <%@ include file="./header.jsp"%>

   <aside class="lg:col-span-3 lg:pr-16"
      style="width: 20%; margin-left: 17%; margin-top: 5%; display: flex; float: left; justify-content: center;">
      <div>
         <h2 class="text-xl font-semibold leading-6">내 계정</h2>
      </div>
      <nav class="my-4 space-y-2 lg:my-10">
         <a
            class="bg-gray-200 text-gray-800 dark:bg-gray-700 dark:text-gray-200 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            aria-current="page" href="myPage.do"><svg
               xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
               stroke-width="1.5" stroke="currentColor" aria-hidden="true"
               class="text-gray-600 dark:text-gray-400 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z"></path></svg><span
            class="truncate">정보변경</span></a><a
            class="text-gray-500 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            href="myBoard.do?id=${member.id}"><svg
               xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
               stroke-width="1.5" stroke="currentColor" aria-hidden="true"
               class=" text-gray-400 dark:text-gray-600 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M4.5 12a7.5 7.5 0 0015 0m-15 0a7.5 7.5 0 1115 0m-15 0H3m16.5 0H21m-1.5 0H12m-8.457 3.077l1.41-.513m14.095-5.13l1.41-.513M5.106 17.785l1.15-.964m11.49-9.642l1.149-.964M7.501 19.795l.75-1.3m7.5-12.99l.75-1.3m-6.063 16.658l.26-1.477m2.605-14.772l.26-1.477m0 17.726l-.26-1.477M10.698 4.614l-.26-1.477M16.5 19.794l-.75-1.299M7.5 4.205L12 12m6.894 5.785l-1.149-.964M6.256 7.178l-1.15-.964m15.352 8.864l-1.41-.513M4.954 9.435l-1.41-.514M12.002 12l-3.75 6.495"></path></svg><span
            class="truncate">나의게시글</span></a><a
            class="text-gray-500 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            href="myComment.do?id=${member.id}"><svg
               xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
               stroke-width="1.5" stroke="currentColor" aria-hidden="true"
               class=" text-gray-400 dark:text-gray-600 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M4.5 12a7.5 7.5 0 0015 0m-15 0a7.5 7.5 0 1115 0m-15 0H3m16.5 0H21m-1.5 0H12m-8.457 3.077l1.41-.513m14.095-5.13l1.41-.513M5.106 17.785l1.15-.964m11.49-9.642l1.149-.964M7.501 19.795l.75-1.3m7.5-12.99l.75-1.3m-6.063 16.658l.26-1.477m2.605-14.772l.26-1.477m0 17.726l-.26-1.477M10.698 4.614l-.26-1.477M16.5 19.794l-.75-1.299M7.5 4.205L12 12m6.894 5.785l-1.149-.964M6.256 7.178l-1.15-.964m15.352 8.864l-1.41-.513M4.954 9.435l-1.41-.514M12.002 12l-3.75 6.495"></path></svg><span
            class="truncate">나의댓글</span></a> <a
            class="text-gray-500 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            href="deleteMember.do?id=${member.id}"><svg xmlns="http://www.w3.org/2000/svg"
               fill="none" viewBox="0 0 24 24" stroke-width="1.5"
               stroke="currentColor" aria-hidden="true"
               class=" text-gray-400 dark:text-gray-600 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M4.5 12a7.5 7.5 0 0015 0m-15 0a7.5 7.5 0 1115 0m-15 0H3m16.5 0H21m-1.5 0H12m-8.457 3.077l1.41-.513m14.095-5.13l1.41-.513M5.106 17.785l1.15-.964m11.49-9.642l1.149-.964M7.501 19.795l.75-1.3m7.5-12.99l.75-1.3m-6.063 16.658l.26-1.477m2.605-14.772l.26-1.477m0 17.726l-.26-1.477M10.698 4.614l-.26-1.477M16.5 19.794l-.75-1.299M7.5 4.205L12 12m6.894 5.785l-1.149-.964M6.256 7.178l-1.15-.964m15.352 8.864l-1.41-.513M4.954 9.435l-1.41-.514M12.002 12l-3.75 6.495"></path></svg><span
            class="truncate">탈퇴</span></a>
      </nav>
   </aside>
   <div>
      <form action="changeMyInfo.do" onsubmit="checkJoin(event);" method="post"
         class="divide-y divide-gray-500/30 dark:divide-gray-500/70 lg:col-span-9">
         <input type="hidden" value="${member.id}" name="id">
         <div class="my-10 lg:my-0 lg:pl-20" style="border: none;">
            <h2 class="text-xl font-semibold leading-6">정보변경</h2>
            <div class="my-10 flex flex-col lg:flex-row"
               style="border-left: 1px solid black; padding-left: 2%;">
               <div class="flex-grow space-y-6" style="width: 65%;">

                  <div>
                     <label for="nickname"
                        class="block text-sm font-medium text-gray-700 dark:text-gray-300">닉네임</label>
                     <div class="mt-1 ">
                        <input type="text" id="nickname" autocomplete="nickname"
                           placeholder="알파벳, 한글, 숫자 3자 이내"
                           class="block w-full appearance-none rounded-md border border-gray-500/30 px-3 py-2 text-sm placeholder-gray-500/80 shadow-sm focus:border-gray-500 focus:outline-none focus:ring-0 dark:bg-gray-500/20 sm:text-base"
                           name="mNickname" style="width: 80%; display: inline-block;"
                           maxlength="3" value="${member.mNickname }">

                        <div
                           style="width: auto; display: inline-block; padding-top: 7px; padding-bottom: 7px; border-radius: 7px; margin-left: 9px;">
                           <button type="button" class="phonebutton" id="nickCheck"
                              style="font-weight: bold; font-size: 14px; outline: none;">중복체크</button>
                        </div>
                     </div>
                  </div>
                  
                  <div>
                     <label for="username"
                        class="block text-sm font-medium text-gray-700 dark:text-gray-300">비밀번호</label>
                     <div class="mt-1 flex">
                        <input type="password" id="password1"
                           placeholder="특수문자, 한글 제외한 8~16자"
                           class="block w-full appearance-none rounded-md border border-gray-500/30 px-3 py-2 text-sm placeholder-gray-500/80 shadow-sm focus:border-gray-500 focus:outline-none focus:ring-0 dark:bg-gray-500/20 sm:text-base"
                           maxlength="16" name="pw"
                           style="width: 80%; display: inline-block;" value="${member.pw}">
                     </div>
                  </div>
                  <div>
                     <label for="username"
                        class="block text-sm font-medium text-gray-700 dark:text-gray-300">새
                        비밀번호 확인</label>
                     <div class="mt-1 flex">
                        <input type="password" id="password2" placeholder="비밀번호 확인"
                           class="block w-full appearance-none rounded-md border border-gray-500/30 px-3 py-2 text-sm placeholder-gray-500/80 shadow-sm focus:border-gray-500 focus:outline-none focus:ring-0 dark:bg-gray-500/20 sm:text-base"
                           maxlength="16" 
                           style="width: 80%; display: inline-block;" value="${member.pw}">
                     </div>
                  </div>


               </div>
            </div>
            <div class="my-10 flex justify-end py-5 lg:my-10 lg:pl-20"
               style="width: 80%; " >
               <button type="submit"
                  class="inline-flex items-center space-x-2 rounded-md bg-blue-500 px-8 py-2 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-blue-600 disabled:bg-blue-500 disabled:opacity-40"
                  style="background-color: #a0ba83;">변경</button>
            </div>
         </div>
      </form>
   </div>
   <%@ include file="./footer.jsp"%>

   <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
   <script>
      /* 닉네임 admin/ADMIN 못하게막기 */
      const ad = document.getElementById('nickname');
      const firstNickName=$('#nickname').val();   
      // 닉네임 중복체크
      let nickFlag = true;

      ad.addEventListener('input', function() {
         ad.value = ad.value.replace('admin', '');
         ad.value = ad.value.replace('ADMIN', '');
         nickFlag = false;
      })
      $('#nickCheck').click(function() {
         var nickname = $('#nickname').val();
         
         const checkNick = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g;
         const gongbak = /\s/g;
         
           if (checkNick.test(nickname))
                return alert('닉네임은 알파벳, 한글, 숫자만 가능하며 3자리 이내로 가능합니다.')
           if (gongbak.test(nickname))
               return alert('공백이 포함되어 있습니다.')
         if(nickname.length ==0){
            return   alert('닉네임을 입력해주세요.');
         }
           if(nickname.length >3){
        	   return alert('3글자만 입력해주세요.');
           }
       if(firstNickName === nickname) {
          nickFlag = true;
          alert('사용가능한 닉네임입니다.');
          return;
       }
         $.ajax({
            url : 'nickCheck.do',
            type : 'post',
            data : {
               mNickname : nickname
            },
            dataType : 'json',
            success : function(result) {
               if (result == 1) {
                  alert("사용가능한 닉네임입니다.");
                  nickFlag = true;
               }else if(result ==0 ){
                   alert("비속어가 포함되어있습니다.");
                   nickFlag = false;
               }       
               else {
                  alert("사용불가능한 닉네임입니다.");
                  nickFlag = false;
               }
            },
            error : function() {
               alert("서버요청실패");
            }
         })
       
      })
     

      // 제출할때 전체 체크 + 비밀번호 변경 체크
      function checkJoin(event) {
         var p1 = document.getElementById('password1').value;
         var p2 = document.getElementById('password2').value;

       const submitNickName = $('#nickname').val();
        if(firstNickName === submitNickName) {
              nickFlag = true;
        }
         if (nickFlag) {
            if (p1.length != 0) {
               if (p1 == p2) {
                  if (p1.length > 7) {
                     alert("정보변경 성공");
                  } else {
                     alert("비밀번호는 최소 8자 이상 입력해주세요.");
                     event.preventDefault();
                  }

               } else {
                  alert("비밀번호 다시 확인 해주세요");
                  event.preventDefault();
               }
            }else{
               alert("비밀번호를 입력해주세요");
                event.preventDefault();
            }
         } else {
            alert("닉네임 중복확인 해주세요");
            event.preventDefault();
         }
      }

      /* 비번 정규식 스크립트 */
      const pw1 = document.getElementById('password1');
      const pw2 = document.getElementById('password2');
      pw1
            .addEventListener(
                  'input',
                  function() {
                     let regExp = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/ ㄱ-ㅎㅏ-ㅣ가-힣]/gim;
                     pw1.value = pw1.value.replace(regExp, '');
                  })
      pw2
            .addEventListener(
                  'input',
                  function() {
                     let regExp = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/ ㄱ-ㅎㅏ-ㅣ가-힣]/gim;
                     pw2.value = pw2.value.replace(regExp, '');
                  })
   </script>



</body>
</html>