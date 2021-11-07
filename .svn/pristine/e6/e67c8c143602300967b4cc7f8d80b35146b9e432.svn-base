<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.statusIng {
	    border: 1px solid #ff616b;
	    background-color: #ff616b;
	    color: white;
	    font-size: 0.7rem;
	    padding: 3px;
	    font-weight: bold;
	    border-radius: 3px;
    }

	.noticeTitle {padding: 20px 20px 10px 20px;}
	.noticeList {padding-bottom: 20px;}
	
	.table td {border-color: white;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody a {color: black;}
	
	.card-text {
    	overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    height: 20px;
    }
    
    .fontsz{font-size: 1.5em;}	
	.float-right{padding-top: 5px;}
    .txtTM {color: #55beff;}
    .fade {
	    position: fixed;
	  	top:0; left: 0; bottom: 0; right: 0;
	  	background: rgba(0, 0, 0, 0.5);
    }
    
    #myModal .modal-dialog {left:224px;}
	.cen {margin-top: 7px;}    
	.btn-primary:hover {background-color: #009dff; border-color: #009dff;}
    .btn-primary {
    	border-color: #55beff;
    	background-color: #55beff;
    }
	
	/* 설문 홈 css*/
	.surveyHomeTitle, .surveyLately {padding: 20px 20px 20px 10px;}
	.menu-name h3, .surveyHomeTitle h3 {font-size: 1.5rem;}
	.runSurveyList {padding: 10px;}
	.modal-content {border: 1px solid #ddd; border-radius: 8px; padding: 20px; margin-bottom: 15px; width:430px;}
	.modal-content .modal-header {display:unset; padding-bottom: 5px;}
	.modal-content .modal-header .status {border: 1px solid #ff616b; background-color: #ff616b; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.modal-content .modal-header .statusEnd {border: 1px solid #787878; background-color: #787878; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.modal-content .communityTitle {margin: 10px 0;}
	.modal-content .communitySubject {padding-bottom: 5px;}
	.modal-content .communitySubject span {font-size: 0.9rem; color: #888; padding-left: 3px;}
	.modal-content .communityContent .table tr {border-color: white;}
	.modal-content .communityContent .table td {border-color: white; font-size: 0.8rem; padding: 3px;}
	.modal-content .communityContent .table td > span {color: #888;}
	.modal-content .divGoSurvey {text-align: center; border-top: 1px dashed #dddddd;}
	.divGoCom #btnGoCom {border: 2px solid #55beff; font-size: 0.8rem; color: black; border-radius: 20px; width: 100%; margin-top: 10px; height: 40px;}
	.divGoCom #btnGoCom:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.table td {border-color: white;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody .status {border: 1px solid #ff616b; background-color: #ff616b; color: white; padding: 4px 15px 4px 15px; font-size: 12px; font-weight: bold; border-radius: 3px;}
	.table tbody .statusEnd {border: 1px solid #828282; background-color: #828282; color: white; padding: 4px 15px 4px 15px; font-size: 12px; font-weight: bold; border-radius: 3px;}
	.table tbody a {color: black;}
	.table tbody .surveyDate {font-size: 1rem;}
	
	.modal-footer{padding:0;}
	.lineless {
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	}
</style>

<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h2><a href="/bogo/home">보고</a></h2></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/bogo/add'"><span>+보고서 추가</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>MS 그룹</strong></a>
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
	<!-- 보고 목록 본문 -->
	<div class="lefr-menu-list-content">
		<div class="noticeTitle">
			<h2>보고</h2>
		</div>
		
		<div class="surveyLatelyList">
			<table class="table">
				<colgroup>
					<col width="100px">
					<col width="auto">
					<col width="250px">
					<col width="250px">
				</colgroup>
				<thead>
					<tr>
						<td style="text-align: center;">구분번호</td>
						<td style="text-align: center;">제목</td>
						<td style="text-align: center;">보고자</td>
						<td style="text-align: center;">생성일</td>
					</tr>
				</thead>
				<tbody>
				<!-- 리스트 만큼 반복 -->
					<c:forEach var="list" items="${list}">
										<tr>
											<td style="padding-left: 40px;">${list.reprtNo}</td>
											<td style="padding-left: 360px;">
												<p><span style="color: black;">${list.sj}</span></p>
											</td>											
											<td style="padding-left: 100px;">${list.reportrNm}</td>
											<td style="padding-left: 100px;">
												<p ><span style="color: black;">${list.writngTm2}</span></p>
											</td>
										</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</div>
		</div>
			<div class="Paging">
			<ul>

				<li><a href=""><i class="fas fa-step-backward"></i></a></li>
	            <li><a href=""><i class="fas fa-chevron-left"></i></a></li>
	            
				<c:forEach var="pageNo" begin="${paging.startPage }" end="${paging.endPage }" varStatus="stat">
			        <li class="<c:if test="${pageNo == param.currentPage}">active</c:if>">
			        <a href="/bogo/list?currentPage=${pageNo}&selSearch=${param.selSearch}&keyword=${param.keyword}" aria-controls="example2" data-dt-idx="${pageNo }" tabindex="0">${pageNo }</a>
			        </li>       
	           	</c:forEach>
	           	
	            <li><a href=""><i class="fas fa-chevron-right"></i></a></li>
				<li><a href=""><i class="fas fa-step-forward"></i></a></li>
			</ul>
		</div>
		<div class="listSearch">
			<form method="get" action="/bogo/list" name="frmSearch" id="frmSearch">
   			<input type="hidden" name="currentPage" value="1" />
				<div class="input-group searchSelect">
					<select name="selSearch" class="form-control">
						<option value="">전체</option>
						<option value="nm" 
			      			<c:if test="${param.selSearch=='nm'}">selected</c:if>
			      		>작성자</option>
			      		<option value="sj"
			      			<c:if test="${param.selSearch=='sj'}">selected</c:if>
			      		>제목</option>
			      		<option value="cn"
			      			<c:if test="${param.selSearch=='cn'}">selected</c:if>
			      		>내용
			      		</option>
					</select>
				</div>
				<div class="input-group searchKeyword">
	        		<input type="text" name="keyword" class="form-control" placeholder="검색"  value="${param.keyword}">
	        		<div class="input-group-append">
			            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
	        		</div>
	       		</div>
       		</form>
		</div>