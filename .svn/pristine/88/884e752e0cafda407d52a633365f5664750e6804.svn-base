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
	
	.noticeIn-step1 .uploadResult {border:1px dashed #dddddd; min-height: 60px;}
	.noticeIn-step1 .uploadResult p {padding: 5px 10px 5px 10px; margin-bottom: 0px;}
	
	.modal-footer{padding:0;}
	.lineless {
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	}
	
	.comm-title:hover {cursor: pointer;}
	
	.status, .statusEnd {display: inline-block; width: 90px; text-align: center;}
</style>
<script>
function fn_join(){
	var sbsEmpno = $("input[name='sbscrberEmpno']");		
	var approveEmpno = $("input[name='approveEmpno']");		
	var cmmntyNo = $('input[name="cmmntyNo"]').val();
	var rcritAt = $('input[name="rcritAt"]').val();
	var chkk = true;
	var chkk2 = true;
	console.log(sbsEmpno.val());
	console.log(approveEmpno.val());
	console.log(cmmntyNo);
	
	if(sbsEmpno.val() == approveEmpno.val()){
		alert("개설한 커뮤니티입니다.");
		return false;
	}

	if(rcritAt == "N"){
		alert("모집 완료한 커뮤니티입니다.");
		return false;
	}
	
	$.ajax({
	    type:"post"
	    ,url:"/com/comMemList"
	    ,data:JSON.stringify(cmmntyNo)   		//보낼 데이터
	    ,contentType:"application/json"
	    ,cache:false
	    ,success:function(memList){
	    	console.log(memList);
	    	for(var i=0; i<memList.length; i++){
	    		if(memList[i].sbscrberEmpno == sbsEmpno.val()){
		    		alert("가입 중인 커뮤니티입니다.");
		    		$('#myModal').modal("hide");
		    		chkk = false;
		    	}
	    	}
	    	
	    }
	 });
	

	if(chkk){
		$.ajax({
		    type:"post"
		    ,url:"/com/comWaitList"
		    ,data:JSON.stringify(cmmntyNo)   		//보낼 데이터
		    ,contentType:"application/json"
		    ,cache:false
		    ,success:function(waitList){
		    	console.log(waitList);
		    	console.log(waitList.length);
		    	console.log(waitList[0].sbscrberEmpno);
		    	for(var i=0; i<waitList.length; i++){
		    		if(waitList[i].sbscrberEmpno == sbsEmpno.val()){
			    		alert("가입 대기 중인 커뮤니티입니다.");
			    		$('#myModal').modal("hide");
			    		chkk2 = false;
			    		console.log("첫번째 = " + chkk2);
			    	}
		    	}
		    }
		 });
		
	}
	setTimeout(function() {
		if(chkk2 && chkk){
			$("#frmJoin").submit();
			console.log("폼전송함");
			console.log("두번째 = " + chkk2);
		}
	}, 300)
}

function fn_modal(cmmntyNo){
// 	var tdClick = e.getElementsByTagName("td");

//  console.log(queryString);
 
 $.ajax({
    type:"post"
    ,url:"/com/modalAjax"
    ,data:JSON.stringify(cmmntyNo)   		//보낼 데이터
    ,contentType:"application/json"
    ,cache:false
    ,success:function(data){
    	console.log(data);
    	$("#sjMd").text(data.sj);			// 제목
    	var res = (data.estblTm).substring(0,10);
    	$("#dtMd").text(res);		// 개설시간
    	
    	if(data.rcritAt == 'Y'){
	    	$("#staMd").text("모집 중");		// 상태
    	}else {
    		$("#staMd").css("background-color","#828282");
    		$("#staMd").css("border-color","#828282");
    		$("#staMd").text("모집완료");		// 상태
    	}
    	$("#nmMd").text(data.nm);			// 작성자
    	$("#joinMd").text(data.joinNum);	// 회원 수
    	$("#boardMd").text(data.boardNum);	// 게시물 수
    	$("#cnMd").text(data.cn);			// 소개
    	$('input[name=cmmntyNo]').attr('value', data.cmmntyNo); 		// 커뮤니티 번호
		$('input[name=approveEmpno]').attr('value', data.estblEmpno);	// 커뮤니티 개설자
		$('input[name=rcritAt]').attr('value', data.rcritAt);			// 커뮤니티 상태
    }
 });
 	
 	
}

</script>
<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h4><a href="/com/list">커뮤니티</a></h4></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/com/insert'"><span>커뮤니티 만들기</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>전체 커뮤니티</strong></a>
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
					<col width="150px">
					<col width="auto">
					<col width="250px">
					<col width="250px">
				</colgroup>
				<thead>
					<tr>
						<td style="text-align: center;">상태</td>
						<td style="text-align: center;">커뮤니티 제목</td>
						<td style="text-align: center;">개설일</td>
						<td style="text-align: center;">개설자</td>
					</tr>
				</thead>
				<tbody>
				<!-- 리스트 만큼 반복 -->
					<c:forEach var="list" items="${list}">
					<tr data-toggle="modal" data-target="#myModal" onclick="fn_modal(${list.cmmntyNo})">
						<td style="text-align: center;">
							<c:if test="${list.rcritAt=='Y'}"><span class="status">모집 중</span></c:if>
							<c:if test="${list.rcritAt=='N'}"><span class="statusEnd">모집 완료</span></c:if>
						</td>
						<td class="comm-title">${list.sj}</td>
						<td style="text-align: center;">
							<fmt:parseDate var="parsedDate" value="${list.estblTm}" pattern="yyyy-MM-dd HH:mm:ss.0"/>
							<fmt:formatDate var="formatRegDate" value="${parsedDate}" pattern="yyyy-MM-dd"/>
							${formatRegDate}
						</td>
						<td style="text-align: center;">${list.nm}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- 모달 -->
		<div class="container">
			<div class="modal fade" id="myModal">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						
						<!-- Modal Header -->
						<div class="modal-header">
						  	<div>
							  	<span class="status" id="staMd"></span>
							  	<button type="button" class="close" data-dismiss="modal">&times;</button>
						  	</div>
							<div class="communitySubject">
								<h4 class="communityTitle" id="sjMd"></h4>
								<span class="surveyDate" id="dtMd"></span>
							</div>
						</div>
						
						<!-- Modal body -->
						<div class="modal-body">
							<div class="communityContent">
								<table class="table">
									<colgroup>
										<col width="80px">
										<col width="auto">
									</colgroup>
									<tr>
										<td><span>개설자</span></td>
										<td><span id="nmMd"></span></td>
									</tr>
									<tr>
										<td><span>회원 수</span></td>
										<td><span id="joinMd"></span> 명</td>
									</tr>
									<tr>
										<td><span>게시물 수</span></td>
										<td><span id="boardMd"></span> 개</td>
									</tr>
									<tr>
										<td><span>소개</span></td>
										<td class="lineLess" id="cnMd"></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- Modal footer -->
						<div class="modal-footer">
						  	<div class="divGoCom">
						  		<input type="hidden" name="rcritAt">
					  			<form id="frmJoin" method="post" action="/com/inJoin">
									<input type="hidden" name="cmmntyNo">				  			
									<input type="hidden" name="sbscrberEmpno" value="${empVo.empno}">				  			
									<input type="hidden" name="approveEmpno">				  			
									<button id="btnGoCom" type="button" class="btn" onclick="fn_join()">가입하기</button>
					  			</form>
							</div>
						</div>
					  
					</div>
				</div>
			</div>
		</div>
	
		<div class="Paging">
			<ul>
				<c:if test="${param.currentPage  > 5}">
				<li>
					<a href="/com/list?currentPage=1&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-backward"></i></a>
				</li>
				<li><a href="/com/list?currentPage=${paging.startPage - 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-left"></i></a></li>
				</c:if>
				
				<c:forEach var="pNo" begin="${paging.startPage}" end="${paging.endPage}" varStatus="stat">
				<li class="<c:if test="${pNo == param.currentPage}">active</c:if>">
					<a href="/com/list?currentPage=${pNo}&selSearch=${param.selSearch}&keyword=${param.keyword}">${pNo}</a>
				</li>
				</c:forEach>
				
				<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
				<li><a href="/com/list?currentPage=${paging.startPage + 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-right"></i></a></li>
				<li><a href="/com/list?currentPage=${paging.totalPages}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-forward"></i></a></li>
				</c:if>
				
			</ul>
		</div>
		<div class="listSearch">
			<form method="get" action="/com/list" name="frmSearch" id="frmSearch">
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
	</div>
</div>