<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<style>

.chat-search-box {
    -webkit-border-radius: 3px 0 0 0;
    -moz-border-radius: 3px 0 0 0;
    border-radius: 3px 0 0 0;
    padding: .75rem 1rem;
}

.chat-search-box .input-group .form-control {
    -webkit-border-radius: 2px 0 0 2px;
    -moz-border-radius: 2px 0 0 2px;
    border-radius: 2px 0 0 2px;
    border-right: 0;
}

.chat-search-box .input-group .form-control:focus {
    border-right: 0;
}

.chat-search-box .input-group .input-group-btn .btn {
    -webkit-border-radius: 0 2px 2px 0;
    -moz-border-radius: 0 2px 2px 0;
    border-radius: 0 2px 2px 0;
    margin: 0;
}

.chat-search-box .input-group .input-group-btn .btn i {
    font-size: 1.2rem;
    line-height: 100%;
    vertical-align: middle;
}

@media (max-width: 767px) {
    .chat-search-box {
        display: none;
    }
}


/************************************************
	************************************************
									Users Container
	************************************************
************************************************/

.users-container {
    position: relative;
    padding: 1rem 0;
    border-right: 1px solid #e6ecf3;
    height: 100%;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
}


/************************************************
	************************************************
											Users
	************************************************
************************************************/

.users {
    padding: 0;
}

.users .person {
    position: relative;
    width: 100%;
    padding: 10px 1rem;
    cursor: pointer;
    border-bottom: 1px solid #f0f4f8;
}

.users .person:hover {
    background-color: #ffffff;
    /* Fallback Color */
    background-image: -webkit-gradient(linear, left top, left bottom, from(#e9eff5), to(#ffffff));
    /* Saf4+, Chrome */
    background-image: -webkit-linear-gradient(right, #e9eff5, #ffffff);
    /* Chrome 10+, Saf5.1+, iOS 5+ */
    background-image: -moz-linear-gradient(right, #e9eff5, #ffffff);
    /* FF3.6 */
    background-image: -ms-linear-gradient(right, #e9eff5, #ffffff);
    /* IE10 */
    background-image: -o-linear-gradient(right, #e9eff5, #ffffff);
    /* Opera 11.10+ */
    background-image: linear-gradient(right, #e9eff5, #ffffff);
}

.users .person.active-user {
    background-color: #ffffff;
    /* Fallback Color */
    background-image: -webkit-gradient(linear, left top, left bottom, from(#f7f9fb), to(#ffffff));
    /* Saf4+, Chrome */
    background-image: -webkit-linear-gradient(right, #f7f9fb, #ffffff);
    /* Chrome 10+, Saf5.1+, iOS 5+ */
    background-image: -moz-linear-gradient(right, #f7f9fb, #ffffff);
    /* FF3.6 */
    background-image: -ms-linear-gradient(right, #f7f9fb, #ffffff);
    /* IE10 */
    background-image: -o-linear-gradient(right, #f7f9fb, #ffffff);
    /* Opera 11.10+ */
    background-image: linear-gradient(right, #f7f9fb, #ffffff);
}

.users .person:last-child {
    border-bottom: 0;
}

.users .person .user {
    display: inline-block;
    position: relative;
    margin-right: 10px;
}

.users .person .user img {
    width: 48px;
    height: 48px;
    -webkit-border-radius: 50px;
    -moz-border-radius: 50px;
    border-radius: 50px;
}

.users .person .user .status {
    width: 10px;
    height: 10px;
    -webkit-border-radius: 100px;
    -moz-border-radius: 100px;
    border-radius: 100px;
    background: #e6ecf3;
    position: absolute;
    top: 0;
    right: 0;
}

.users .person .user .status.online {
    background: #9ec94a;
}

.users .person .user .status.offline {
    background: #c4d2e2;
}

.users .person .user .status.away {
    background: #f9be52;
}

.users .person .user .status.busy {
    background: #fd7274;
}

.users .person p.name-time {
    font-weight: 600;
    font-size: .85rem;
    display: inline-block;
}

.users .person p.name-time .time {
    font-weight: 400;
    font-size: .7rem;
    text-align: right;
    color: #8796af;
}

@media (max-width: 767px) {
    .users .person .user img {
        width: 30px;
        height: 30px;
    }
    .users .person p.name-time {
        display: none;
    }
    .users .person p.name-time .time {
        display: none;
    }
}


/************************************************
	************************************************
									Chat right side
	************************************************
************************************************/

.selected-user {
    width: 100%;
    padding: 0 15px;
    min-height: 64px;
    line-height: 64px;
    border-bottom: 1px solid #e6ecf3;
    -webkit-border-radius: 0 3px 0 0;
    -moz-border-radius: 0 3px 0 0;
    border-radius: 0 3px 0 0;
}

.selected-user span {
    line-height: 100%;
}

.selected-user span.name {
    font-weight: 700;
}

.chat-container {
    position: relative;
    padding: 1rem;
}

.chat-container li.chat-left,
.chat-container li.chat-right {
    display: flex;
    flex: 1;
    flex-direction: row;
    margin-bottom: 40px;
}

.chat-container li img {
    width: 48px;
    height: 48px;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    border-radius: 30px;
}

.chat-container li .chat-avatar {
    margin-right: 20px;
}

.chat-container li.chat-right {
    justify-content: flex-end;
}

.chat-container li.chat-right > .chat-avatar {
    margin-left: 20px;
    margin-right: 0;
}

.chat-container li .chat-name {
    font-size: .75rem;
    color: #999999;
    text-align: center;
}

.chat-container li .chat-text {
    padding: .4rem 1rem;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    background: #EEF1F6;
    font-weight: 300;
    line-height: 150%;
    position: relative;
}

.chat-container li .chat-text:before {
    content: '';
    position: absolute;
    width: 0;
    height: 0;
    top: 10px;
    left: -20px;
    border: 10px solid;
    border-color: transparent #ffffff transparent transparent;
}

.chat-container li.chat-right > .chat-text {
    text-align: right;
}

.chat-container li.chat-right > .chat-text:before {
    right: -20px;
    border-color: transparent transparent transparent #ffffff;
    left: inherit;
}

.chat-container li .chat-hour {
    padding: 0;
    margin-bottom: 10px;
    font-size: .75rem;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    margin: 0 0 0 15px;
}

.chat-container li .chat-hour > span {
    font-size: 16px;
    color: #9ec94a;
}

.chat-container li.chat-right > .chat-hour {
    margin: 0 15px 0 0;
}

@media (max-width: 767px) {
    .chat-container li.chat-left,
    .chat-container li.chat-right {
        flex-direction: column;
        margin-bottom: 30px;
    }
    .chat-container li img {
        width: 32px;
        height: 32px;
    }
    .chat-container li.chat-left .chat-avatar {
        margin: 0 0 5px 0;
        display: flex;
        align-items: center;
    }
    .chat-container li.chat-left .chat-hour {
        justify-content: flex-end;
    }
    .chat-container li.chat-left .chat-name {
        margin-left: 5px;
    }
    .chat-container li.chat-right .chat-avatar {
        order: -1;
        margin: 0 0 5px 0;
        align-items: center;
        display: flex;
        justify-content: right;
        flex-direction: row-reverse;
    }
    .chat-container li.chat-right .chat-hour {
        justify-content: flex-start;
        order: 2;
    }
    .chat-container li.chat-right .chat-name {
        margin-right: 5px;
    }
    .chat-container li .chat-text {
        font-size: .8rem;
    }
}

.chat-form {
    padding: 15px;
    width: 100%;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ffffff;
    border-top: 1px solid white;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.card {
    border: 0;
    background: #f4f5fb;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    margin-bottom: 2rem;
    box-shadow: none;
}
#chatList {
	overflow: auto;
	min-height: 700px;
	max-height: 700px;
}

#chatList::-webkit-scrollbar {width: 5px; height: 10px;}
#chatList::-webkit-scrollbar-thumb {background-color: #888;}
#chatList::-webkit-scrollbar-track {background-color: #dddddd;}

.modal-dialog.modal-center {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
  width: 700px;
  position: relative;
  left: 700px;
}
#usersList2 {
	height: 500px;
	overflow: auto;
}

.btn-info {padding-top: 4px; padding-bottom: 8px;}

#setRoomNo {margin-right: 5px;}

#exitRoom, #setRoomNo {
	float: right;
	margin-top: 15px;
	width: 100px;
	border-color: #dddddd;
	padding-top: 8px;
}

.btn-info {
    color: #fff;
    background-color: #55beff;
    border-color: #55beff;
    box-shadow: none;
}
.alarm2 {
	font-size: 0.8rem;
    display: inline-block;
    float: right;
    background: red;
    border-radius: 50%;
    width: 20px;
    text-align: center;
    margin-top: 3px;
    color: white;
}
</style>
<div id="body">
<div class="row">
	<div class="col-sm-3">
	    <div class="users-container">
	        <div class="chat-search-box">
	            <div class="input-group">
	            <!-- Button trigger modal -->
	        	<button onclick="myEmpnoSet()" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#exampleModal" style="border-color: #dddddd; margin-right: 10px;">
	        		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
					  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
					</svg>
	        	</button>
	        	<!-- modal start -->
	        	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-center" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">대화 상대 선택</h5>
				        <button onclick="inviteReset()" type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <!-- modal body start -->
				      <div class="modal-body">
					      <div class="input-group">
			                <input id="search2" class="form-control" placeholder="검색">
		              		<div style="background-color:#55beff;" class="input-group-btn">
		                    <button  type="button" class="btn btn-info">
		                        <i class="fa fa-search"></i>
		                    </button>
		                	</div>
					      </div>
					      <form action="/messenger/invite" id="inviteForm" method="post">
					      	
					      </form>
					      <div id="inviteDiv">
					      
					      </div>
					      <ul class="users" id="usersList2">
					      </ul>
				      </div>
				      <!-- modal body end -->
				      <div class="modal-footer">
				        <button onclick="inviteReset()" type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				        <button onclick="inviteUser()" type="button" class="btn btn-primary">초대</button>
				      </div>
				    </div>
				  </div>
				</div>
	        	<!-- modal end -->
	                <input id="search" class="form-control" placeholder="검색">
	                <div class="input-group-btn">
	                    <button type="button" class="btn btn-info">
	                        <i class="fa fa-search"></i>
	                    </button>
	                </div>
	            </div>
	        </div>
	        <ul class="users" id="usersList">
	            
	        </ul>
	    </div>
	</div>
	<div class="col-sm-9">
	    <div class="selected-user" id="selectedUser">
	        <!-- <span>To: <span class="name">Emily Russell</span></span> -->
	    </div>
	    <div class="chat-container">
	        <ul class="chat-box chatContainerScroll" id="chatList">
	            
	        </ul>
	        <div class="form-group mt-3 mb-0">
	            <textarea class="form-control" id="message" onkeyup="enterkey()" rows="3" placeholder="채팅을 입력해주세요..."></textarea>
	        </div>
	    </div>
	</div>
</div>
</div>
<script>
	var nowRoom = 0;

	var addr = window.location.origin + "/echo";
	let sock = new SockJS(addr);
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	
	var chttRoomNo = "";
	var empnoList = [];
	
	// 메시지 전송
	function sendMessage(chttRoomNo) {
		var jsonMessage = JSON.stringify({chttRoomNo : chttRoomNo, type:'CHAT', prtcpntEmpno: ${empVo.empno}, cn : $("#message").val()});
		sock.send(jsonMessage);
	}
	
	var roomObject = {}; // key chttRoomNo, value empno arr;
	var inviteChk = false; // true면 이미 있는 대화방에서의 초대 false면 새로운 방 생성 초대 
	
	// 서버로부터 메시지를 받았을 때
	function onMessage(msg) {
		var data = JSON.parse(msg.data);
		//console.log(data[0]);
		if(data.type == 'CHAT'){
			//console.log(data.type);	
			addChat(data);
		}else if(data.length == 0){
			$(".alarm2").each(function(index, item){
				item.remove();
			});
			return;
		}else if(data[0].type == 'CONTACT'){
			$('#usersList').html("");
			var object = {};// key chttRoomNo, value nm arr;
			for(var dataRow in data){
				var roomNo = data[dataRow].chttRoomNo;
				if(object[roomNo] == null){
					object[roomNo] = [data[dataRow].nm];
					roomObject[roomNo] = [data[dataRow].prtcpntEmpno];
				}else if(object[roomNo] != null){
					object[roomNo].push(data[dataRow].nm);
					roomObject[roomNo].push([data[dataRow].prtcpntEmpno]);
				}
			}
			//console.log(data);
			//console.log(object);
			//console.log(roomObject);
			for(var idx in object){
				console.log(roomObject[idx][0]);
				var nameList = "";
				for(var idy in object[idx]){
					nameList = nameList + " " + object[idx][idy];  
				}
				$('#usersList').append(
					`
		            	<li onclick="enterChatRoom(`+idx+`,'`+nameList+`')" class="person no`+idx+`" data-chat="person1">
		                <div class="user">
		                    <img src="/reloadByEmpno?empno=`+roomObject[idx][0]+`" alt="`+object[idx][0]+`">
		                    <!-- <span class="status busy"></span> -->
		                </div>
		                <p class="name-time">
		                    <span class="name">`+ nameList +`</span>
		                </p>
		            	</li>
            		`
				
				);			
			}
		}else if(data[0].type == 'NOREAD'){
			$(".alarm2").each(function(index, item){
				item.remove();
			});
			for(var idx in data){
				console.log("방 번호 : " + data[idx].chttRoomNo)
				$(".no"+data[idx].chttRoomNo).append('<span class="alarm2">'+ data[idx].chttNo +'</span>');
				console.log("읽지 않은 채팅 갯수 : " + data[idx].chttNo)
			}
		}
		
	}
	
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		$("#messageArea").append("연결 끊김");

	}
	
	$(document).ready(function(){
		setTimeout(function() {
			var contactMessage = JSON.stringify({type:'CONTACT', prtcpntEmpno: ${empVo.empno}});
			sock.send(contactMessage);
		}, 200);
		
	});
	
	function enterChatRoom(chatRoomNo, nameList){
		$("#chatList").html("");
		$("#selectedUser").html('<span>To: <span class="name">'+ nameList +'</span></span>')
		$("#selectedUser").append('<button onclick="exitRoom()" id="exitRoom" class="btn btn-outline-secondary btn-sm">나가기</button>');
		$("#selectedUser").append('<button id="setRoomNo" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#exampleModal" onclick="setRoomNo()">초대</button>');
		chttRoomNo = chatRoomNo;
		//console.log("chatRoomNo" + chatRoomNo);
		//console.log("chttRoomNo" + chttRoomNo);
		if(nowRoom > 0){
			var leaveMessage = JSON.stringify({chttRoomNo : nowRoom, type:'LEAVE', prtcpntEmpno: ${empVo.empno}});
			sock.send(leaveMessage)			
		}
		var enterMessage = JSON.stringify({chttRoomNo : chatRoomNo, type:'ENTER', prtcpntEmpno: ${empVo.empno}});
		sock.send(enterMessage);
		nowRoom = chatRoomNo;
	}
	
	function enterkey() { 
		if (window.event.keyCode == 13) {
			sendMessage(chttRoomNo);
			//console.log("chttRoomNo" + chttRoomNo);
			$('#message').val('');
			
		}
	}	
	
	function addChat(data){
		var empno = "${empVo.empno}";
		var direction = "";
		if(empno == data.prtcpntEmpno){
			direction = "chat-right";
		}else{
			direction = "chat-left";
		}
		$("#chatList").append(
		`
		<li class="`+direction+`"><div class="chat-avatar">
			<img src="/reloadByEmpno?empno=`+data.prtcpntEmpno+`" alt="`+data.nm+`">
			<div class="chat-name">`+data.nm+`</div>
			</div>
			<div class="chat-text">`+data.cn+`</div>
			<div class="chat-hour">`+data.writngTm+`<span class="fa fa-check-circle"></span></div>
		</li>
		`
		);
		var element = document.getElementById("chatList");
		element.scrollTop = element.scrollHeight;
	}
	
	function setRoomNo(){
		inviteChk = true; //이미 있는 방에서 초대한다는 뜻
		$("#myEmpno").remove();
		$("#inviteForm").append("<input id='chttRoomNo' type='hidden' name='chttRoomNo' value="+chttRoomNo+"></input>")
	}
	
	function myEmpnoSet(){
		if($("#myEmpno").length == 0){
			$("#inviteForm").append(`<input id="myEmpno" type='hidden' class='empno' name='empVoList["0"].empno' value="${empVo.empno}"></input>`)
		}
	}
	
	
	function exitRoom(){
		if($("#myEmpno").length == 0){
			$("#inviteForm").append(`<input id="myEmpno" type='hidden' class='empno' name='empVoList["0"].empno' value="${empVo.empno}"></input>`)
		}
		$("#inviteForm").append("<input id='chttRoomNo' type='hidden' name='chttRoomNo' value="+chttRoomNo+"></input>");
		$("#inviteForm").attr("action", "/messenger/exit");
		$("#inviteForm").submit();
	}
	
	function inviteUser(){
		$("#inviteForm").submit();
	}
	
	function inviteReset(){
		inviteChk = false; //기본값으로 되돌림
		if($("#chttRoomNo")!=null){
			$("#chttRoomNo").remove();
		}
		$(".empno").each(function(index, item){
				$(item).remove();
		});
		$(".empnoBtn").each(function(index, item){
				$(item).remove();
		});
		$("#inviteForm").append("<input id='myEmpno' type='hidden' class='empno' name='empVoList[0].empno' value='${empVo.empno}'></input>");
	}
	
	function deleteUser(element, empno){
		$(element).remove();
		$(".empno").each(function(index, item){
			if($(item).val() == empno){
				$(item).remove();
			}
		});
	}
	
	function invite(nm, empno){
		var idx = 0; 
		idx = $(".empno").length; //길이
		var chk = false;
		$(".empno").each(function(index, item){
			if($(item).val() == empno){
				chk = true;
			}
		});
		if(chk){
			return;
		}else{
			$("#inviteForm").append("<input type='hidden' class='empno' name='empVoList["+idx+"].empno' value=" + empno + "></input>");
			$("#inviteDiv").append(`<button type="button" class="empnoBtn btn btn-outline-secondary" onclick="deleteUser(this, '`+ empno + `')">` + nm + `</button>`)
		}
		
		
	}
	
    $('#search').on('propertychange change keyup paste input', function(){
    	if($('#search').val() == ""){
    		var contactMessage = JSON.stringify({type:'CONTACT', prtcpntEmpno: ${empVo.empno}});
			sock.send(contactMessage);
			return;
    	}
    	
        var form = {
                search: $('#search').val(),
        }
        $.ajax({
            url: "/messenger/search",
            type: "POST",
            data: JSON.stringify(form),
            contentType: "application/json; charset=utf-8;",
            dataType: "json",
            success: function(data){
                $('#usersList').html("");
            	for(idx in data){
            		if(data[idx].empno == '${empVo.empno}'){
            			continue;
            		}
            		$('#usersList').append(
            		`
		            	<li class="person" data-chat="person1">
		                <div class="user">
		                    <img src="/reloadByEmpno?empno=`+data[idx].empno+`" alt="`+data[idx].nm+`">
		                </div>
		                <p class="name-time">
		                    <span class="name">`+data[idx].nm+`</span>
		                    <span class="time">`+data[idx].ofcpsNm+`</span>
		                    <span class="time">`+data[idx].deptNm+`</span>
		                    <span class="time">`+data[idx].rspofcNm+`</span>
		                </p>
		            	</li>
            		`
            		);
            	};
            },
            error: function(){
                alert("stringify err");
            }
        });
    });
    
    $('#search2').on('propertychange change keyup paste input', function(){
    	
        var form = {
                search: $('#search2').val(),
        }
        $.ajax({
            url: "/messenger/search",
            type: "POST",
            data: JSON.stringify(form),
            contentType: "application/json; charset=utf-8;",
            dataType: "json",
            success: function(data){
                $('#usersList2').html("");
            	for(idx in data){
            		if(data[idx].empno == '${empVo.empno}'){
            			//자기자신은 검색이 되지 않도록한다
            			continue;
            		}
            		var chk = false; //이미 이 사람이 방에 있다면 true;
            		if(inviteChk){//이미 있는 톡방에서의 초대라면
            			var no = $("#chttRoomNo").val();
            			//console.log(no);
            			for(var idx2 in roomObject[no]){
            				//console.log(roomObject[no]);
            				if(roomObject[no][idx2] == data[idx].empno){
            					chk = true;
            					break;
            				}
            			}
            		}
            		if(chk){
            			continue;
            		}
            		$('#usersList2').append(
            		`
		            	<li class="person" data-chat="person1" onclick="invite('`+data[idx].nm+`','`+data[idx].empno+`')">
		                <div class="user">
		                    <img src="/reloadByEmpno?empno=`+data[idx].empno+`" alt="`+data[idx].nm+`">
		                </div>
		                <p class="name-time">
		                    <span class="name">`+data[idx].nm+`</span>
		                    <span class="time">`+data[idx].ofcpsNm+`</span>
		                    <span class="time">`+data[idx].deptNm+`</span>
		                    <span class="time">`+data[idx].rspofcNm+`</span>
		                </p>
		            	</li>
            		`
            		);
            	};
            },
            error: function(){
                alert("stringify err");
            }
        });
    });
	
	var element = document.getElementById("chatList");
	element.scrollTop = element.scrollHeight;
</script>