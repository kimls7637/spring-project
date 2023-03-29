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
      style="width: 20%; margin-left: 17%; margin-top: 5%; display: flex; float: left; 
    justify-content: center;">
      <div>
         <h2 class="text-xl font-semibold leading-6">내 계정</h2>
      </div>
      <nav class="my-4 space-y-2 lg:my-10">
         <a
            class="text-gray-500 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            href="myPage.do"><svg xmlns="http://www.w3.org/2000/svg"
               fill="none" viewBox="0 0 24 24" stroke-width="1.5"
               stroke="currentColor" aria-hidden="true"
               class=" text-gray-400 dark:text-gray-600 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M4.5 12a7.5 7.5 0 0015 0m-15 0a7.5 7.5 0 1115 0m-15 0H3m16.5 0H21m-1.5 0H12m-8.457 3.077l1.41-.513m14.095-5.13l1.41-.513M5.106 17.785l1.15-.964m11.49-9.642l1.149-.964M7.501 19.795l.75-1.3m7.5-12.99l.75-1.3m-6.063 16.658l.26-1.477m2.605-14.772l.26-1.477m0 17.726l-.26-1.477M10.698 4.614l-.26-1.477M16.5 19.794l-.75-1.299M7.5 4.205L12 12m6.894 5.785l-1.149-.964M6.256 7.178l-1.15-.964m15.352 8.864l-1.41-.513M4.954 9.435l-1.41-.514M12.002 12l-3.75 6.495"></path></svg><span
            class="truncate">정보변경</span></a><a
            class="text-gray-500 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            href="myBoard.do"><svg xmlns="http://www.w3.org/2000/svg"
               fill="none" viewBox="0 0 24 24" stroke-width="1.5"
               stroke="currentColor" aria-hidden="true"
               class=" text-gray-400 dark:text-gray-600 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M4.5 12a7.5 7.5 0 0015 0m-15 0a7.5 7.5 0 1115 0m-15 0H3m16.5 0H21m-1.5 0H12m-8.457 3.077l1.41-.513m14.095-5.13l1.41-.513M5.106 17.785l1.15-.964m11.49-9.642l1.149-.964M7.501 19.795l.75-1.3m7.5-12.99l.75-1.3m-6.063 16.658l.26-1.477m2.605-14.772l.26-1.477m0 17.726l-.26-1.477M10.698 4.614l-.26-1.477M16.5 19.794l-.75-1.299M7.5 4.205L12 12m6.894 5.785l-1.149-.964M6.256 7.178l-1.15-.964m15.352 8.864l-1.41-.513M4.954 9.435l-1.41-.514M12.002 12l-3.75 6.495"></path></svg><span
            class="truncate">나의게시글</span></a> <a
            class="text-gray-500 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            href="myComment.do"><svg xmlns="http://www.w3.org/2000/svg"
               fill="none" viewBox="0 0 24 24" stroke-width="1.5"
               stroke="currentColor" aria-hidden="true"
               class=" text-gray-400 dark:text-gray-600 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M4.5 12a7.5 7.5 0 0015 0m-15 0a7.5 7.5 0 1115 0m-15 0H3m16.5 0H21m-1.5 0H12m-8.457 3.077l1.41-.513m14.095-5.13l1.41-.513M5.106 17.785l1.15-.964m11.49-9.642l1.149-.964M7.501 19.795l.75-1.3m7.5-12.99l.75-1.3m-6.063 16.658l.26-1.477m2.605-14.772l.26-1.477m0 17.726l-.26-1.477M10.698 4.614l-.26-1.477M16.5 19.794l-.75-1.299M7.5 4.205L12 12m6.894 5.785l-1.149-.964M6.256 7.178l-1.15-.964m15.352 8.864l-1.41-.513M4.954 9.435l-1.41-.514M12.002 12l-3.75 6.495"></path></svg><span
            class="truncate">나의댓글</span></a><a
            class="bg-gray-200 text-gray-800 dark:bg-gray-700 dark:text-gray-200 group flex items-center rounded-md px-3 py-2 font-medium hover:bg-gray-200 hover:text-gray-800 dark:hover:bg-gray-700 dark:hover:text-gray-300"
            aria-current="page" href="deleteMember.do"><svg
               xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
               stroke-width="1.5" stroke="currentColor" aria-hidden="true"
               class="text-gray-600 dark:text-gray-400 -ml-1 mr-3 h-6 w-6 shrink-0 group-hover:text-gray-800 dark:group-hover:text-gray-200">
               <path stroke-linecap="round" stroke-linejoin="round"
                  d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z"></path></svg><span
            class="truncate">탈퇴</span></a>
      </nav>
   </aside>
   <div>
      <div class="my-10 lg:my-0 lg:pl-20">
         <h2 class="text-xl font-semibold leading-6" >계정삭제</h2>
         <div class="my-10 flex flex-col lg:flex-row"
            style="border-left: 1px solid black; padding-left: 2%;">
            <div class="flex-grow space-y-6" style="width: 65%;">
               <div class="divide-y divide-gray-500/50">
                  <div class="my-10 lg:my-10 lg:pl-20">
                     <div>
                        <div
                           class="mt-3 space-y-2 rounded-md border border-gray-500/50 p-3">
                          
                           <p class="text-sm text-gray-500">작성된 게시물은 삭제되지 않으며, 블라인드 처리 후
                              ACENSE 로 소유권이 귀속됩니다.</p>
                        </div>
                     </div>
                     <ul class="mt-2 divide-y divide-gray-500/50">
                        <li
                           class="flex flex-col justify-between gap-y-2 py-4 sm:flex-row sm:items-center"><div
                              class="flex items-center">
                              <input id="withdraw-agreements" class="ckBox" name="ckBox" 
                                 type="checkbox" style="margin-bottom:7px; background-color: #a0ba83;"   onclick='is_checked()' 
                                 class="h-4 w-4 cursor-pointer rounded border border-gray-500/30 text-blue-500 focus:border-gray-500 focus:outline-none focus:ring-0 focus:ring-offset-0 dark:bg-gray-500/20"><label for="ckBox"
                                  class="ml-2 block text-sm">계정
                                 삭제에 관한 정책을 읽고 이에 동의합니다.</label>
                           </div>
                           <button style="background-color: #a0ba83; color: white;" id="unjoin"
                              class="group relative w-full justify-center rounded-md border border-transparent bg-red-600 px-14 py-2 text-sm font-medium text-red-100 shadow-sm hover:bg-red-700 focus:outline-none disabled:bg-red-600 disabled:opacity-40 sm:w-48">
                              <span class="absolute inset-y-0 left-0 flex items-center pl-3"><svg
                                    xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                                    aria-hidden="true" class="h-5 w-5">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                       d="M22 10.5h-6m-2.25-4.125a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zM4 19.235v-.11a6.375 6.375 0 0112.75 0v.109A12.318 12.318 0 0110.374 21c-2.331 0-4.512-.645-6.374-1.766z"></path></svg></span>회원탈퇴
                           </button></li>
                     </ul>
                  </div>
               </div>

            </div>
         </div>

      </div>
   </div>
   <%@ include file="./footer.jsp"%>

   <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
   
   const unjoin = document.getElementById('unjoin');
   let checkFlag = false;
   
   function is_checked() {
      
      // 1. checkbox element를 찾습니다.
      const checkbox = document.getElementById('withdraw-agreements');

      // 2. checked 속성을 체크합니다.
      checkFlag = checkbox.checked;

      
    }
   
  
   
   unjoin.addEventListener('click',function(){
      
      if(checkFlag==false){
         alert('동의 부탁드립니다.');
         return;
      }
      if(confirm('정말 탈퇴 하시겠습니가?')){
         location.href="unjoin.do";
         }
         console.log($('#ckBox').is(':checked'));
   })
   
   

</script>


</body>
</html>