<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 공통 css -->
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

.menu-list li:hover {
	background-color: #f7f8f9;
}

.menu-list span {
	font-size: 0.9rem;
}

/* 근태관리css */
.wrap_ehr_data {
	float: left;
	font-size: 20px;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	white-space: normal;
	letter-spacing: -0.5px;
	word-break: break-all;
	line-height: 150%;
	margin: 0;
	padding: 0;
	color: #888;
	font-weight: normal;
	display: flex;
	width: 100%;
	border: 2px solid gray;
	text-align: center;
}

#table td {
	border-color: white;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum, AppleGothic, Helvetica, sans-serif;
	padding: 10px;
}

.ehr_stat_data {font-size: 0.9rem;}


#change {
	font-size: 14px;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	letter-spacing: -0.5px;
	word-break: break-all;
	display: inline-block;
	font-weight: 500;
}

#info {
	font-size: 14px;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	letter-spacing: -0.5px;
	font-weight: normal;
	word-break: break-all;
}

#day_area {
	font-size: 14px;
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	letter-spacing: -0.5px;
	font-weight: normal;
	word-break: break-all;
	margin: 0;
	padding: 0;
	margin-top: -1px;
}

#table {
	text-align: center;
	width: 100%;
	border-bottom: 1px solid #dddddd;
}

#table thead tr {border-bottom: 1px solid #dddddd; font-size: 0.9rem; font-weight: bold}

.workTable {font-size: 0.9rem;}

header {padding: 20px;}

#weekToggle:hover {cursor: pointer;}

section {border-bottom: 1px solid #dddddd; padding-top: 20px; padding-bottom: 15px;}

section p {margin: 0px;}

.tb_optional {font-size: 0.9rem; padding-top: 10px; color: #888; font-weight: bold;}

.total {font-weight: bold;}

</style>
<script>


$(function(){
	fn_getFullTime();	 
	fn_getTime();
	setInterval(fn_getFullTime, 1000);
	setInterval(fn_getTime, 1000);
	
});
</script>

<body>
	<!-- <div id="body"> -->
	<!-- 	<div class="left-menu"> -->
	<!-- 		<div class="left-menu-list"> -->
	<!-- 			<div class="menu-name"> -->
	<!-- 				<h2> -->
	<!-- 					<a href="#">근태관리</a> -->
	<!-- 				</h4> -->
	<!-- 			</div> -->
	<!-- 			<div class="menu-create"> -->
	<!-- 				<div class="Today"></div> -->
	<!-- 				<div class="spWorkTime" style="width: 60px; height: 25px; line-height: 25px; color: #666; font-size: 30px; text-align: center;" id="sysdate"></div> -->
	<!-- 				<div class="divStartWorkTime"> -->
	<%-- 					<span class="spWorkTimeName">출근시간</span>&nbsp;&nbsp;<span class="spWorkTime" id="spWorkTime"> <c:if test="${timeList[0].rcordCode eq 'D101'}">${timeList[0].tm2}</c:if></span> --%>
	<!-- 				</div> -->
	<!-- 				<div class="divEndWorkTime"> -->
	<%-- 					<span class="spWorkTimeName">퇴근시간</span>&nbsp;&nbsp;<span class="spWorkTime" id="spWorkTimeEnd"> <c:if test="${timeList[1].rcordCode eq 'D102'}">${timeList[1].tm2}</c:if></span> --%>
	<!-- 				</div> -->
	<!-- 				<div class="divEndWorkTime"> -->
	<%-- 					<span class="spWorkTimeName">주간 누적 근무시간</span>&nbsp;&nbsp; <span id="weeklyworktime"> <c:if test="${list[0].empNo ne null}"> --%>
	<%-- 						${list4[0].tmh}h ${list4[0].tmm}m --%>
	<%-- 						</c:if> --%>
	<!-- 					</span> -->
	<!-- 				</div> -->
	<!-- 				<div class="divWorkBtn"> -->
	<!-- 					<button id="btnStartWork" type="button" class="btn1">출근</button> -->
	<!-- 					<button id="btnEndWork" type="button" class="btn1">퇴근</button> -->
	<!-- 					<select name="select" id="select" class="btn2"> -->
	<!-- 						<option value='' selected>업 무 상 태 변 경</option> -->
	<!-- 						<option value='task'>업무</option> -->
	<!-- 						<option value='taskend'>업무종료</option> -->
	<!-- 						<option value='outsidework'>외근</option> -->
	<!-- 						<option value='business'>출장</option> -->
	<!-- 						<option value='halfway'>반차</option> -->
	<!-- 					</select> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 			<form action="/ehr/time" method="post" id="fm"> -->
	<!-- 				<input type="hidden" id="empNo" class="fadeIn first" name="empNo"> <input type="hidden" id="spWorkTime" class="fadeIn first" name="spWorkTime"> <input type="hidden" id="spWorkTimeEnd" class="fadeIn second" name="spWorkTimeEnd"> <input type="hidden" id="rcordCode" class="fadeIn third" name="rcordCode"> <input type="hidden" id="workAccmltTm2" class="fadeIn first" name="workAccmltTm"> -->
	<!-- 			</form> -->

	<!-- 			<div class="menu-list"> -->
	<!-- 				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>근태관리</strong></a> -->
	<!-- 				<ul class="menu-list-ul"> -->
	<!-- 					<li><a href="/ehr/content"><span>내 근태관리</span></a></li> -->
	<!-- 					<li><a href="/ehr/vacation"><span>내 연차 내역</span></a></li> -->
	<!-- 					<li><a href="/ehr/info"><span>내 인사 정보</span></a></li> -->
	<!-- 				</ul> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- </div> -->
	<div class="lefr-menu-list-content">
		<!-- 메뉴에 따른 내용 -->
		<header>
			<h4>근태 현황</h4>
		</header>
		<div style="text-align: center">
			<h2>
				<span id="time" style="font-size: 1.3em"> </span>
			</h2>
		</div>
		<div style="padding: 10px 20px 10px 20px;">
			<span id="info"><b>(기본근태) B형</b> 자유출퇴근</span>
		</div>
		<div style="padding: 10px 20px 10px 20px;">
			<table class="type_list_box" id="table" style="	border-top: 1px solid #dddddd;">
				<tbody>
					<tr class="ehr_stat_data">
						<td class="stat_tit">이번주 누적</td>
						<td class="stat_tit">이번주 잔여</td>
						<td class="stat_tit">이번달 누적</td>
						<td class="stat_tit">이번달 연장</td>
					</tr>
					<tr class="ehr_stat_data month_data">
						<td class="stat_txt">
							<span style="font-size: 1.8rem; font-weight: bold; color: #20aaff;">${list4[0].tmh}h ${list4[0].tmm}m ${list4[0].tms}s</span>
						</td>
						<td class="stat_txt">
							<span style="font-size: 1.8rem; font-weight: bold; color: #888;">0h 0m 0s</span>
						</td>
						<td class="stat_txt">
							<span style="font-size: 1.8rem; font-weight: bold; color: #20aaff;" id="month"></span>
						</td>
						<td class="stat_txt">
							<span style="font-size: 1.8rem; font-weight: bold; color: #888;">0h 0m 0s</span>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div style="padding: 10px 20px 10px 20px;">
			<section class="wrap_tb_tit">
				<label id="weekToggle"><p class="table_tit">
						<span class="btn_wrap"><span class="ic_ehr ic_close" id="weekToggle"><i class="fas fa-angle-down mr-2"></i></span></span><span id="weekToggle">1 주차</span>
					</p></label>
				<div class="tb_optional" style="float: right">
					<span class="txt" id="weektime1">누적 근무시간 <strong class="cwh">
					<c:if test="${weekWTVO1 eq null}">0h 0m 0s</c:if>
					<c:if test="${weekWTVO1 ne null}">${weekWTVO1.h}h ${weekWTVO1.m}m ${weekWTVO1.s}s</c:if>
					</strong></span>
				</div>
			</section>
			<div class="wrap_tb_shadow" id="day_area" style="display: none;">
				<table id="table" class="workTable">
					<colgroup>
						<col width="50px;">
						<col width="100px;">
						<col width="auto">
						<col width="auto">
						<col width="auto">
					</colgroup>
					<thead>
						<tr>
							<td id="td"></td>
							<td id="td">일자</td>
							<td id="td">업무시작</td>
							<td id="td">업무종료</td>
							<td id="td">총 근무시간</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="mon1"></p>
							</td>
							<td id="td">월</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week1.mon1)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week1.mon1)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week11" value="${week1.mon1}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week11,5,10))}">
										<span id="tt1"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="tue1"></p>
							</td>
							<td id="td">화</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week1.tue1)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week1.tue1)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week11" value="${week1.tue1}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week11,5,10))}">
										<span id="tt2"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="wed1"></p>
							</td>
							<td id="td">수</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week1.wed1)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week1.wed1)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week11" value="${week1.wed1}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week11,5,10))}">
										<span id="tt3"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="thur1"></p>
							</td>
							<td id="td">목</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week1.thur1)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week1.thur1)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week11" value="${week1.thur1}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week11,5,10))}">
										<span id="tt4"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="fri1"></p>
							</td>
							<td id="td">금</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week1.fri1)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week1.fri1)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week11" value="${week1.fri1}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week11,5,10))}">
										<span id="tt5"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: blue;" id="sat1"></p>
							</td>
							<td style="color: blue;" id="td">토</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week1.sat1)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week1.sat1)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week11" value="${week1.sat1}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week11,5,10))}">
										<span id="tt6"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: red;" id="sun1"></p>
							</td>
							<td style="color: red;" id="td">일</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week1.sun1)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week1.sun1)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week11" value="${week1.sun1}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week11,5,10))}">
										<span id="tt7"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<section class="wrap_tb_tit">

				<label id="weekToggle"><p class="table_tit">
						<span class="btn_wrap"><span class="ic_ehr ic_close" id="weekToggle2"><i class="fas fa-angle-down mr-2"></i></span></span><span id="weekToggle2">2 주차</span>
					</p></label>
				<div class="tb_optional" style="float: right">
					<span class="txt" id="weektime2">누적 근무시간 <strong class="cwh">
						<c:if test="${weekWTVO2 eq null}">0h 0m 0s</c:if>
					<c:if test="${weekWTVO2 ne null}">${weekWTVO2.h}h ${weekWTVO2.m}m ${weekWTVO2.s}s</c:if>
					</strong></span>
				</div>
			</section>
			<div class="wrap_tb_shadow" id="day_area2" style="display: none;">
				<table id="table" class="workTable">
					<colgroup>
						<col width="50px;">
						<col width="100px;">
						<col width="auto">
						<col width="auto">
						<col width="auto">
					</colgroup>
					<thead>
						<tr>
							<td id="td"></td>
							<td id="td">일자</td>
							<td id="td">업무시작</td>
							<td id="td">업무종료</td>
							<td id="td">총 근무시간</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="mon2"></p>
							</td>
							<td id="td">월</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week2.mon2)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week2.mon2)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week22" value="${week2.mon2}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week22,5,10))}">
										<span id="tt1"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="tue2"></p>
							</td>
							<td id="td">화</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week2.tue2)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week2.tue2)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week22" value="${week2.tue2}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week22,5,10))}">
										<span id="tt2"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="wed2"></p>
							</td>
							<td id="td">수</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week2.wed2)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week2.wed2)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week22" value="${week2.wed2}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week22,5,10))}">
										<span id="tt3"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="thur2"></p>
							</td>
							<td id="td">목</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week2.thur2)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week2.thur2)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total"> 
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week22" value="${week2.thur2}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week22,5,10))}">
										<span id="tt4"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="fri2"></p>
							</td>
							<td id="td">금</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week2.fri2)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week2.fri2)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week22" value="${week2.fri2}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week22,5,10))}">
										<span id="tt5"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: blue;" id="sat2"></p>
							</td>
							<td style="color: blue;" id="td">토</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week2.sat2)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week2.sat2)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week22" value="${week2.sat2}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week22,5,10))}">
										<span id="tt6"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: red;" id="sun2"></p>
							</td>
							<td style="color: red;" id="td">일</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week2.sun2)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week2.sun2)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week22" value="${week2.sun2}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week22,5,10))}">
										<span id="tt7"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<section class="wrap_tb_tit">

				<label id="weekToggle"><p class="table_tit">
						<span class="btn_wrap"><span class="ic_ehr ic_close" id="weekToggle3"><i class="fas fa-angle-down mr-2"></i></span></span><span id="weekToggle3">3 주차</span>
					</p></label>
				<div class="tb_optional" style="float: right">
					<span class="txt" id="weektime3">누적 근무시간 <strong class="cwh">
					<c:if test="${weekWTVO3 eq null}">0h 0m 0s</c:if>
					<c:if test="${weekWTVO3 ne null}">${weekWTVO3.h}h ${weekWTVO3.m}m ${weekWTVO3.s}s</c:if>
					</strong></span>
				</div>
			</section>
			<div class="wrap_tb_shadow" id="day_area3" style="display: none;">
				<table id="table" class="workTable">
					<colgroup>
						<col width="50px;">
						<col width="100px;">
						<col width="auto">
						<col width="auto">
						<col width="auto">
					</colgroup>
					<thead>
						<tr>
							<td id="td"></td>
							<td id="td">일자</td>
							<td id="td">업무시작</td>
							<td id="td">업무종료</td>
							<td id="td">총 근무시간</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="mon3"></p>
							</td>
							<td id="td">월</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week3.mon3)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week3.mon3)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week33" value="${week3.mon3}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week33,5,10))}">
										<span id="tt1"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="tue3"></p>
							</td>
							<td id="td">화</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week3.tue3)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week3.tue3)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week33" value="${week3.tue3}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week33,5,10))}">
										<span id="tt2"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="wed3"></p>
							</td>
							<td id="td">수</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week3.wed3)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week3.wed3)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week33" value="${week3.wed3}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week33,5,10))}">
										<span id="tt3"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="thur3"></p>
							</td>
							<td id="td">목</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week3.thur3)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week3.thur3)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week33" value="${week3.thur3}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week33,5,10))}">
										<span id="tt4"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="fri3"></p>
							</td>
							<td id="td">금</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week3.fri3)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week3.fri3)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week33" value="${week3.fri3}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week33,5,10))}">
										<span id="tt5"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: blue;" id="sat3"></p>
							</td>
							<td style="color: blue;" id="td">토</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week3.sat3)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week3.sat3)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week33" value="${week3.sat3}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week33,5,10))}">
										<span id="tt6"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: red;" id="sun3"></p>
							</td>
							<td style="color: red;" id="td">일</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week3.sun3)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week3.sun3)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week33" value="${week3.sun3}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week33,5,10))}">
										<span id="tt7"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<section class="wrap_tb_tit">

				<label id="weekToggle"><p class="table_tit">
						<span class="btn_wrap"><span class="ic_ehr ic_close" id="weekToggle4"><i class="fas fa-angle-down mr-2"></i></span></span><span id="weekToggle4">4 주차</span>
					</p></label>
				<div class="tb_optional" style="float: right">
					<span class="txt" id="weektime4">누적 근무시간 <strong class="cwh">
						<c:if test="${weekWTVO4 eq null}">0h 0m 0s</c:if>
					<c:if test="${weekWTVO4 ne null}">${weekWTVO4.h}h ${weekWTVO4.m}m ${weekWTVO4.s}s</c:if>
					</strong></span>
				</div>
			</section>
			<div class="wrap_tb_shadow" id="day_area4" style="display: none;">
				<table id="table" class="workTable">
					<colgroup>
						<col width="50px;">
						<col width="100px;">
						<col width="auto">
						<col width="auto">
						<col width="auto">
					</colgroup>
					<thead>
						<tr>
							<td id="td"></td>
							<td id="td">일자</td>
							<td id="td">업무시작</td>
							<td id="td">업무종료</td>
							<td id="td">총 근무시간</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="mon4"></p>
							</td>
							<td id="td">월</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week4.mon4)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week4.mon4)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week44" value="${week4.mon4}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week44,5,10))}">
										<span id="tt1"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="tue4"></p>
							</td>
							<td id="td">화</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week4.tue4)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week4.tue4)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week44" value="${week4.tue4}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week44,5,10))}">
										<span id="tt2"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="wed4"></p>
							</td>
							<td id="td">수</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week4.wed4)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week4.wed4)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week44" value="${week4.wed4}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week44,5,10))}">
										<span id="tt3"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="thur4"></p>
							</td>
							<td id="td">목</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week4.thur4)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week4.thur4)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week44" value="${week4.thur4}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week44,5,10))}">
										<span id="tt4"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="fri4"></p>
							</td>
							<td id="td">금</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week4.fri4)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week4.fri4)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week44" value="${week4.fri4}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week44,5,10))}">
										<span id="tt5"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: blue;" id="sat4"></p>
							</td>
							<td style="color: blue;" id="td">토</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week4.sat4)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week4.sat4)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week44" value="${week4.sat4}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week44,5,10))}">
										<span id="tt6"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: red;" id="sun4"></p>
							</td>
							<td style="color: red;" id="td">일</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week4.sun4)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week4.sun4)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week44" value="${week4.sun4}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week44,5,10))}">
										<span id="tt7"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<section class="wrap_tb_tit">

				<label id="weekToggle"><p class="table_tit">
						<span class="btn_wrap"><span class="ic_ehr ic_close" id="weekToggle5"><i class="fas fa-angle-down mr-2"></i></span></span><span id="weekToggle5">5 주차</span>
					</p></label>
				<div class="tb_optional" style="float: right">
					<span class="txt" id="weektime5">누적 근무시간 <strong class="cwh">
					<c:if test="${weekWTVO5 eq null}">0h 0m 0s</c:if>
					<c:if test="${weekWTVO5 ne null}">${weekWTVO5.h}h ${weekWTVO5.m}m ${weekWTVO5.s}s</c:if>
					</strong>
					</span>
				</div>
			</section>
			<div class="wrap_tb_shadow" id="day_area5" style="display: none;">
				<table id="table" class="workTable">
					<colgroup>
						<col width="50px;">
						<col width="100px;">
						<col width="auto">
						<col width="auto">
						<col width="auto">
					</colgroup>
					<thead>
						<tr>
							<td id="td"></td>
							<td id="td">일자</td>
							<td id="td">업무시작</td>
							<td id="td">업무종료</td>
							<td id="td">총 근무시간</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="mon5"></p>
							</td>
							<td id="td">월</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week5.mon5)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week5.mon5)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week55" value="${week5.mon5}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week55,5,10))}">
										<span id="tt1"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="tue5"></p>
							</td>
							<td id="td">화</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week5.tue5)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week5.tue5)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week55" value="${week5.tue5}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week55,5,10))}">
										<span id="tt2"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="wed5"></p>
							</td>
							<td id="td">수</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week5.wed5)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week5.wed5)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week55" value="${week5.wed5}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week55,5,10))}">
										<span id="tt3"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="thur5"></p>
							</td>
							<td id="td">목</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week5.thur5)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week5.thur5)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week55" value="${week5.thur5}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week55,5,10))}">
										<span id="tt4"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px" id="fri5"></p>
							</td>
							<td id="td">금</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week5.fri5)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week5.fri5)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week55" value="${week5.fri5}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week55,5,10))}">
										<span id="tt5"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: blue;" id="sat5"></p>
							</td>
							<td style="color: blue;" id="td">토</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week5.sat5)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week5.sat5)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week55" value="${week5.sat5}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week55,5,10))}">
										<span id="tt6"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td id="td">
								<p style="float: right !important; margin-bottom: 0px; color: red;" id="sun5"></p>
							</td>
							<td style="color: red;" id="td">일</td>
							<td id="td">
								<c:forEach var="day" items="${list}">
									<c:if test="${fn:contains(day.tm, week5.sun5)}">
										<c:set var="date" value="${day.tm}" />
												${fn:substring(date,10,19) }	
										</c:if>
								</c:forEach>
							</td>
							<td id="td">
								<c:forEach var="day2" items="${list2}">
									<c:if test="${fn:contains(day2.tm, week5.sun5)}">
										<c:set var="date" value="${day2.tm}" />
											${fn:substring(date,10,19) }
										</c:if>
								</c:forEach>
							</td>
							<td id="td" class="total">
								<c:forEach var="workAccmltTm" items="${list3}">
									<c:set var="week55" value="${week5.sun5}" />
									<c:if test="${fn:contains(workAccmltTm.tm, fn:substring(week55,5,10))}">
										<span id="tt7"> <fmt:parseNumber var="hour" integerOnly="true" value="${workAccmltTm.workAccmltTm/3600-(workAccmltTm.workAccmltTm/3600%1)}" /> <span id="h1"><fmt:formatNumber value="${hour}" /></span>H <fmt:parseNumber var="minute" integerOnly="true" value="${60*(workAccmltTm.workAccmltTm/3600%1)-(60*(workAccmltTm.workAccmltTm/3600%1)%1)}" /> <span id="m1"><fmt:formatNumber value="${minute}" /></span>M
										</span>
									</c:if>
								</c:forEach>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	//자바스크립트로 입력받은 날짜가 해당 달의 몇 주차인지 구하는 함수 
	function weekNumberByMonth(dateFormat) {
		  const inputDate = new Date(dateFormat);
		 
		  // 인풋의 년, 월
		  let year = inputDate.getFullYear();
		  let month = inputDate.getMonth() + 1;
		 
		  // 목요일 기준 주차 구하기
		  const weekNumberByThurFnc = (paramDate) => {
		    const year = paramDate.getFullYear();
		    const month = paramDate.getMonth();
		    const date = paramDate.getDate();
		 
		    // 인풋한 달의 첫 날과 마지막 날의 요일
		    const firstDate = new Date(year, month, 1);
		    const lastDate = new Date(year, month+1, 0);
		    const firstDayOfWeek = firstDate.getDay() === 0 ? 7 : firstDate.getDay();
		    const lastDayOfweek = lastDate.getDay();
		 
		    // 인풋한 달의 마지막 일
		    const lastDay = lastDate.getDate();
		 
		    // 첫 날의 요일이 금, 토, 일요일 이라면 true
		    const firstWeekCheck = firstDayOfWeek === 5 || firstDayOfWeek === 6 || firstDayOfWeek === 7;
		    // 마지막 날의 요일이 월, 화, 수라면 true
		    const lastWeekCheck = lastDayOfweek === 1 || lastDayOfweek === 2 || lastDayOfweek === 3;
		 
		    // 해당 달이 총 몇주까지 있는지
		    const lastWeekNo = Math.ceil((firstDayOfWeek - 1 + lastDay) / 7);
		 
		    // 날짜 기준으로 몇주차 인지
		    let weekNo = Math.ceil((firstDayOfWeek - 1 + date) / 7);
		 
		    // 인풋한 날짜가 첫 주에 있고 첫 날이 월, 화, 수로 시작한다면 'prev'(전달 마지막 주)
		    if(weekNo === 1 && firstWeekCheck) weekNo = 'prev';
		    // 인풋한 날짜가 마지막 주에 있고 마지막 날이 월, 화, 수로 끝난다면 'next'(다음달 첫 주)
		    else if(weekNo === lastWeekNo && lastWeekCheck) weekNo = 'next';
		    // 인풋한 날짜의 첫 주는 아니지만 첫날이 월, 화 수로 시작하면 -1;
		    else if(firstWeekCheck) weekNo = weekNo -1;
		 
		    return weekNo;
		  };
		 
		  // 목요일 기준의 주차
		  let weekNo = weekNumberByThurFnc(inputDate);
		 
		  // 이전달의 마지막 주차일 떄
		  if(weekNo === 'prev') {
		    // 이전 달의 마지막날
		    const afterDate = new Date(year, month-1, 0);
		    year = month === 1 ? year - 1 : year;
		    month = month === 1 ? 12 : month - 1;
		    weekNo = weekNumberByThurFnc(afterDate);
		  }
		  // 다음달의 첫 주차일 때
		  if(weekNo === 'next') {
		    year = month === 12 ? year + 1 : year;
		    month = month === 12 ? 1 : month + 1;
		    weekNo = 1;
		  }
		 
// 		  return {year, month, weekNo};
			return weekNo;
		}

		//현재 시각
		var now = new Date();

		// 년/월/일/요일
		var Time = (now.getFullYear()) + "." + (now.getMonth() + 1) + "." + (now.getDate());
		$("#time").text(Time);
		
		var year = Time.substr(0,4);
		var month = Number(Time.substr(5,2));
		if(month < 10) {
			month = "0" + Time.substr(5,1)
		}
		var date = Time.substr(7,2);
		var date1 = year + "." + month + "." + date;
		var dayInt = now.getDay();

		
		
		var startDayOfMonth = new Date(year, month-1, 1);
		var endDayOfMonth = new Date(year, month, 0);
		
		//이번달의 시작일
		var startDayOfDay = startDayOfMonth.getDate();
		//이번달의 종료일
		var endDayOfDay = endDayOfMonth.getDate();
		
		//console.log(startDayOfMonth + ", " + endDayOfMonth + ", " + endDayOfDay + ", 오늘의 주차 : " + weekNumberByMonth('2021-09-01'));
		var a = [];
		var count =1
		for(var i=1;i<=endDayOfDay;i++){
			var mm = month;
			if(mm<10){
				mm = "0" + mm;
			}
			if(i<10){
				count = "0" + i;
			}
 			 if(i%7==1){
				//console.log(year + "-" + mm + "-" + count + ", " + weekNumberByMonth(year + "-" + mm + "-" + i));
				a[i] = String(year) + "-" + String(mm) + "-" + count;
 			 } 
			count ++;
		}
		//console.log(a);
		var weeks= [];
		for(var i=0; i<=4; i++){
			//console.log("a" + a[i+8]);
							
				weeks[i] = a[i*7+1];
			
 			//console.log("weeks : " + weeks[i]);
		}

		Date.prototype.getWeek = function(start)
		{
		var weeksF = [];
		
		for(var i=0; i<5; i++){
		 //Calcing the starting point
		    start = start || 0;
		    var today1 = new Date(weeks[i]);
		    var today2 = new Date(weeks[i]);
		    var today3 = new Date(weeks[i]);
		    var today4 = new Date(weeks[i]);
		    var today5 = new Date(weeks[i]);
		    var today6 = new Date(weeks[i]);
		    var today7 = new Date(weeks[i]);
		    //console.log(today1);
		    //console.log("today: " + today1);
		    var day = today1.getDay() - start;
		    var date = today1.getDate() - day;
		    //console.log("start: " + start);
		    //console.log("day: " + day);
		    //console.log("date: " + date);
		    
		    var mon = String(new Date(today1.setDate(date+1))).substr(8,2);
		    //console.log("mon : " + mon);
		    var tue = String(new Date(today2.setDate(date+2))).substr(8,2);
		    //console.log("tue : " + tue);
		    var wed = String(new Date(today3.setDate(date+3))).substr(8,2);
		    //console.log("wed : " + wed);
		    var thur = String(new Date(today4.setDate(date+4))).substr(8,2);
		    //console.log("thur : " + thur);
		    var fri = String(new Date(today5.setDate(date+5))).substr(8,2);
		    //console.log("fri : " + fri);
		    var sat = String(new Date(today6.setDate(date+6))).substr(8,2);
		    //console.log("sat : " + sat);
		    var sun = String(new Date(today7.setDate(date+7))).substr(8,2);
		    //console.log("sun : " + sun);
			//console.log(mon);
			var weeks1 = [mon, tue, wed, thur, fri, sat, sun];
			weeksF.push(weeks1);
		}
		return weeksF;
		  	
		}
		 
		// test code
		var Dates = new Date().getWeek();
		
		for(var i=1; i<6; i++){
	 		$("#mon" + i).text(Dates[i-1][0]);
			$("#tue" + i).text(Dates[i-1][1]);
			$("#wed" + i).text(Dates[i-1][2]);
			$("#thur" + i).text(Dates[i-1][3]);
			$("#fri" + i).text(Dates[i-1][4]);
			$("#sat"+ i).text(Dates[i-1][5]);
			$("#sun" + i).text(Dates[i-1][6]); 
		}
		// 년/월/일/요일/시/분/초 구하기
		function fn_getFullTime() {
			// 요일(숫자)을 요일(한글)로 바꾸기
			var week = new Array("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일");
			var year1 = now.getFullYear();
			var month1 = now.getMonth() + 1;
			var date1 = now.getDate();
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

			var currentDay = year1 + "년 " + month1 + "월 " + date1 + "일 " + "("	+ day + ") ";

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
// 		function lt() {
// 			date--;
// 			if (date == 0) {
// 				if (month == 4 || month == 6 || month == 9 || month == 11) {
// 					date = 30;
// 				} else {
// 					date = 31;
// 					spWorkTime
// 				}
// 				month--;
// 			}
// 			if (month == 13) {
// 				month == 1;
// 				year--;
// 			}
// 			date1 = year + "." + month + "." + date;
// 			var curTime = date1
// 			$("#time").text(curTime);
// 		}

// 		function gt() {
// 			date++;
// 			if (month == 4 || month == 6 || month == 9 || month == 11) {
// 				if (date == 31) {
// 					date = 1;
// 					month++;
// 				}
// 			}
// 			if (date == 32) {
// 				date = 1;
// 				month++;
// 			}
// 			if (month == 0) {
// 				month = 12;
// 				year++;
// 			}
// 			date1 = year + "." + month + "." + date;
// 			var curTime = date1
// 			$("#time").text(curTime);

// 		}

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

// 		$("#btnStartWork").click(function() {
// 			console.log("111111");
// 			var now = new Date();

// 			// 시/분/초
// 			var hour = now.getHours();
// 			var min = now.getMinutes();
// 			var sec = now.getSeconds();

// 			if (hour < 10) {
// 				hour = "0" + hour;
// 			}
// 			if (min < 10) {
// 				min = "0" + min;
// 			}
// 			if (sec < 10) {
// 				sec = "0" + sec;
// 			}

// 			var currentTime = hour + ":" + min + ":" + sec;
// 			var id = ${empVo.empno};
// 			$.ajax({
// 				url : "/ehr/insert",
// 				type : 'POST',
// 				data : {
// 					"empNo" : "${empVo.empno}",
// 					"tm3" : currentTime,
// 					"rcordCode" : "D101"
// 				},
// 				success : function(data) {
// 					$("#spWorkTime").text(currentTime);
// 					//console.log(rcordCode);
// 					$("#empNo").val(id);
// 					document.getElementById('fm').submit(); 
// 				}

// 			});

// 		});
// 		$("#btnEndWork").click(function() {
// 			var now = new Date();

// 			// 시/분/초
// 			var hour = now.getHours();
// 			var min = now.getMinutes();
// 			var sec = now.getSeconds();

// 			if (hour < 10) {
// 				hour = "0" + hour;
// 			}
// 			if (min < 10) {
// 				min = "0" + min;
// 			}
// 			if (sec < 10) {
// 				sec = "0" + sec;
// 			}

// 			var currentTime = hour + ":" + min + ":" + sec;
// 			var id = ${empVo.empno};
// 			$.ajax({
// 				url : "/ehr/insert",
// 				type : 'POST',
// 				data : {
// 					"empNo" : "${empVo.empno}",
// 					"tm3" : currentTime,
// 					"rcordCode" : "D102"
// 				},
// 	            success : function(data){
// 	            	$("#spWorkTimeEnd").text(currentTime);
// 	            	$("#empNo").val(id);
// 					document.getElementById('fm').submit();
// 	            }
// 			});

// 		});
		
// 		 if($("#spWorkTime") != ""){
// 			$("#btnStartWork").attr("disabled", true);
// 			$("#btnEndWork").attr("disabled", false);
// 		}
// 		if( $("#spWorkTimeEnd") != "[object HTMLCollection]"){
// 			$("#btnStartWork").attr("disabled", true);
// 			$("#btnEndWork").attr("disabled", true);
// 		} 
		
		$("#weekToggle").click(function() {
			$("#day_area").slideToggle();	
		});
		$("#weekToggle2").click(function() {
			$("#day_area2").slideToggle();
		});
		$("#weekToggle3").click(function() {
			$("#day_area3").slideToggle();
		});
		$("#weekToggle4").click(function() {
			$("#day_area4").slideToggle();
		});
		$("#weekToggle5").click(function() {
			$("#day_area5").slideToggle();
		});
		
		
		// 쿠키 설정
		var _rolling_interval = 10;
		$(document).ready(function(){
		////////////////////////////////////////

			function setCookie(cName, cValue, expiredays)
			{
				 var today = new Date();
				 today.setDate( today.getDate() + expiredays );
				 document.cookie = cName + "=" + escape( cValue ) + "; path=/; expires=" + today.toGMTString() + ";"
			}
			
			function getCookie()
			{
				// userid 쿠키에서 id 값을 가져온다.
				var cook = document.cookie + ";";
				var key = 'hcn_total_dashbd';
				var idx = cook.indexOf(key, 0);
				var val = "";

				if(idx != -1)
				{
					cook = cook.substring(idx, cook.length);
					begin = cook.indexOf("=", 0) + 1;
					end = cook.indexOf(";", begin);
					val = unescape( cook.substring(begin, end) );
				}

				// 가져온 쿠키값이 있으면
				if(val!= "")
				{
					$("#select").val( val );
					_rolling_interval = val;
				}else{
					$("#select").val( _rolling_interval );
				}
			}
			getCookie();


			$("#select").change(function(e){
				var _rolling_interval = $(this).val();
				setCookie("hcn_total_dashbd", _rolling_interval, 7);

				$("time").text( _rolling_interval );
			});
			
			$("time").text( _rolling_interval );

		////////////////////////////////////////
		
		});
		
		var weekWTVO1h = 0;
		var weekWTVO2h = 0;
		var weekWTVO3h = 0;
		var weekWTVO4h = 0;
		var weekWTVO5h = 0;
		
		var weekWTVO1m = 0;
		var weekWTVO2m = 0;
		var weekWTVO3m = 0;
		var weekWTVO4m = 0;
		var weekWTVO5m = 0;
		
		var weekWTVO1s = 0;
		var weekWTVO2s = 0;
		var weekWTVO3s = 0;
		var weekWTVO4s = 0;
		var weekWTVO5s = 0;
		
		if($("#weektime1").text().indexOf("0h 0m 0s") == -1) {
			weekWTVO1h = "${weekWTVO1.h}";
			weekWTVO1m = "${weekWTVO1.m}";
			weekWTVO1s = "${weekWTVO1.s}";
		}
		if($("#weektime2").text().indexOf("0h 0m 0s") == -1) {
			weekWTVO2h = "${weekWTVO2.h}";
			weekWTVO2m = "${weekWTVO2.m}";
			weekWTVO2s = "${weekWTVO2.s}";
		}
		if($("#weektime3").text().indexOf("0h 0m 0s") == -1) {
			weekWTVO3h = "${weekWTVO3.h}";
			weekWTVO3m = "${weekWTVO3.m}";
			weekWTVO3s = "${weekWTVO3.s}";
		}
		if($("#weektime4").text().indexOf("0h 0m 0s") == -1) {
			weekWTVO4h = "${weekWTVO4.h}";
			weekWTVO4m = "${weekWTVO4.m}";
			weekWTVO4s = "${weekWTVO4.s}";
		}
		if($("#weektime5").text().indexOf("0h 0m 0s") == -1) {
			weekWTVO5h = "${weekWTVO5.h}";
			weekWTVO5m = "${weekWTVO5.m}";
			weekWTVO5s = "${weekWTVO5.s}";
		}
		
		wh = parseInt(weekWTVO1h) + parseInt(weekWTVO2h) + parseInt(weekWTVO3h) + parseInt(weekWTVO4h) + parseInt(weekWTVO5h);
		wm = parseInt(weekWTVO1m) + parseInt(weekWTVO2m) + parseInt(weekWTVO3m) + parseInt(weekWTVO4m) + parseInt(weekWTVO5m);
		ws = parseInt(weekWTVO1s) + parseInt(weekWTVO2s) + parseInt(weekWTVO3s) + parseInt(weekWTVO4s) + parseInt(weekWTVO5s);
		
		$("#month").text( wh + "h " + wm + "m " + ws + "s")
	</script>
