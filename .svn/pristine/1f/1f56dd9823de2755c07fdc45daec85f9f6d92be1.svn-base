<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<!-- 공통 css -->
<style>
.left-menu-list {
	position: absolute;
	border-right: 1px solid #dee2e6;
	height: 100%;
	width: 260px;
	float: left;
}

.lefr-menu-list-content {
	margin-left: 260px;
	padding-left: 10px;
	padding-right: 10px;
	display: flex;
}

.left-menu-list a {
	color: black;
}

.left-menu-list a:hover {
	color: black;
}

.menu-name {
	padding: 20px 20px 10px 20px;
}

.menu-create {
	padding: 0px 20px 20px 20px;
}

.menu-list {
	padding: 0px 20px 20px 20px;
}

#btCreateBoard {
	width: 100%;
	height: 60px;
	border-color: black;
	background-color: white;
}

#btCreateBoard:hover {
	box-shadow: 0px 5px 15px #dddddd;
}

#btCreateBoard>span {
	font-size: 1rem;
}

.menu-list .menu-list-ul {
	list-style: none;
	padding-left: 0px;
	margin-bottom: 0px;
}

.menu-list li {
	padding-left: 40px;
	margin-top: 3px;
}

.menu-list .pad0 {
	padding-left: 10px;
}

.menu-list li:hover {
	background-color: #f7f8f9;
}

.menu-list span {
	font-size: 0.9rem;
}

.form-control {
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	word-break: break-all;
	letter-spacing: -0.5px;
	font-size: 13px;
	margin: 0;
	border: 1px solid #ddd;
	padding: 0 4px;
	height: 26px;
	box-sizing: border-box;
	font-weight: normal;
	display: inline-block;
	vertical-align: middle;
	margin-right: 0.2% !important;
	width: 170px;
}

#DDVV div {
	display: inline-block;
	margin-top: 5px;
}

#btnsm {
	font-size: 0.7rem;
	height: 25px;
	width: 33px;
	margin-bottom: 1px;
	padding: 0 8px;
	border: 1px soild #55beff;
	background-color: #55beff;
	color: white;
}

.send-mail, .create-addr {
	font-size: 0.9rem;
	border: 1px soild #55beff;
	background-color: #55beff;
	color: white;
}

.send-mail:hover, .create-addr:hover {
	border-color: #009dff;
	background-color: #009dff;
	color: white;
}

.delete-addr {
	font-size: 0.9rem;
	border: 1px solid #dddddd;
}

.delete-addr:hover {
	color: #888;
}

.table {
	font-size: 0.9rem;
}

.table thead {
	text-align: center;
}

.table thead th {
	border-bottom: none;
	padding: 5px;
}

.table thead th td{
	border-bottom: none;
	padding: 5px;
	width:100px;
}

.table tbody tr:hover {
	background-color: #f4f4f4;
}
</style>
<div class="right-menu">
	<div class="lefr-menu-list-content">
		<div class="menu-name" style="padding-bottom: 30px;">
			<h4>부서 근태현황</h4>
		</div>
	</div>
	<div class="lefr-menu-list-content">
		<div class="table-responsive mailbox-messages" style="width: 100%;">
			<table class="table">
				<colgroup>
					<col width="200px">
					<col width="autopx">
					<col width="350px">
					<col width="350px">
				</colgroup>
				<thead>
					<tr>
						<th>이름</th>
						<th>날짜</th>
						<th>출근</th>
						<th>퇴근</th>
					</tr>
				</thead>
				<tbody style="text-align: center;">
					<c:forEach var="ea1" items="${ae1}" varStatus="status">
						<tr>
							<td><img src="/reload?fileNo=${ea1.fileNo}" alt="프로필" style=" width: 40px; height: 40px; border-radius: 40px; margin-right: 10px;">${ea1.nm}</td>
							<td class="Today"></td>
							<td>${ea1.startTm}</td>
							<td>${ea1.endTm}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- /.table -->
		</div>
	</div>
</div>
<!-- body -->
<script>

$(function() {
	fn_getFullTime();
	fn_getTime();
	setInterval(fn_getFullTime, 1000);
	setInterval(fn_getTime, 1000);
});

//현재 시각
var now = new Date();

// 년/월/일/요일/시/분/초 구하기
var year = now.getFullYear();
var month = now.getMonth() + 1;
var date = now.getDate();
var date1 = year + "." + month + "." + date;
var dayInt = now.getDay();

function fn_getFullTime() {
	// 요일(숫자)을 요일(한글)로 바꾸기
	var week = new Array("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일");
	var dayStr = week[dayInt]; // 일요일
	var day = dayStr.substring(0, 1); // 일

	// 시/분/초
	var hour = now.getHours();
	var min = now.getMinutes();
	var sec = now.getSeconds();

	if (hour < 10) {
		hour = "0" + hour;
	}
	if (min < 10) {
		min = "0" + min;
	}
	if (sec < 10) {
		sec = "0" + sec;
	}

	var currentDay = year + "년 " + month + "월 " + date + "일 " + "(" + day
			+ ") ";

	$(".Today").text(currentDay);
}

// 시/분/초만 구하기
function fn_getTime() {
	var now = new Date();

	// 시/분/초
	var hour = now.getHours();
	var min = now.getMinutes();
	var sec = now.getSeconds();

	if (hour < 10) {
		hour = "0" + hour;
	}
	if (min < 10) {
		min = "0" + min;
	}
	if (sec < 10) {
		sec = "0" + sec;
	}

	var currentTime = hour + ":" + min + ":" + sec;
	$("#sysdate").text(currentTime);
}

//시/분/초만 구하기
var now = new Date();

// 시/분/초
var hour = now.getHours();
var min = now.getMinutes();
var sec = now.getSeconds();

if (hour < 10) {
	hour = "0" + hour;
}
if (min < 10) {
	min = "0" + min;
}
if (sec < 10) {
	sec = "0" + sec;
}

var currentTime = hour + ":" + min + ":" + sec;

//console.log(currentTime);

$("#today").click(function() {
	$("#time").text(Time);
});


// 쿠키 설정
var _rolling_interval = 10;
$(document).ready(
		function() {
			////////////////////////////////////////

			function setCookie(cName, cValue, expiredays) {
				var today = new Date();
				today.setDate(today.getDate() + expiredays);
				document.cookie = cName + "=" + escape(cValue)
						+ "; path=/; expires=" + today.toGMTString() + ";"
			}

			function getCookie() {
				// userid 쿠키에서 id 값을 가져온다.
				var cook = document.cookie + ";";
				var key = 'hcn_total_dashbd';
				var idx = cook.indexOf(key, 0);
				var val = "";

				if (idx != -1) {
					cook = cook.substring(idx, cook.length);
					begin = cook.indexOf("=", 0) + 1;
					end = cook.indexOf(";", begin);
					val = unescape(cook.substring(begin, end));
				}

				// 가져온 쿠키값이 있으면
				if (val != "") {
					$("#select").val(val);
					_rolling_interval = val;
				} else {
					$("#select").val(_rolling_interval);
				}
			}
			getCookie();

			$("#select").change(function(e) {
				var _rolling_interval = $(this).val();
				setCookie("hcn_total_dashbd", _rolling_interval, 7);

				$("time").text(_rolling_interval);
			});

			$("time").text(_rolling_interval);

			////////////////////////////////////////

		});
</script>








