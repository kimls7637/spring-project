<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>ACENSE : 채팅</title>
<style type="text/css">
.container {
	width: 500px;
}

#list {
	height: 500px;
	padding: 15px;
	overflow: auto;
	border: solid 1px black;
	width: 500px;
}

#msg {
	width: 450px;
	margin-top: 20px;
	height: 50px;
}

input:focus {
	bofder: none;
	outline: none;
}

.scroll {
	overflow: hidden;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/resources/js/socket.js"></script>
</head>
<body>
	<script type="text/javascript">
   
         //채팅 서버 주소
         let url = "ws:///192.168.0.187:8088/app/chatserver"
            //let url = "ws:///localhost:8088/app/chatserver";

         // 웹 소켓
         let ws;

         // 연결하기
         $(document).ready( function() {
                  $('#btnConnect').click(
                        function() {
                           console.log('[로그1] Chat.jsp');
                           // 유저명 확인
                           if ($('#user').val().trim() != '') {
                              console.log('[로그2] Chat.jsp');
                              // 연결
                              ws = new WebSocket(url);

                              // 소켓 이벤트 매핑
                              ws.onopen = function(evt) {
                                 console.log('서버 연결 성공');
                                 print($('#user').val(), '님이 입장했습니다.');

                                 // 현재 사용자가 입장했다고 서버에게 통지(유저명 전달)
                                 // -> 1#유저명
                                 ws.send('1#' + $('#user').val()
                                       + '#');

                                 $('#user').attr('readonly', true);
                                 $('#btnConnect').attr('disabled',
                                       true);
                                 $('#btnDisconnect').attr(
                                       'disabled', false);
                                 $('#msg').attr('disabled', false);
                                //$('#msg').focus();
                              };

                              ws.onmessage = function(evt) {
                                 // print('', evt.data);
                                 let index = evt.data.indexOf("#", 2);
                                 let no = evt.data.substring(0, 1);
                                 let user = evt.data.substring(2, index);
                                 let txt = evt.data .substring(index + 1);
                              
                                 if (no == '1') {
                                    print2(user);
                                 } else if (no == '2') {
                                    let t1 = txt.split("#");
                                    console.log(t1[1]);   
                                    let t2 = t1[1].split(":");
                                    print(t2[0],t2[1]);
                                 } else if (no == '3') {
                                    print3(user);
                                 }
                                 
                                  $('#list').scrollTop(
                                       $('#list').prop(
                                             'scrollHeight')); 
                              };

                              ws.onclose = function(evt) {
                                 console.log('소켓이 닫힙니다.');
                                 setTimeout(function() { connect(); }, 1000);
                              };

                              ws.onerror = function(evt) {
                                 console.log(evt.data);
                              };
                           } else {
                              alert('유저명을 입력하세요.');
                             // $('#user').focus();
                           }
                        })
               });

         // 시작
         $(document).ready(function() {
            connect();
         });

         // 메세지 전송 및 아이디

         function print(user, txt) {
           if('${member.mNickname}'==user){
            let temp = '';
            temp += '<div style="margin-bottom: 3px; padding: 5px; display: flex; justify-content: flex-end; " class="me">';
            temp += ' <span style=" font-size: 11px;  color: #777;   margin-top: 17px; margin-right: 4px;">'
                  + new Date().toLocaleTimeString() + '</span>';
            temp += '<span style="background-color: #d1d1d1; padding:5px; border-radius:5px 0px 5px 5px;">' + user + '&nbsp:';
            temp +=  txt+'</span>';
            temp += '</div>';

            $('#list').append(temp);
           }else{
                let temp = '';
                  temp += '<div  style="margin-bottom:3px; padding:5px; border-radius:5px 0px 5px 5px;">';
                  temp += '<span style="background-color:#d1d1d1; padding:5px; border-radius:0px 5px 5px 5px;">' + user + '&nbsp:';
                  temp +=  txt+'</span>';
                  temp += ' <span style="font-size:11px;color:#777;   margin-top: 17px; margin-right: 4px;">'
                        + new Date().toLocaleTimeString() + '</span>';
                  temp += '</div>';

                  $('#list').append(temp);
           }
           //$('.me').focus();
           $('#list').scrollTop(
                   $('#list').prop(
                         'scrollHeight')); 

         }

         // 다른 client 접속   

         function print2(user) {
            let temp = '';
            temp += '<div style="margin-bottom:15px; margin-top:20px;">';
            temp += "<span style='background-color:#d1d1d1; padding: 5px; border-radius:5px 0px 5px 5px;'>'" + user + "' 님이 입장했습니다.</span>";
            temp += ' <span style="font-size:11px;color:#777;">'
                  + new Date().toLocaleTimeString() + '</span>';
            temp += '</div>';

            $('#list').append(temp);
          

         }

         // client 접속 종료

         function print3(user) {
            let temp = '';
            temp += '<div style="margin-bottom:15px; margin-top:20px;">';
            temp += "<span style='background-color:#d1d1d1; padding: 5px; border-radius:5px 0px 5px 5px;'>'" + user + "' 님이 퇴장했습니다.</span>";
            temp += ' <span style="font-size:11px;color:#777;">'
                  + new Date().toLocaleTimeString() + '</span>';
            temp += '</div>';

            $('#list').append(temp);
         }

         $(document).ready(function() {
            $('#user').keydown(function() {
               if (event.keyCode == 13) {
                  $('#btnConnect').click();
               }
            })
         });
         
        

         $(document).ready(
               function() {
                  $('#msg').keydown(
                        function() {
                           if (event.keyCode == 13) {
                              if (ws.readyState === WebSocket.OPEN) {
                                 ws.send('2#' + $('#user').val()
                                       + '#' + $(this).val()); //서버에게
                                 print($('#user').val(), $(this)
                                       .val()); //본인 대화창에
                              }
                              /*
                              else {
                                 // handle error - WebSocket is not open
                              
                              //서버에게 메시지 전달
                              //2#유저명#메시지
                              ws.send('2#' + $('#user').val() + '#' + $(this).val()); //서버에게
                              print($('#user').val(), $(this).val()); //본인 대화창에
                               */
                              $('#msg').val('');
                             //$('#msg').focus();

                           }
                        })
               });

         $(document).ready(function() {
            $('#btnDisconnect').click(function() {
               ws.send('3#' + $('#user').val() + '#');
               //ws.close();

               $('#user').attr('readonly', true);
              // $('#user').val('');

               $('#btnConnect').attr('disabled', false);
               $('#btnDisconnect').attr('disabled', true);

               $('#msg').val('');
               $('#msg').attr('disabled', true);
               
            })
         });
   </script>
	<script> function validateInput(inputField) { var input = inputField.value; if (input.toLowerCase().indexOf("script" && "div") >= 0) { inputField.value = ""; alert("공격실패^^"); } } </script>
	<div class="container">
		<h1 class="page-header">
			<img class="acense" src="assets/imgs/ace.png" alt=""
				style="width: 25%;" />
		</h1>

		<table class="table table-bordered scroll">
			<tr style="display: flex; justify-content: space-between; align-items: flex-end;">
				<td style="display: flex; align-items: center;"><img src="./assets/imgs/${member.grade}"
					style="display: inline; width: 50px; margin-right: 3px;">
					<input type="text" name="user" id="user" class="form-control"
					value="${member.mNickname}" readonly
					style="outline: none; border: none;"></td>
				<td style="float: right;">
					<button type="button" class="btn btn-default" id="btnConnect" style="cursor: pointer; border-radius:10px; border: 1px solid #bbbbbb; width: 50px;">입장</button>
					<button type="button" class="btn btn-default" id="btnDisconnect" style="cursor: pointer; border-radius:10px; border: 1px solid #bbbbbb; width: 50px;"
						disabled>퇴장</button>
				</td>
			</tr>
			<tr>
				<td colspan="2"><div id="list" style="border-radius: 10px; border: 1px solid #bbbbbb;"></div></td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" name="msg" id="msg"
					placeholder="대화 내용을 입력하세요." class="form-control"
					style="width: 97%; padding-left: 3%; word-wrap: break-word; border-radius: 10px; border: none; background-color: lightgray; margin-top: 5px"
					onkeyup="validateInput(this)" disabled></td>
			</tr>
		</table>

	</div>
</body>
</html>