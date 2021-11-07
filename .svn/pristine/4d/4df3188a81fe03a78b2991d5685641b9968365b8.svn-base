<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.surveyMineTitle {padding: 30px 20px 30px 10px;}
	.surveyMineTitle h3 {font-size: 1.5rem;}
	.surveyMineList {padding-top: 20px; padding-bottom: 20px;}
	.surveyMineList .emptyMineSurveyList {text-align: center; padding: 120px; border-bottom: 1px solid #dddddd; font-size: 0.9rem; color: #888;}
	.surveyMineList .emptyMineSurveyList {margin: 0px;}
	
	.surveyMineCRD {padding: 10px 10px 0px 10px;}
	.surveyMineCRD a {padding: 10px; color: black; font-size: 0.9rem;}
	.surveyMineCRD a:hover {background-color: #f4f4f4; cursor: pointer;}
	
	.table td {border-color: white;}
	.table tr {text-align: center;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody .surveyCheckStatus {color: white; padding: 4px 15px 4px 15px; font-size: 12px; font-weight: bold; border-radius: 3px; min-width: 80px; display: inline-block; text-align: center;}
	.table tbody a {color: black;}
	.table tbody .surveyDate, .surveyPercent {font-size: 1rem;}
	.table tbody .surveyPercent strong {color: #888;}
	
	.active a {background-color: #efefef;}
</style>
<script type="text/javascript">
	$(function(){
		$("#checkedAll").on("click", function(){
			if($("#checkedAll").prop("checked")){
				$("input[name='checkSurvey']").prop("checked", true);
			}else{
				$("input[name='checkSurvey']").prop("checked", false);
			}
		});
			
	});
	
	// 체크된 설문의 설문 번호 배열을 리턴해주는 함수
	function fn_returnQustnrNoArr(){
		var qustnrNoArr = new Array();
		$("input[name='checkSurvey']:checked").each(function(){
			qustnrNoArr.push($(this).siblings("input[name='qustnrNo']").val());
		});
		
		return qustnrNoArr;
	}
	
	// 체크된 설문의 파일 번호 배열을 리턴해주는 함수
	function fn_returnFileNoArr(){
		var fileNoArr = new Array();
		$("input[name='checkSurvey']:checked").each(function(){
			fileNoArr.push($(this).siblings("input[name='fileNo']").val());
		});
		
		return fileNoArr;
	}
	
	// 체크된 설문의 설문 상태 배열을 리턴해주는 함수
	function fn_returnCodeArr(){
		var codeArr = new Array();
		$("input[name='checkSurvey']:checked").each(function(){
			codeArr.push($(this).siblings("input[name='code']").val());
		});
		
		return codeArr;
	}
	
	// 설문 상태 변경 validate
	function fn_checkEmpty(){
		var checkedCount = $("input[name='checkSurvey']:checked").length;
		if(checkedCount == 0){
			alert("설문을 선택해주세요");
			return false;
		}else {
			return true;	
		}
		
	}
	

	//설문 삭제
	function fn_deleteSurvey(){
		// 설문을 1개라도 선택했으면..
		if(fn_checkEmpty()){
			var qustnrNoArr = fn_returnQustnrNoArr();
			var fileNoArr = fn_returnFileNoArr();					
			
			// form 객체 생성
			var newForm = $('<form style="display: none;"></form>'); 
			
			// form 속성 추가
			newForm.attr("method","post"); 
			newForm.attr("action","/survey/delete");  
			
			// form에 input 객체 추가
			newForm.append( $('<input type="hideen" name="qustnrNoArr" value="'+ qustnrNoArr +'">') );
			newForm.append( $('<input type="hideen" name="fileNoArr" value="'+ fileNoArr +'">') );
			newForm.append( $('<input type="hideen" name="flag" value="1">') );
			
			// 만들어진 form을 body에 추가
			newForm.appendTo($("#body")); 
			
			var check = confirm("설문을 삭제하시겠습니까?\n(삭제된 설문은 복구할 수 없습니다.)");
			
			if(check){
				newForm.submit();	
			}else {
				return;
			}
		}
	
	}
	
	// 설문 중지
	function fn_surveyStatusEditStop(){
		if(fn_checkEmpty()){
			// 설문 상태 체크
			var qustnrNoArr = fn_returnQustnrNoArr();
			var codeArr = fn_returnCodeArr();
			
			if(codeArr.indexOf('QU01') != -1 && codeArr.indexOf('QU02') != -1){
				alert("같은 상태의 설문만 선택해주세요");
				return;
			}else if(codeArr.indexOf('QU03') != -1){
				alert("이미 중지된 설문입니다.");
				return;
			}else if(codeArr.indexOf('QU02') != -1){
				alert("이미 마감된 설문입니다.");
				return;
			}
			
			
			var newForm = $('<form style="display: none;"></form>'); 
			
			newForm.attr("method","post"); 
			newForm.attr("action","/survey/surveyStatusEditStop");  
			
			newForm.append( $('<input type="hideen" name="qustnrNoArr" value="'+ qustnrNoArr +'">') );
			newForm.append( $('<input type="hideen" name="flag" value="1">') );
			
			newForm.appendTo($("#body")); 
			
			var check = confirm("설문을 중지하시겠습니까?");
			
			if(check){
				newForm.submit();	
			}else {
				return;
			}
		}
	}
	
	// 설문 진행
	function fn_surveyStatusEditRun(){
		if(fn_checkEmpty()){
			var qustnrNoArr = fn_returnQustnrNoArr();
			var codeArr = fn_returnCodeArr();
			
			if(codeArr.indexOf('QU02') != -1 && codeArr.indexOf('QU03') != -1){
				alert("같은 상태의 설문만 선택해주세요");
				return;
			}else if(codeArr.indexOf('QU01') != -1){
				alert("이미 진행중인 설문입니다.");
				return;
			}else if(codeArr.indexOf('QU02') != -1){
				alert("이미 마감된 설문입니다.");
				return;
			}
			
			var newForm = $('<form style="display: none;"></form>'); 
			
			// form 속성 추가
			newForm.attr("method","post"); 
			newForm.attr("action","/survey/surveyStatusEditRun");  
			
			// form에 input 객체 추가
			newForm.append( $('<input type="hideen" name="qustnrNoArr" value="'+ qustnrNoArr +'">') );
			newForm.append( $('<input type="hideen" name="flag" value="1">') );
			
			// 만들어진 form을 body에 추가
			newForm.appendTo($("#body")); 
			
			var check = confirm("설문을 진행하시겠습니까?");
			
			if(check){
				newForm.submit();	
			}else {
				return;
			}
		}
	}
	
	// 설문 마감
	function fn_surveyStatusEditDone(){
		if(fn_checkEmpty()){
			var qustnrNoArr = fn_returnQustnrNoArr();
			var codeArr = fn_returnCodeArr();
			
			if(codeArr.indexOf('QU01') != -1 && codeArr.indexOf('QU03') != -1){
				alert("같은 상태의 설문만 선택해주세요");
				return;
			}else if(codeArr.indexOf('QU02') != -1){
				alert("이미 마감된 설문입니다.");
				return;
			}
			
			var newForm = $('<form style="display: none;"></form>'); 
			
			// form 속성 추가
			newForm.attr("method","post"); 
			newForm.attr("action","/survey/surveyStatusEditDone");  
			
			// form에 input 객체 추가
			newForm.append( $('<input type="hideen" name="qustnrNoArr" value="'+ qustnrNoArr +'">') );
			newForm.append( $('<input type="hideen" name="flag" value="1">') );
			
			// 만들어진 form을 body에 추가
			newForm.appendTo($("#body")); 
			
			console.log(newForm);
			
			var check = confirm("설문을 마감하시겠습니까?");
			
			if(check){
				newForm.submit();	
			}else {
				return;
			}
			
		}		
	}
</script>
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
		<div class="surveyMineTitle">
			<h3>내가 만든 설문</h3>
		</div>
		<div class="surveyMineCRD">
			<a onclick="fn_surveyStatusEditRun()"><span><i class="far fa-play-circle mr-2"></i></span><span>진행</span></a>
			<a onclick="fn_surveyStatusEditStop()"><span><i class="fas fa-ban mr-2"></i></span><span>중지</span></a>
			<a onclick="fn_surveyStatusEditDone()"><span><i class="far fa-clock mr-2"></i></span><span>마감</span></a>
			<a onclick="fn_deleteSurvey()"><span><i class="far fa-trash-alt mr-2"></i></span><span>삭제</span></a>
		</div>
		<div class="surveyMineList">
			<table class="table">
				<colgroup>
					<col width="50px">
					<col width="80px">
					<col width="150px">
					<col width="auto">
					<col width="250px">
				</colgroup>
				<thead>
					<tr>
						<td><input type="checkbox" id="checkedAll"></td>
						<td>번호</td>
						<td>상태</td>
						<td>설문 제목</td>
						<td>설문 기간</td>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty mineSurveyList}">
					<c:forEach var="mine" items="${mineSurveyList}">
					<tr>
						<td>
							<input type="checkbox" name="checkSurvey">
							<input type="hidden" name="qustnrNo" value="${mine.qustnrNo}">
							<input type="hidden" name="fileNo" value="${mine.fileNo}">
							<input type="hidden" name="code" value="${mine.code}">
						</td>
						<td><span>${mine.rnum}</span></td>
						<c:if test="${mine.code eq 'QU01'}">
						<td><span class="surveyCheckStatus" style="border: 1px soid ${mine.qustnrColor}; background-color: ${mine.qustnrColor}">${mine.qustnrStatus}</span></td>
						</c:if>
						<c:if test="${mine.code eq 'QU02'}">
						<td><span class="surveyCheckStatus" style="border: 1px soid ${mine.qustnrColor}; background-color: ${mine.qustnrColor}">${mine.qustnrStatus}</span></td>
						</c:if>
						<c:if test="${mine.code eq 'QU03'}">
						<td><span class="surveyCheckStatus" style="border: 1px soid ${mine.qustnrColor}; background-color: ${mine.qustnrColor}">${mine.qustnrStatus}</span></td>
						</c:if>
						<c:if test="${mine.code eq 'QU04'}">
						<td><span class="surveyCheckStatus" style="border: 1px soid ${mine.qustnrColor}; background-color: ${mine.qustnrColor}">${mine.qustnrStatus}</span></td>
						</c:if>
						<td style="text-align: left;"><a href="/survey/detail/${mine.qustnrNo}"><span class="surveyTitle">${mine.qustnrSj}</span></a></td>
						<td><span class="surveyDate">${mine.beginDe} ~ ${mine.endDe}</span></td>
					</tr>
					</c:forEach>
					</c:if>
					<c:if test="${empty mineSurveyList}">
						<td colspan="6" class="emptyMineSurveyList">내가 만든 설문이 없습니다.</td>
					</c:if>
				</tbody>
			</table>
		</div>
		
		<div class="Paging">
			<ul>
				<c:if test="${param.currentPage  > 5}">
				<li>
					<a href="/survey/mine?currentPage=1&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-backward"></i></a>
				</li>
				<li><a href="/survey/mine?currentPage=${paging.startPage - 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-left"></i></a></li>
				</c:if>
				
				<c:forEach var="pNo" begin="${paging.startPage}" end="${paging.endPage}" varStatus="stat">
				<c:if test="${pNo > 0}">
				<li class="<c:if test="${pNo == param.currentPage}">active</c:if>">
					<a href="/survey/mine?currentPage=${pNo}&selSearch=${param.selSearch}&keyword=${param.keyword}">${pNo}</a>
				</li>
				</c:if>
				</c:forEach>
				
				<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
				<li><a href="/survey/mine?currentPage=${paging.startPage + 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-right"></i></a></li>
				<li><a href="/survey/mine?currentPage=${paging.totalPages}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-forward"></i></a></li>
				</c:if>
				
			</ul>
		</div>
		
		<div class="listSearch">
		<form method="get" action="/survey/mine" name="frmSearch" id="frmSearch">
   			<input type="hidden" name="currentPage" value="1">
				<div class="input-group searchSelect">
					<select name="selSearch" class="form-control">
						<option value="">전체</option>
						<option value=qustnrSj 
							<c:if test="${param.selSearch=='qustnrSj'}">selected</c:if>
						>제목</option>
						<option value="guidanceSntenc" 
							<c:if test="${param.selSearch=='guidanceSntenc'}">selected</c:if>
						>내용</option>
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