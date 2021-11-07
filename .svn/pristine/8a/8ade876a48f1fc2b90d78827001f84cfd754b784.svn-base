<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	/* 설문 작성 css*/
	.surveyCreateTitle, .surveyCreate-step1, .divSurveyBtn {padding: 20px 20px 20px 10px;}
	.menu-name h3, .surveyCreateTitle h3 {font-size: 1.5rem;}
	
	.surveyCreate-step1 {border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.surveyCreate-step1 .table, .table input {font-size: 0.9rem;}
	.surveyCreate-step1 .table th {font-weight: bold; border-color: white;}
	.surveyCreate-step1 .table td {border-color: white;}
	.surveyCreate-step1 #addMemberList {margin-top: 10px;}
	.surveyCreate-step1 #addMemberList span {width:120px; margin-right: 1px; margin-bottom: 10px; border: 1px dashed #dddddd; float: left; font-size: 0.8rem; border-radius: 10px; height: 25px; padding: 2px 5px 0px 5px; text-align: center;}
	.surveyCreate-step1 .table .surveyDateSelect {display: flex;}
	.surveyCreate-step1 .table .surveyDateSelect span {padding: 5px 10px 0px 10px;}
	.surveyCreate-step1 .table .surveyDateSelect input {width: 20%;}
	.surveyCreate-step1 .table label {margin-right: 15px; margin-left: 5px; font-weight: normal;}
	.surveyCreate-step1 .table .surveyMemberSelectList {padding: 10px; border: 1px dashed #dddddd; display: none;}
	.surveyCreate-step1 .table .surveyMemberSelectList #btnSurveyMemberAdd {border: 1px solid #55beff; background-color: #55beff; color: white;}
	.surveyCreate-step1 .table .surveyMemberSelectList #btnAllSurveyMemberDelete {border: 1px solid #dddddd; background-color: white; color: #888;}
	.surveyCreate-step1 .table .surveyMemberSelectList .deleteMember:hover {cursor: pointer;}
	.surveyCreate-step1 .table .desc {color: #888; font-size: 12px;}
	.surveyCreate-step1 .table textarea {width: 100%; padding: 10px;}
	
	.divSurveyBtn {text-align: center;}
	.divSurveyBtn button {border: 1px solid #dddddd; margin-right: 10px; width: 100px; font-size: 0.9rem;}
	.divSurveyBtn #btnSurveyEdit {border-color: #55beff; background-color: #55beff; color: white;}
	.divSurveyBtn #btnSurveyEdit:hover {background-color: #009dff; border-color: #009dff;}
	.divSurveyBtn #btnSurveyCancel:hover {background-color: #dddddd;}
	
</style>
<script type="text/javascript">
	$(function(){
		$(".surveyMemberSelectList").css("display", "block");
		// 설문 시작 및 종료일 오늘로 세팅
		var now = new Date();
		var year = now.getFullYear();
		var month = now.getMonth() + 1;
		var day = now.getDate();
		
		if(month < 10){
			month = "0" + month;
		}
		if(day < 10){
			day = "0" + day;
		}
		var sysdate = year + "-" + month + "-" + day;
		
		// 설문 시작일을 오늘 이전, 종료일보다 늦게 세팅되는 것을 막기
		$("#beginDe").on("change", function(e){
			if($(this).val() < sysdate){
				alert("설문 시작일은 오늘 이전으로 설정할 수 없습니다.");
				$(this).val(sysdate);
				return false;
			}
			
			if($(this).val() > $("#endDe").val()){
				alert("설문 시작일은 설문 종료일 이전으로 설정해야합니다.");
				$(this).val($("#endDe").val());
				return false;
			}
			
		});
		
		// 설문 시작일을 오늘 이전, 종료일보다 늦게 세팅되는 것을 막기
		$("#endDe").on("change", function(e){
			if($(this).val() < sysdate){
				alert("설문 종료일은 오늘 이전으로 설정할 수 없습니다.");
				$(this).val(sysdate);
				return false;
			}
			
			if($(this).val() < $("#beginDe").val()){
				alert("설문 종료일은 설문 시작일 이후로 설정해야합니다.");
				$(this).val($("#beginDe").val());
				return false;
			}
			
		});
		
		// 설문 대상자 radio 버튼 변경 시
		$(".surveyMember input:radio").on("change", function(){
			// 'MS그룹' 선택 시, 설문 대상자를 모든 사람으로 세팅(jstree 활용)
			if($("#surveyMemberAllSelect").prop("checked") == true){
				$("#addMemberList").empty();
				
				var allMemberData = $('#treeView').jstree(true).get_json('#', {flat:true});
				for(var i=0; i<allMemberData.length; i++){
					if(allMemberData[i].data.empno != null){
  						var str = '<div class="col-sm-2 surveyMember">'
   	 					+	'<input type="hidden" name="trgterEmpnoArr" value="'+ allMemberData[i].data.empno +'">'
   	 					+	'<span class="trgterNm">'+ allMemberData[i].data.nm + " " + allMemberData[i].data.ofcpsNm +'</span><a class="deleteMember" onclick="fn_deleteMember(this)"><i class="fas fa-times-circle"></i></a>'
   	 					+ '</div>';	
   	 					
  						$("#addMemberList").append(str);
					}	
				}
			// 직접 선택 시 현재 지정되 있던 설문 참여 대상자 세팅
			}else{
				$("#addMemberList").empty();
				
				var str = "";
				<c:forEach var="trgter" items="${detailSurveyTrgter}">
				str += '<div class="col-sm-2 surveyMember">'
					+		'<input type="hidden" name="trgterEmpnoArr" value="${trgter.trgterEmpno}">'
					+		'<span class="trgterNm">${trgter.trgterNm}&nbsp;${trgter.ofcpsNm}</span>'
					+		'<a class="deleteMember" onclick="fn_deleteMember(this)"><i class="fas fa-times-circle"></i></a>'
					+	'</div>';
				</c:forEach>
				
				$("#addMemberList").append(str);
			}
			
			if($("#surveyMemberSelect").prop("checked") == true){
				$(".surveyMemberSelectList").css("display", "block");
			}else{
				$(".surveyMemberSelectList").css("display", "none");
			}
		});
		
		// 설문 대상자 전체 삭제
		$("#btnAllSurveyMemberDelete").on("click", function(){
			$("#addMemberList").empty();
		});
		
		// 설문 수정
		$("#btnSurveyEdit").on("click", function(){
			var qustnrSj = $("input[name='qustnrSj']");			// 설문 제목
			
			// 설문 각 여부 세팅
			// 결과 공개 여부
			if($("input[name='result']").prop("checked") == true){
				$("input[name='othbcAt']").val("Y");
			}else{
				$("input[name='othbcAt']").val("N");
			}
			// 
			if($("input[name='comment']").prop("checked") == true){
				$("input[name='answerAt']").val("Y");
			}else{
				$("input[name='answerAt']").val("N");
			}
			if($("input[name='update']").prop("checked") == true){
				$("input[name='afterUpdtAt']").val("Y");
			}else{
				$("input[name='afterUpdtAt']").val("N");
			}
			
			// 설문 validate
			// 설문 제목 체크
			if(fn_isEmpty(qustnrSj.val())){
				alert("설문 제목을 입력하세요.");
				qustnrSj.focus();
				return false;
			}
			// 설문 대상자 체크
			if($("#addMemberList .surveyMember").length == 0){
				alert("설문 대상자를 설정해주세요.");
				return false;
			}
			
  			$("#frm").submit();
			
		});
		
		
		// 설문 수정 취소
		$("#btnSurveyCancel").on("click", function(){
			location.href = "/survey/detail/" + ${detailSurveyList[0].qustnrNo};			
		});
		
		
	});	// jquery end
	
	// 설문 대상자 개별 삭제
	function fn_deleteMember(obj){
		$(obj).parent(".surveyMember").remove();
	}
	
	// 설문작성 - 파일 삭제
	function fn_deleteFile(fileNo, fileOrdr, obj){
		$.ajax({
			url : "/file/deleteFileOne"
			, type : "post"
			, data : {"fileNo" : fileNo, "fileOrdr" : fileOrdr}
			, success : function(result){
				if(result > 0){
					if($(".attahcedFileImg img").length != 0){
						$("#img"+ fileOrdr +"").parent(".col-sm-4").remove();
					}
					$(obj).parent("p").remove();
				}
			}
		});
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
		<div class="surveyCreateTitle">
			<h3>설문 수정</h3>
		</div>
		<form id="frm" method="post" action="/survey/surveyEdit/${detailSurveyList[0].qustnrNo}">
			<input type="hidden" name="wrterEmpno" value="${sessionScope.empVo.empno}">
			<div class="surveyCreate-step1">
				<table class="table">
					<colgroup>
						<col width="150px">
						<col width="auto">
					</colgroup>
					<tbody>
						<tr class="surveyTitle">
							<th class="th"><span>설문 제목</span></th>
							<td><input type="text" class="form-control" name="qustnrSj" value="${detailSurveyList[0].qustnrSj}"></td>
						</tr>
						<tr class="surveyDate">
							<th class="th"><span>설문 기간</span></th>
							<td class="surveyDateSelect">
								<input type="date" class="form-control" id="beginDe" name="beginDe" value="${detailSurveyList[0].beginDe}"><span>~</span><input type="date" id="endDe" class="form-control" name="endDe" value="${detailSurveyList[0].endDe}">
							</td>
						</tr>
						<tr class="surveyMember">
							<th><span>설문 대상자</span></th>
							<td>
								<input type="radio" id="surveyMemberAllSelect" name="member">
								<label for="surveyMAllSelect">MS그룹</label>
								<input type="radio" id="surveyMemberSelect" name="member" checked="checked">
								<label for="surveyMemberSelect">직접 선택</label>
								<div class="surveyMemberSelectList">
									<button type="button" id="btnSurveyMemberAdd"><i class="fas fa-plus mr-2"></i>추가</button>
									<button type="button" id="btnAllSurveyMemberDelete"><i class="far fa-trash-alt mr-2"></i>전체 삭제</button>
									<div class="row" id="addMemberList">
										<c:forEach var="trgter" items="${detailSurveyTrgter}">
										<div class="col-sm-2 surveyMember">
											<input type="hidden" name="trgterEmpnoArr" value="${trgter.trgterEmpno}">
											<span class="trgterNm">${trgter.trgterNm}&nbsp;${trgter.ofcpsNm}</span>
											<a class="deleteMember" onclick="fn_deleteMember(this)"><i class="fas fa-times-circle"></i></a>
										</div>
										</c:forEach>
									</div>
								</div>
								<div class="desc">
									<span>※ 'MS그룹' 선택 시,&nbsp;&nbsp;하위 모든 부서까지 범위가 설정됩니다.</span><br>
								</div>
							</td>
						</tr>
						<tr class="surveyResultYN">
							<th><span>설문 결과 공개</span></th>
							<td>
								<input type="hidden" name="othbcAt" value="${detailSurveyList[0].othbcAt}">
								
								<c:if test="${detailSurveyList[0].othbcAt == 'Y'}">
								<input type="radio" id="surveyResultOpen" name="result" checked="checked">
								<label for="surveyResultOpen">공개</label>
								<input type="radio" id="surveyResultClose" name="result">
								<label for="surveyResultClose">비공개</label>
								</c:if>
								
								<c:if test="${detailSurveyList[0].othbcAt == 'N'}">
								<input type="radio" id="surveyResultOpen" name="result">
								<label for="surveyResultOpen">공개</label>
								<input type="radio" id="surveyResultClose" name="result" checked="checked">
								<label for="surveyResultClose">비공개</label>
								</c:if>
								
								<div class="desc">
									<span>※ 설문 결과 공개 여부를 설정합니다.</span>
								</div>
							</td>
						</tr>
						<tr class="surveyAnswerYN">
							<th><span>댓글 작성</span></th>
							<td>
								<input type="hidden" name="answerAt" value="${detailSurveyList[0].answerAt}">
								
								<c:if test="${detailSurveyList[0].answerAt == 'Y'}">
								<input type="radio" id="surveyCommentOpen" name="comment" checked="checked">
								<label for="surveyCommentOpen">사용</label>
								<input type="radio" id="surveyCommentClose" name="comment">
								<label for="surveyCommentClose">사용안함</label>
								</c:if>
								
								<c:if test="${detailSurveyList[0].answerAt == 'N'}">
								<input type="radio" id="surveyCommentOpen" name="comment">
								<label for="surveyCommentOpen">사용</label>
								<input type="radio" id="surveyCommentClose" name="comment" checked="checked">
								<label for="surveyCommentClose">사용안함</label>
								</c:if>
								
								<div class="desc">
									<span>※ 설문에 댓글을 작성할 수 있는지 여부를 설정합니다.</span>
								</div>
							</td>
						</tr>
						<tr class="surveyEditYN">
							<th><span>참여 후 수정 허용</span></th>
							<td>
								<input type="hidden" name="afterUpdtAt" value="${detailSurveyList[0].afterUpdtAt}">
								
								<c:if test="${detailSurveyList[0].afterUpdtAt == 'Y'}">
								<input type="radio" id="surveyEditOpen" name="update" checked="checked">
								<label for="surveyEditOpen">허용</label>
								<input type="radio" id="surveyEditClose" name="update">
								<label for="surveyEditClose">허용안함</label>
								</c:if>
								
								<c:if test="${detailSurveyList[0].afterUpdtAt == 'N'}">
								<input type="radio" id="surveyEditOpen" name="update">
								<label for="surveyEditOpen">허용</label>
								<input type="radio" id="surveyEditClose" name="update" checked="checked">
								<label for="surveyEditClose">허용안함</label>
								</c:if>
								
								<div class="desc">
									<span>※ 설문 결과를 제출하고 수정할 수 있는지 여부를 설정합니다.</span>
								</div>
							</td>
						</tr>
						<tr class="surveyInfo">
							<th><span>설문 안내 문구</span></th>
							<td>
								<textarea rows="5" name="guidanceSntenc">${detailSurveyList[0].guidanceSntenc}</textarea>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
		<div class="divSurveyBtn">
			<button id="btnSurveyEdit" type="button" class="btn">수정</button>
			<button id="btnSurveyCancel" type="button" class="btn">취소</button>
		</div>
	</div>
</div>