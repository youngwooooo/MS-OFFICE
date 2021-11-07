<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	.atUpdate,.memCancel {
    	border: .5px solid #55beff; font-size: 0.7rem; color: black; border-radius: 10px; width: 40px; height: 25px; background-color: white;
	}
	.atUpdate:hover {background-color: #55beff; color: white; font-weight: bold;}
	.memCancel:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.modal-footer{padding:0;}
	.lineless {
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	}
</style>
<script>
function fn_memAccept(sbscrberEmpno, cmmntyNo){
	console.log(sbscrberEmpno);
	console.log(cmmntyNo);
	var input = confirm("승인하시겠습니까?");
	if(input){//true
		$('input[name="cmmntyNo"]').val(cmmntyNo);
		$('input[name="sbscrberEmpno"]').val(sbscrberEmpno);
		$("#frmUpdate").attr("action","/com/Atupdate").submit();
	}else{//false
		return;
	}
}

function fn_memCancel(sbscrberEmpno, cmmntyNo){
	var input = confirm("승인 취소하시겠습니까");
	if(input){//true
		$('input[name="cmmntyNo"]').val(cmmntyNo);
		$('input[name="sbscrberEmpno"]').val(sbscrberEmpno);
		$("#frmDelete").attr("action","/com/memCancel").submit();
	}else{//false
		return;
	}
}
	
</script>
<div id="body">
	<!-- 커뮤니티 왼쪽 네비 -->
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h4><a href="/com/list">커뮤니티</a></h4></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/com/insert'"><span>커뮤니티 만들기</span></button>
			</div>
			<div class="menu-list">
				<a href="/com/list" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>전체 커뮤니티</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/com/list"><span>전체 커뮤니티</span></a>
					</li>
					<li>
						<a href="/com/comMyJoin"><span>가입 현황</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<i class="fas fa-angle-down mr-2"></i><strong>나의 커뮤니티</strong><a href="/com/comJoinMem" style="float: right;">  <i class="fas fa-cog" style="color:gray;"></i></a>
				<ul class="menu-list-ul">
					<c:forEach var="item" items="${myList}">
						<li class="lineless" onclick="javascript:location.href='/com/detail?cmmntyNo=${item.cmmntyNo}'">
							<a href="#"><span>${item.sj}</span></a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	
	</div>
	<!-- 커뮤니티 목록 본문 -->
	<div class="lefr-menu-list-content">
		<div class="noticeTitle">
			<h4>커뮤니티</h4>
		</div>
		
		<div class="surveyLatelyList">
			<table class="table">
				<colgroup>
					<col width="250px">
					<col width="auto">
					<col width="250px">
					<col width="250px">
				</colgroup>
				<thead>
					<tr>
						<td style="text-align: center;"">가입일</td>
						<td style="text-align: center;">커뮤니티 제목</td>
						<td style="text-align: center;">가입자</td>
						<td style="text-align: center;">승인/취소</td>
					</tr>
				</thead>
				<tbody>
				<!-- 리스트 만큼 반복 -->
					<c:forEach var="joinList" items="${joinList}">
					<tr>
						<td style="text-align: center;">
							<fmt:parseDate var="parsedDate" value="${joinList.approveTm}" pattern="yyyy-MM-dd HH:mm:ss.0"/>
							<fmt:formatDate var="formatRegDate" value="${parsedDate}" pattern="yyyy-MM-dd"/>
							${formatRegDate}
						</td>
						<td>${joinList.sj}</td>
						<td style="text-align: center;">${joinList.nm}</td>
						<td style="text-align: center;">
							<button class="atUpdate" type="button" onclick="fn_memAccept(${joinList.sbscrberEmpno},${joinList.cmmntyNo})">승인</button>
							<button class="memCancel" type="button" onclick="fn_memCancel(${joinList.sbscrberEmpno},${joinList.cmmntyNo})">취소</button>
						</td>
					</tr>
					<form method="post" action="/com/Atupdate" id="frmUpdate" >
			        	<input type="hidden" name="sbscrberEmpno"/>
			        	<input type="hidden" name="cmmntyNo"/>
		        	</form>
					<form method="post" action="/com/memCancel" id="frmDelete">
			        	<input type="hidden" name="sbscrberEmpno"/>
			        	<input type="hidden" name="cmmntyNo"/>
		        	</form>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
		<div class="Paging">
			<ul>
				<c:if test="${param.currentPage  > 5}">
				<li>
					<a href="/com/comJoinMem?currentPage=1"><i class="fas fa-step-backward"></i></a>
				</li>
				<li><a href="/com/comJoinMem?currentPage=${paging.startPage - 5}"><i class="fas fa-chevron-left"></i></a></li>
				</c:if>
				
				<c:forEach var="pNo" begin="${paging.startPage}" end="${paging.endPage}" varStatus="stat">
				<li class="<c:if test="${pNo == param.currentPage}">active</c:if>">
					<a href="/com/comJoinMem?currentPage=${pNo}">${pNo}</a>
				</li>
				</c:forEach>
				
				<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
				<li><a href="/com/comJoinMem?currentPage=${paging.startPage + 5}"><i class="fas fa-chevron-right"></i></a></li>
				<li><a href="/com/comJoinMem?currentPage=${paging.totalPages}"><i class="fas fa-step-forward"></i></a></li>
				</c:if>
				
			</ul>
		</div>
		<div class="listSearch">
		<form method="get" action="/com/comJoinMem" name="frmSearch" id="frmSearch">
   			<input type="hidden" name="currentPage" value="1">
				<div class="input-group searchSelect">
					<select name="selSearch" class="form-control">
						<option value="">전체</option>
						<option value=sj 
							<c:if test="${param.selSearch=='qustnrSj'}">selected</c:if>
						>제목</option>
						<option value="nm" 
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