<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="sidebar">
   <div class="page-sidebar text-center"
      style="display: flex; justify-content: flex-end;">
      <div style="width: 75%;">
         <div class="profile">
            <c:if test="${member == null}">
               <div class="pn" style="font-weight: bold;">
                  <spring:message code="message.sideInfo.login" />
               </div>
               <form action="login.do" method="POST" class="login2">
                  <div class="input-box">
                     <input id="username" type="text" name="id"
                        autocomplete = "off" placeholder="<spring:message code="message.sideInfo.id"/>">
                  </div>
                  <div class="input-box">
                     <input id="password" type="password" name="pw"
                        placeholder="<spring:message code="message.sideInfo.pw"/>">
                  </div>
                  <div id="forgot">
                     <a href="searchId.jsp" style="color: black;"> <spring:message
                           code="message.sideInfo.id" />
                     </a>/<a href="searchPw.jsp" style="color: black;"> <spring:message
                           code="message.sideInfo.pwFind" />
                     </a>
                  </div>
                  <input type="submit"
                     style="width: 100%; height: 40px; background-color: #a0ba83; border-radius: 10px; margin-top: 20px;"
                     value="<spring:message code="message.sideInfo.loginBtn"/>">

                  <div id="forgot">
                     <spring:message code="message.sideInfo.joinment" />
                     <br> <a href="join.jsp"
                        style="color: black; font-weight: bold"> <spring:message
                           code="message.sideInfo.join" />
                     </a>
                  </div>
               </form>
            </c:if>
            <!-- 로그인 후 분기처리할것 -->

            <c:if test="${member != null}">
               <div class="pn" style="font-weight: bold;">
                  <spring:message code="message.sideInfo.profile" />
               </div>
               <div class="nick" style="display: flex; align-items: center;">
                  <!-- level1 씨앗 : heartCnt 0~15개 -->
                  <!-- level2 새싹 : heartCnt 16~30개 -->
                  <!-- level3 가지 : heartCnt 31~50개 -->
                  <!-- level4 열매 : heartCnt 51~70개 -->
                  <!-- level5 관리자 : -->
                  <div style="width: 25%; margin: 0 20px 0 30px;">
                     <c:if test="${member.mNickname == '관리자'}">
                        <img src="./assets/imgs/level5.png">
                     </c:if>
                     <c:if test="${member.mNickname != '관리자'}">
                        <img src="./assets/imgs/${member.grade}">
                     </c:if>
                  </div>
                  <div class="rankArea white-space overflow ellipsis"
                     style="width: 70px; background: #fff; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; text-align:left;">${member.mNickname}</div>
               </div>
               <c:if test="${member.mNickname != '관리자'}">
                  <div id="forgot">
                     <a href="myPage.do"
                        style="color: black; display: inline-block; margin-bottom: 10px;"><spring:message
                           code="message.sideInfo.myPage" /></a>
                  </div>
                  <form action="chat.do" method="post">
                     <input type="hidden" name="mNickname" value="${member.mNickname}">
                     <input type="submit"
                        style="border: 1px solid #a0ba83; width: 100px; border-radius: 10px; padding-top: 5px; padding-bottom: 4px;"
                        value="<spring:message code="message.sideInfo.chatting"/>"
                        onclick="openChat()" />
                  </form>

               </c:if>
               <c:if test="${member.mNickname == '관리자'}">
                  <div id="forgot">
                     <a href="admin.do" style="color: black;"><spring:message
                           code="message.sideInfo.adminPage" /></a>
                  </div>
               </c:if>
               <div class="login" onclick="location.href='logout.do'"
                  style="cursor: pointer;">
                  <button>
                     <spring:message code="message.sideInfo.logoutBtn" />
                  </button>
               </div>
            </c:if>

         </div>

         <div class="profile">
            <div class="like" style="font-weight: bold;">
               <spring:message code="message.sideInfo.memRanking" />
            </div>
            <hr>
            <div class="sidelike" style="padding: 20px;">
               <div>
                  <c:forEach var="v" items="${datas}" varStatus="status">
                     <div class="box" style="display: flex; padding: 10px 0 10px 0; align-items: center;">
                        <div style="width: 20%">${status.count}.</div>
                        <div style="width: 60%;display: flex;align-items: center;justify-content: center;">
                           <img id="sideImg" src="./assets/imgs/${v.grade}"
                              style="display: inline; width: 25px; padding-bottom: 3px;" />
                           <div class="rankArea white-space overflow ellipsis"
                              style="display: inline-block; width: 50%;text-align: left;padding-left: 5px;">
                              ${v.mNickname }</div>
                        </div>
                        <div style="width: 30%">♥ ${v.heartCnt }</div>
                     </div>

                  </c:forEach>
               </div>
            </div>
         </div>
         <script>
            function openChat() {
               var mNickname = document.getElementsByName('mNickname')[0].value;
               var url = "chat.jsp?mNickname=" + mNickname;
               window.open(url, "chat",
                     "width=555, height=800, top=200, left=900");
            }            
         </script>
      </div>
   </div>
</div>