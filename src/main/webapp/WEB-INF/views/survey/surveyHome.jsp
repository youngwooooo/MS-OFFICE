<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	/* 설문 홈 css*/
	.surveyHomeTitle, .surveyLately, .surveyLately .surveyLatelyTitle {padding: 20px 20px 20px 10px;}
	.menu-name h3, .surveyHomeTitle h3 {font-size: 1.5rem;}
	.runSurveyList {padding: 10px;}
	.runSurveyList .noneSurvey {text-align: center; font-size: 0.9rem; color: #888; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd; padding: 120px;} 
	.runSurveyList .noneSurvey p, .surveyLately .emptySurveyLatelyList p {margin: 0px;}
	.surveyLately .surveyLatelyTitle p {margin: 0px; font-weight: bold;}
	.surveyLately .emptySurveyLatelyList {text-align: center; padding: 120px; border-bottom: 1px solid #dddddd; font-size: 0.9rem; color: #888;}
	.row .divSurvey {border: 1px solid #ddd; border-radius: 8px; padding: 20px; margin-bottom: 15px;}
	.row .divSurvey:hover {box-shadow: 0px 5px 5px #dddddd;}
	.row .divSurvey header {padding-bottom: 15px;}
	.row .divSurvey header .surveyCheckStatus {border: 1px solid #ff616b; background-color: #ff616b; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.row .divSurvey .surveyTitle {margin: 0px; text-overflow: ellipsis; max-width: 250px; white-space: nowrap; overflow: hidden;}
	.row .divSurvey .surveySubject {padding-bottom: 5px;}
	.row .divSurvey .surveySubject span {font-size: 0.9rem; color: #888; padding-left: 3px;}
	.row .divSurvey .surveyContent .table tr {border-color: white;}
	.row .divSurvey .surveyContent .table td {border-color: white; font-size: 0.8rem; padding: 3px;}
	.row .divSurvey .surveyContent .table td > span {color: #888;}
	.row .divSurvey .divGoSurvey {text-align: center; border-top: 1px dashed #dddddd;}
	.row .divSurvey .divGoSurvey #btnGoSurvey {border: 2px solid #55beff; font-size: 0.8rem; color: black; border-radius: 20px; width: 100%; margin-top: 20px; height: 50px;}
	.row .divSurvey .divGoSurvey #btnGoSurvey:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.table td {border-color: white;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody .surveyCheckStatus {border: 1px solid #ff616b; background-color: #ff616b; color: white; padding: 4px 15px 4px 15px; font-size: 12px; font-weight: bold; border-radius: 3px; display: inline-block; width: 80px;}
	.table tbody a {color: black;}
	.table tbody .surveyDate {font-size: 1rem;}
</style>
<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h3><a href="/survey/home">설문</a></h3></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/survey/create'"><span>설문 작성</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>설문</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/survey/run?currentPage=1&selSearch=&keyword="><span>진행중인 설문</span></a>
					</li>
					<li>
						<a href="/survey/done?currentPage=1&selSearch=&keyword="><span>마감된 설문</span></a>
					</li>
					<li>
						<a href="/survey/mine?currentPage=1&selSearch=&keyword="><span>내가 만든 설문</span></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="lefr-menu-list-content">
		<div class="surveyHomeTitle">
			<h3>설문 홈</h3>
		</div>
		<!-- 미참여한 모든 설문을 최신순으로 조회(4개) 시작 -->
		<div class="row runSurveyList">
		<c:if test="${not empty surveyListRspnsN}">
		<c:forEach var="survey" items="${surveyListRspnsN}">
			<div class="col-sm-3">
				<div class="divSurvey">
					<header><span class="surveyCheckStatus">미참여</span></header>
					<div class="surveySubject">
						<h4 class="surveyTitle">${survey.qustnrSj}</h4>
						<span class="surveyDate">${survey.beginDe} ~ ${survey.endDe}</span>
					</div>
					<div class="surveyContent">
						<table class="table">
							<colgroup>
								<col width="80px">
								<col width="auto">
							</colgroup>
							<tr>
								<td><span>작성자</span></td>
								<td>${survey.wrterNm}&nbsp;${survey.ofcpsNm}</td>
							</tr>
							<tr>
								<td><span>설문결과</span></td>
								<c:if test="${survey.othbcAt == 'Y'}">
								<td>공개</td>
								</c:if>
								<c:if test="${survey.othbcAt == 'N'}">
								<td>비공개</td>
								</c:if>
							</tr>
						</table>
						<div class="divGoSurvey">
							<button id="btnGoSurvey" type="button" class="btn" onclick="javascript:location.href='/survey/detail/${survey.qustnrNo}'">설문 참여</button>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			</c:if>
			<c:if test="${empty surveyListRspnsN}">
				<div class="col-sm-12 noneSurvey">
					<p>참여할 설문이 없습니다.</p>
				</div>
			</c:if>
		</div>
		<!-- 미참여한 모든 설문을 최신순으로 조회(4개) 끝 -->
		
		<!-- 작성된 설문을 최신순으로 조회(15개) 시작 -->
		<div class="surveyLately">
			<div class="surveyLatelyTitle">
				<p>최근에 작성된 설문</p>
			</div>
			<div class="surveyLatelyList">
				<table class="table">
					<colgroup>
						<col width="150px">
						<col width="auto">
						<col width="250px">
						<col width="150px">
					</colgroup>
					<thead>
						<tr style="text-align: center;">
							<td>상태</td>
							<td>설문 제목</td>
							<td>설문 기간</td>
							<td>작성자</td>
						</tr>
					</thead>
					<tbody>
					<c:if test="${not empty surveyLatelyList}">
					<c:forEach var="lately" items="${surveyLatelyList}">
						<tr style="text-align: center;">
							<c:if test="${lately.rspnsAt eq 'N'}">
							<td><span class="surveyCheckStatus">미참여</span></td>
							</c:if>
							<c:if test="${lately.rspnsAt eq 'Y'}">
							<td><span class="surveyCheckStatus" style="border-color: #888; background-color: #888;">참여완료</span></td>
							</c:if>
							<td style="text-align: left;"><a href="/survey/detail/${lately.qustnrNo}"><span class="surveyTitle">${lately.qustnrSj}</span></a></td>
							<td><span class="surveyDate">${lately.beginDe} ~ ${lately.endDe}</span></td>
							<td><span class="surveyWriter">${lately.wrterNm}&nbsp;${lately.ofcpsNm}</span></td>
						</tr>
					</c:forEach>
					</c:if>
					<c:if test="${empty surveyLatelyList}">
						<tr>
							<td colspan="4" class="emptySurveyLatelyList">작성된 설문이 없습니다.</td>
						</tr>
					</c:if>
					</tbody>
				</table>

			</div>
		</div>
		<!-- 작성된 설문을 최신순으로 조회(15개) 끝 -->
	</div>
</div>