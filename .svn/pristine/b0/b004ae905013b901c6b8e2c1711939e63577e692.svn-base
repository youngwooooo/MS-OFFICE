<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<div id="body">
	<input type="text" id="message" />
	<input type="button" id="sendBtn" value="submit"/>
	<div id="messageArea"></div>
</div>
<script type="text/javascript">
	$("#sendBtn").click(function() {
		sendMessage();
		$('#message').val('')
	});

	let sock = new SockJS("http://192.168.0.120:8090/echo");
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	
	// 메시지 전송
	function sendMessage() {
		var jsonMessage = JSON.stringify({chttRoomNo : '1', type:'CHAT', prtcpntEmpno: ${empVo.empno}, cn : $("#message").val()});
		sock.send(jsonMessage);
	}
	// 서버로부터 메시지를 받았을 때
	function onMessage(msg) {
		var data = msg.data;
		$("#messageArea").append(data + "<br/>");
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		$("#messageArea").append("연결 끊김");

	}
	$(document).ready(function(){
		setTimeout(function() {
			var enterMessage = JSON.stringify({chttRoomNo : '1', type:'ENTER', prtcpntEmpno: ${empVo.empno}});
			sock.send(enterMessage);	
		}, 100);
		
	});
</script>