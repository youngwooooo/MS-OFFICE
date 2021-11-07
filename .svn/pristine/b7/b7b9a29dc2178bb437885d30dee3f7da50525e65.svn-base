<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
.left-menu-list {
	position: absolute;
	border-right: 1px solid #dee2e6;
	height: 100%;
	width: 260px;
	float: left;
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
	padding: 20px 20px 20px 20px;
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

.menu-list li:hover {
	background-color: #f7f8f9;
}

.menu-list span {
	font-size: 0.9rem;
}

.btn1 {
	background-color: white;
    border: 2px solid #55beff;
    font-size: 0.8rem;
    color: black;
    border-radius: 20px;
    width: 49%;
    height: 43px;
}

.btn1:hover {
	background-color: #55beff;
    color: white;
    font-weight: bold;
    cursor: pointer;
}

.btn2:hover {
	cursor: pointer;
}

.btn2 {
	background-color: white;
    border: 2px solid #55beff;
    font-size: 0.8rem;
    color: black;
    border-radius: 20px;
    width: 100%;
    height: 43px;
    text-align: center;
    margin-top: 5px;
}

.Today {
	font-size: 0.9rem; color: #888;
}

.spWorkTimeDiv {
	color: #666; font-size: 40px; padding-top: 5px; padding-bottom: 5px;
}

.timeDiv {
	padding-top: 10px;
	padding-bottom: 15px;
	border-bottom: 1px dashed #dddddd;
}

.divStartWorkTime, .divEndWorkTime, .divEndWorkTime {
	padding-top: 3px; padding-bottom: 3px; overflow: hidden;
}
.spWorkTimeName {
	font-weight: bold;
	font-size: 0.8rem;
}
.spWorkTime, #weeklyworktime {
	float: right;
	font-size: 0.9rem;
}

.divWorkBtn {
	padding-top: 15px;
}
#delete1, #delete2, #delete3, #delete4, #delete5, #delete6, #delete7, #delete8, #delete9, #delete10, #delete11, #delete12 {
	background-color: white;
    border: none;
}

.menu-name h3 {font-size: 1.5rem;}

</style>
<body>
<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name">
				<h3>
					<a href="#">근태관리</a>
				</h3>
			</div>
			<div class="menu-create">
				<div class="Today"></div>
				<div class="spWorkTimeDiv" id="sysdate"></div>
				<div class="timeDiv">
					<table id="timetable">
						<colgroup>
							<col width="140px;">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr class="divStartWorkTime" id="timetable">
								<td class="spWorkTimeName" id="timetable">출근시간</td><td class="spWorkTime" id="spWorkTime"><c:if test="${timeList[0].rcordCode eq 'D101'}">${timeList[0].tm2}</c:if></td>
							</tr>
							<tr class="divEndWorkTime" id="timetable">
								<td class="spWorkTimeName" id="timetable">퇴근시간</td><td class="spWorkTime" id="spWorkTimeEnd"><c:if test="${timeList[1].rcordCode eq 'D102'}">${timeList[1].tm2}</c:if></td>
							</tr>
							<tr class="divEndWorkTime" id="timetable">
								<td class="spWorkTimeName" id="timetable">주간 누적 근무시간</td><td id="weeklyworktime">${list4[0].tmh}h ${list4[0].tmm}m <span id="tmws">${list4[0].tms}</span>s</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="line"></div>
				<div class="divWorkBtn">
					<button id="btnStartWork" type="button" class="btn1">출근</button>
					<button id="btnEndWork" type="button" class="btn1">퇴근</button>
					<select name="select" id="select" class="btn2">
						<option selected value=''>업 무 상 태 변 경</option>
						<option value='task'>업무</option>
						<option value='taskend'>업무종료</option>
						<option value='outsidework'>외근</option>
						<option value='business'>출장</option>
						<option value='halfway'>반차</option>
					</select>
				</div>
			</div>
			<form action="/ehr/time" method="post" id="fm">
				<input type="hidden" id="empNo" class="fadeIn first" name="empNo">
				<input type="hidden" id="spWorkTime" class="fadeIn first" name="spWorkTime">
				<input type="hidden" id="spWorkTimeEnd" class="fadeIn second" name="spWorkTimeEnd">
				<input type="hidden" id="rcordCode" class="fadeIn third" name="rcordCode">
				<input type="hidden" id="workAccmltTm2" class="fadeIn first" name="workAccmltTm">
			</form>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>근태관리</strong></a>
				<ul class="menu-list-ul">
					<li><a href="/ehr/content"><span>내 근태관리</span></a></li>
					<li><a href="/ehr/vacation"><span>내 연차 내역</span></a></li>
					<li><a href="/ehr/info?tag=1"><span>내 인사 정보</span></a></li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>근태통계 관리</strong></a>
				<ul class="menu-list-ul">
					<li><a href="/ehr/dashboard"><span>전체 근태통계</span></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
<script>
	$(function() {
		if("${empVo}" == ""){
			   location.href = "/login";
			}else{
			   console.log("로그인 됨");
			}
		
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

	$("#btnStartWork").click(function() {
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
		
		var id = "${empVo.empno}";
		$.ajax({
			url : "/ehr/insert",
			type : 'POST',
			data : {
				"empNo" : "${empVo.empno}",
				"tm3" : currentTime,
				"rcordCode" : "D101"
			},
			success : function(data) {
				$("#spWorkTime").text(currentTime);
				//console.log(rcordCode);
				$("#empNo").val(id);
				document.getElementById('fm').submit();
			}

		});

	});
	$("#btnEndWork").click(function() {
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
		var id = "${empVo.empno}";
		$.ajax({
			url : "/ehr/insert",
			type : 'POST',
			data : {
				"empNo" : "${empVo.empno}",
				"tm3" : currentTime,
				"rcordCode" : "D102"
			},
			success : function(data) {
				$("#spWorkTimeEnd").text(currentTime);
				$("#empNo").val(id);
				document.getElementById('fm').submit();
			}
		});

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
					if (val != "" || val != null) {
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
	
	if($("#spWorkTime").text() == '' && $("#spWorkTimeEnd").text() == ''){
		$("#btnEndWork").attr("disabled", true);
	}
	
	if($("#spWorkTime").text() != '' && $("#spWorkTimeEnd").text() == ''){
		$("#btnEndWork").attr("disabled", false);
		$("#btnStartWork").attr("disabled", true);
	}
	
	if($("#spWorkTime").text() != '' && $("#spWorkTimeEnd").text() != ''){
		$("#btnEndWork").attr("disabled", true);
		$("#btnStartWork").attr("disabled", true);
	}
	
	if($("#tmws").text() == ''){
		$("#tmws").text("0");
	}
	
</script>