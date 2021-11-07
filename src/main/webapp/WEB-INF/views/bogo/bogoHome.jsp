<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 공통 css -->
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
	.row .divSurvey .surveyTitle {margin: 0px;}
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
	.table tbody .surveyCheckStatus {border: 1px solid #ff616b; background-color: #ff616b; color: white; padding: 4px 15px 4px 15px; font-size: 12px; font-weight: bold; border-radius: 3px;}
	.table tbody a {color: black;}
	.table tbody .surveyDate {font-size: 1rem;}
	#btCreateBoard {width: 100%; height: 60px; border-color: black; background-color: white;}
   #btCreateBoard:hover {box-shadow: 0px 5px 15px #dddddd;}
   #btCreateBoard > span {font-size: 1rem;}
</style>

<div id="body">
   <div class="left-menu">
      <div class="left-menu-list">
         <div class="menu-name"><h2><a href="/bogo/home">보고</a></h2></div>
         <div class="menu-create">
            <a href="/bogo/add"><button id="btCreateBoard" type="button" class="btn btn-default" >+보고서 추가</button></a>
         </div>
         <div class="menu-list">
            <a href="" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>MS그룹 보고서</strong></a>
            <ul class="menu-list-ul">
               <li>
                  <a href="/bogo/list"><span>전체 보고서</span></a>
               </li>
                <li>
                  <a href="/bogo/bogoing"><span>보고중인 보고서</span></a>
               </li>
                <li>
                  <a href="/bogo/waitmenu"><span>승인 대기 보고서</span></a>
               </li>
                <li>
                  <a href="/bogo/ApproveMenu"><span>완료된 보고서</span></a>
               </li>
            </ul>
         </div>
     
      </div>
   </div>
         </div>
  	<div class="lefr-menu-list-content">
		<div class="surveyHomeTitle">
			<h3>보고 홈</h3>
		</div>
		<div class="row runSurveyList" >
		<c:forEach var="list" items="${select}">
			<div class="col-sm-3" >
				<div class="divSurvey">
				<script>
				
				</script>
					<header><c:if test="${fn:contains(list.reportrNm, empVo.empno)}">
							<td><span class="surveyCheckStatus">보고필</span></td>
							</c:if>
							<c:if test="${not fn:contains(list.reportrNm, empVo.empno)}">
							<td><span class="surveyCheckStatus" style="border-color: #888; background-color: #888;">권한없음</span></td>
							</c:if></header>
					<div class="surveySubject">
						<h4 class="surveyTitle">${list.sj}</h4>
					</div>
					<div class="surveyContent">
						<table class="table">
							<colgroup>
								<col width="80px">
								<col width="auto">
							</colgroup>
							<tr>
								<td style="width: 150px;"><span>보고자 </span>&nbsp;&nbsp;<c:set var="count" value="0" />
									<c:forEach var="bogoza" items="${bogozaList}">
										<c:set var="listNo" value="${bogoza.reprtListNo}" />
										<c:if test="${listNo eq list.reprtListNo}">
											 <c:if test="${count eq 0}">
											 	<c:out value="${bogoza.reportrNm}" />
											 </c:if>
											 <c:if test="${count ne 0}">
											 	<c:out value=", ${bogoza.reportrNm}" />
											 </c:if>
											 <c:if test="${empVo.empno eq bogoza.reportrEmpno}">
											 	<c:set var="bogozaChk" value="true"/>
											 </c:if>
											 <c:set var="count" value="${count + 1}" />
										</c:if>
								</c:forEach>
									</td>
							</tr>
							<tr>
								<td><span>부서</span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${list.department}
								</td>
							</tr>
								<tr>
								<td><span>보고일자</span>
								&nbsp;&nbsp;&nbsp;&nbsp;${list.writngTm2}</td>
							</tr>
		
						</table>
						<div class="divGoSurvey"><c:if test="${bogozaChk eq true }">
							<button id="btnGoSurvey" type="button" class="btn" onclick="javascript:location.href='/bogo/insert?reprtListNo=${list.reprtListNo}'">보고하기</button>
						<c:set var="bogozaChk" value="false"/>
						</c:if>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			</div>
		<div class="surveyLately">
			<div class="surveyLatelyTitle">
				<p>최근 생성된 보고서</p>
			</div>
			<div class="surveyLatelyList">
				<table class="table">
					<colgroup>
						<col width="200px">
						<col width="200px">
						<col width="200px">
						<col width="200px">
					</colgroup>
					<thead>
						<tr>
							<td>상태</td>
							<td>부서</td>
							<td>제목</td>
							<td>일자</td>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach var="list" items="${select}" end="9">
						<tr>
							<c:if test="${empVo.empno ==list.reportrEmpno }">
							<td><span class="surveyCheckStatus">보고필</span></td>
							</c:if>
							<c:if test="${empVo.empno !=list.reportrEmpno }">
							<td><span class="surveyCheckStatus" style="border-color: #888; background-color: #888;">미보고</span></td>
							</c:if>
							<td><span class="surveyTitle">${list.department}</span></td>
							<td><span class="surveyDate">${list.sj}</span></td>
							<td><span class="surveyWriter">${list.writngTm2}</span></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
		</div>
		<!-- 미참여한 모든 설문을 최신순으로 조회(4개) 끝 -->
		