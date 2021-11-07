<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.surveyRunTitle {padding: 30px 20px 30px 10px;}
	.surveyRunTitle h3 {font-size: 1.5rem;}
	.surveyRunList {padding-top: 20px; padding-bottom: 20px;}
	.surveyRunList .emptyRunSurveyList {text-align: center; padding: 120px; border-bottom: 1px solid #dddddd; font-size: 0.9rem; color: #888;}
	.surveyRunList .emptyRunSurveyList {margin: 0px;}
	
	.table td {border-color: white;}
	.table tr {text-align: center;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody .surveyCheckStatus {border: 1px solid #ff616b; background-color: #ff616b; color: white; padding: 4px 15px 4px 15px; font-size: 12px; font-weight: bold; border-radius: 3px; display: inline-block; width: 80px;}
	.table tbody a {color: black;}
	.table tbody .surveyDate {font-size: 1rem;}
	
	.active a {background-color: #efefef;}
	
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
		<div class="surveyRunTitle">
			<h3>진행중인 설문</h3>
		</div>
		<div class="surveyRunList">
			<table class="table">
				<colgroup>
					<col width="80px">
					<col width="150px">
					<col width="auto">
					<col width="250px">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<td>번호</td>
						<td>상태</td>
						<td>설문 제목</td>
						<td>설문 기간</td>
						<td>작성자</td>
					</tr>
				</thead>
				<tbody>
				<c:if test="${not empty runSurveyList}">
				<c:forEach var="run" items="${runSurveyList}">
					<tr>
						<td><span>${run.rnum}</span></td>
						<c:if test="${run.rspnsAt eq 'N' }">
						<td><span class="surveyCheckStatus">미참여</span></td>
						</c:if>
						<c:if test="${run.rspnsAt eq 'Y' }">
						<td><span class="surveyCheckStatus" style="border-color: #888; background-color: #888;">참여완료</span></td>
						</c:if>
						<td style="text-align: left;"><a href="/survey/detail/${run.qustnrNo}"><span class="surveyTitle">${run.qustnrSj}</span></a></td>
						<td><span class="surveyDate">${run.beginDe} ~ ${run.endDe}</span></td>
						<td><span class="surveyWriter">${run.wrterNm}&nbsp;${run.ofcpsNm}</span></td>
					</tr>
				</c:forEach>
				</c:if>
				<c:if test="${empty runSurveyList}">
					<tr>
						<td colspan="5" class="emptyRunSurveyList">진행중인 설문이 없습니다.</td>
					</tr>
				</c:if>	
				</tbody>
			</table>
		</div>
		
		<div class="Paging">
			<ul>
				<c:if test="${param.currentPage  > 5}">
				<li>
					<a href="/survey/run?currentPage=1&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-backward"></i></a>
				</li>
				<li><a href="/survey/run?currentPage=${paging.startPage - 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-left"></i></a></li>
				</c:if>
				
				<c:forEach var="pNo" begin="${paging.startPage}" end="${paging.endPage}" varStatus="stat">
				<c:if test="${pNo > 0}">
				<li class="<c:if test="${pNo == param.currentPage}">active</c:if>">
					<a href="/survey/run?currentPage=${pNo}&selSearch=${param.selSearch}&keyword=${param.keyword}">${pNo}</a>
				</li>
				</c:if>
				</c:forEach>
				
				<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
				<li><a href="/survey/run?currentPage=${paging.startPage + 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-right"></i></a></li>
				<li><a href="/survey/run?currentPage=${paging.totalPages}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-forward"></i></a></li>
				</c:if>
				
			</ul>
		</div>
		
		<div class="listSearch">
		<form method="get" action="/survey/run" name="frmSearch" id="frmSearch">
   			<input type="hidden" name="currentPage" value="1">
				<div class="input-group searchSelect">
					<select name="selSearch" class="form-control">
						<option value="">전체</option>
						<option value=qustnrSj 
							<c:if test="${param.selSearch=='qustnrSj'}">selected</c:if>
						>제목</option>
						<option value="wrterNm" 
							<c:if test="${param.selSearch=='wrterNm'}">selected</c:if>
						>작성자</option>
					</select>
				</div>
				<div class="input-group searchKeyword">
	        		<input type="text" name="keyword" class="form-control" placeholder="검색" value="${param.keyword}">
	        		<div class="input-group-append">
			            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
	        		</div>
	       		</div>
       		</form>
		</div>
	</div>
</div>