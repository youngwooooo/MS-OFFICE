<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.surveyResult {display: flex; padding-top: 20px; padding-bottom: 20px;}
	.surveyResult span {border: 1px solid #dddddd; font-size: 0.8rem; padding: 10px 30px 10px 30px; margin-right: 10px; border-radius: 5px;}
	.surveyResult span strong {display: block; font-size: 1.5rem;}
	.surveyResult span .resultPoint {color: #ff5b5b;}
	.surveyResult span .resultPercent {color: #009dff;}

	.surveyDetailTitle {padding: 20px 10px 20px 10px;}
	.surveyDetailTitle h3 {font-size: 1.5rem;}
	
	.surveyDetailRUD, .surveyDetailContent {padding: 10px 10px 20px 10px;}
	.surveyDetailRUD a {padding: 10px; color: black; font-size: 0.9rem;}
	.surveyDetailRUD a:hover {background-color: #f4f4f4; cursor: pointer;}
	.surveyDetailRUD .surveyList {float: right;}
	
	.surveyDetailContent {border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.surveyInfo {padding: 20px 10px 20px 0px;}
	.surveyInfo h3 {font-weight: bold; font-size: 1.5rem;}
	.surveyInfo .table {margin-top: 15px;}
	.surveyInfo .table td {border-color: white; font-size: 0.8rem; padding: 5px 5px 3px 5px; color: #888;}
	.surveyInfo .table td img {width: 30px; height: 25px; border-radius: 50%;}
	.surveyInfo .table .trSurveyEditOption > td:first-child, .trSurveyResultOption > td:first-child {padding-top: 6px;}
	.surveyInfo .divSurveyDesc {padding: 20px; background-color: #f4f4f4; margin-top: 10px; margin-bottom: 10px;  word-break:break-all;}
	.surveyInfo .divSurveyDesc p {margin: 0px; font-size: 0.9rem;}
	.surveyInfo .divSurveyDesc .surveyFile {margin-top: 15px;}
	.surveyInfo .divSurveyDesc .surveyFile p {padding: 5px;}
	.surveyInfo .divSurveyDesc .surveyFile .fileDownload:hover {cursor: pointer; color: #dddddd;}
	.surveyInfo .divSurveyDesc .surveyFileImg {text-align: center; padding-top: 15px;}
	.surveyInfo .divSurveyDesc .surveyFileImg img {width: 300px; height: 200px;}
	
	.divAddQuestionResultList {padding: 20px 10px 20px 10px;}
 	.divAddQuestionResultList span {font-size: 0.9rem;}
	.divAddQuestionResultList ul {list-style: none; margin-bottom: 0px; margin-top: 10px;}
	.divAddQuestionResultList label {font-weight: normal !important; font-size: 0.9rem;}
	.divAddQuestionResultList .divAddQuestionResultTitle {margin-top: 15px; font-size: 1rem; font-weight: bold;}
	
	.surveyPointTypeResult, .surveySelectTypeResult {padding: 20px 10px 20px 10px;}
	.surveyPointTypeResult p, .surveySelectTypeResult p {margin: 0px; font-weight: bold;}
		
	.btnSurveySubmit {padding-top: 20px; padding-bottom: 20px; text-align: center;}
	.btnSurveySubmit #btnSurveyResultEdit {font-size: 0.9rem; border: 1px soild #55beff; background-color: #55beff; color: white;}
	.btnSurveySubmit #btnSurveyResultEdit:hover {border-color: #009dff; background-color: #009dff; color: white;}
	.btnSurveySubmit #btnSurveyResultCancel {font-size: 0.9rem; border: 1px solid #dddddd; background-color: white; color: black;}
	
	.surveyComment {padding: 20px 10px 20px 10px; min-height: 400px;}
	.surveyComment .surveyCommentTitle {font-size: 0.9rem;}
	.surveyComment .surveyCommentTitle {padding-bottom: 15px; border-bottom: 2px dotted #dddddd;}
	.surveyComment .surveyMyComment {padding: 10px; display: flex;}
	.surveyComment .surveyMyComment img {width: 40px; height: 35px; border-radius: 50%;}
	.surveyComment .surveyMyComment input, .surveyCommentList input {width: 90%; margin-left: 10px; margin-right: 10px; font-size: 0.8rem; height: 30px;}
	.surveyComment .surveyMyComment button, .surveyCommentList button {width: 70px; height: 30px; font-size: 0.8rem; border: 1px solid #55beff; background-color: #55beff; color: white;}
	.surveyComment .surveyMyComment button:hover, .surveyCommentList button:hover {border-color: #009dff; background-color: #009dff; color: white;}
	
	.surveyCommentList {height: 100%; min-height: 60px; margin-top: 20px;}
	.surveyCommentList ul {list-style: none; padding-right: 40px;}
	.surveyCommentList li {min-height: 82px; margin-bottom: 5px;  word-break:break-all; overflow: hidden;}
	.surveyCommentList li .photo {position: absolute;}
	.surveyCommentList .photo img {width: 40px; height: 35px; border-radius: 50%;}
	.surveyCommentList li .comments {margin-left: 45px; overflow: hidden;}
	.surveyCommentList li .comments .editComment {display: none;}
	.surveyCommentList li .comments .editComment input {width: 86%;}
	.surveyCommentList li .comments .editComment .cancel {border-color: #dddddd; background-color: white; color: black;}
	.surveyCommentList li .comments p {margin: 0px 0px 0px 10px; padding-top: 5px; font-size: 0.9rem; min-height: 25px;}
	.surveyCommentList li .comments span{font-size: 0.8rem; color: #888; margin-left: 10px;}
	.surveyCommentList li .comments .wrter {color: black; font-weight: bold;}
	.surveyCommentList li .btnCommentUD {float: right; display: none; margin-top: 10px; margin-right: 22px;}
	.surveyCommentList li .btnCommentUD a {color: #888;}
	.surveyCommentList li .btnCommentUD a:hover {color: black;}
	.surveyCommentList li .btnCommentUD button {background-color: white; color: black; border-color: white; width: 40px; height: 40px;}
	.surveyCommentList li .btnCommentUD button:hover {background-color: #dddddd;}
	
</style>
<script type="text/javascript">
	$(function(){
		// '댓글' 등록 시, 댓글 내용 보이기 
		$("#btnSurveyCommentAdd").on("click", function(){
			var qustnrNo = ${detailSurveyList[0].qustnrNo};
			var wrterEmpno = ${sessionScope.empVo.empno};
			var answerObj = $("input[name='answerCn']");
			var answerCn = answerObj.val();
			
			var now = new Date();
			var year = now.getFullYear();	// 연
			var month = now.getMonth() + 1;	// 월 
			var date = now.getDate();		// 일
			var hour = now.getHours();		// 시
			var min = now.getMinutes();		// 분
			
			// 1~9월, 1~9일, 0~9시 앞에 0 붙여주기
			if(month < 10){
				month = "0" + month;
			}
			if(date < 10){
				date = "0" + date;
			}
			if(hour < 10){
				hour = "0" + hour;
			}
			if(min < 10){
				min = "0" + min;
			}
			if(fn_isEmpty(answerCn)){
				alert("댓글을 입력하세요.");
				return false;
			}
			
			var writngTm = year + "-" + month + "-" + date + " " + hour + ":" + min;
			
			var AjaxDate = {"qustnrNo" : qustnrNo, "wrterEmpno" : wrterEmpno, "answerCn" : answerCn};
			
			<c:set var="fileCours" value="${fn:replace(sessionScope.empVo.fileCours,'\\\\','/')}" />
			
			$.ajax({
				url : "/survey/createSurveyAnswer"
				, type : "post"
				, data : AjaxDate
				, success : function(result){
					if(result > 0){
						var str = '<li onmouseover="fn_UDshow(this)">'
								+		'<input type="hidden" name="answerNo" value="'+ result +'">'
								+		'<span class="photo">'
								+			'<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">'
								+		'</span>'
								+		'<div class="comments">'
								+			'<div class="editComment">'
								+				'<input type="text" name="answerCn" class="form-control" style="display: inline;">'
								+				'<button type="button" class="btn" onclick="fn_editComment(this)" style="display: inline;">수정</button>'
								+				'<button type="button" class="btn cancel" onclick="fn_cancelEditComment(this)" style="display: inline;">취소</button>'
								+			'</div>'
								+			'<p>'+ answerCn +'</p>'
								+			'<span>'+ writngTm +'</span>'
								+			'<div class="btnCommentUD">'
								+				'<button type="button" class="btn" onclick="fn_openEditComment(this)">'
								+					'<i class="far fa-edit"></i>'
								+				'</button>'
								+				'<button type="button" class="btn" onclick="fn_deleteComment(this)">'
								+					'<i class="fas fa-times"></i>'
								+				'</button>'
								+			'</div>'
								+		'</div>'
								+	'</li>';
							
						
							
						$(".ulComment").append(str);
						var answerCount = $(".ulComment li").length;
						var answerInfo = '<span><i class="far fa-comment mr-2"></i></span><span>댓글('+ answerCount +')</span>';
						$(".surveyCommentTitle").empty();
						$(".surveyCommentTitle").append(answerInfo);
						answerObj.val(null);
						answerObj.focus();
					}
				}
			});
			
		});
		
		  
		  // [설문 제출] 클릭 시
		  $("#btnSurveyResultEdit").on("click", function(){
			  // 설문 번호
			  var qustnrNo = $("input[name='qustnrNo']").val();
			  console.log(qustnrNo);
			  
			  // 문항 번호 배열
			  var qesitmNoObj = $("input[name='qesitmNo']");
			  var qesitmNoArr = new Array();
			  for(var i=0; i<qesitmNoObj.length; i++){
				  var qesitmNo = qesitmNoObj[i].value;
				  qesitmNoArr.push(qesitmNo);
			  }
			  console.log(qesitmNoArr);
			  
			  // 수정한 응답 정보 배열(체크한 설문의 보기 번호를 가져옴)
			  var rspnsExNoArr = new Array();			// 보기 번호 배열
			  var rspnsCnArr = new Array();			// 응답 내용 배열
			  var rspnsScoreArr = new Array();		// 응답 점수 배열
			  for(var i=0; i<qesitmNoArr.length; i++){
				  var exNo1 = $("input[name='rspnsCn"+ qesitmNoArr[i] +"']:checked").siblings("input[name='exNo']").val();
				  var exNo2 = $("input[name='rspnsScore"+ qesitmNoArr[i] +"']:checked").siblings("input[name='exNo']").val();
				  if(exNo1 != null){
					  rspnsExNoArr.push(exNo1);
				  }
				  if(exNo2 != null){
					  rspnsExNoArr.push(exNo2);
				  }
				  var rspnsCn = $("input[name='rspnsCn"+ qesitmNoArr[i] +"']:checked").val();
				  var rspnsScore = $("input[name='rspnsScore"+ qesitmNoArr[i] +"']:checked").val();
				  if(rspnsCn == null){
					  rspnsCn = "null";
				  }
				  if(rspnsScore == null){
					  rspnsScore = 0;
				  }
				  rspnsCnArr.push(rspnsCn);
				  rspnsScoreArr.push(rspnsScore);
			  }
			  
			  // 기존 응답 보기 번호 배열
			  var beforeExNoArr = new Array();
			  <c:forEach var="before" items="${rspnsResultList}">
			  	beforeExNoArr.push(${before.exNo});
			  </c:forEach>
			  
			  console.log(rspnsExNoArr);
			  console.log(rspnsCnArr);
			  console.log(rspnsScoreArr);
			  console.log(beforeExNoArr);
			  
			  $("#surveyResultEditFrm input[name='qustnrNo']").val(qustnrNo);
			  $("#surveyResultEditFrm input[name='qesitmNoArr']").val(qesitmNoArr);
			  $("#surveyResultEditFrm input[name='rspnsExNoArr']").val(rspnsExNoArr);
			  $("#surveyResultEditFrm input[name='rspnsCnArr']").val(rspnsCnArr);
			  $("#surveyResultEditFrm input[name='rspnsScoreArr']").val(rspnsScoreArr);
			  $("#surveyResultEditFrm input[name='beforeExNoArr']").val(beforeExNoArr);
			  
			  if(rspnsExNoArr.length != qesitmNoObj.length){
				  alert("보기를 선택해주세요");
				  return false;
			  }
			  
 			  $("#surveyResultEditFrm").submit();
			
			  
		  });
		  
	});	// end jquery
	
	// 설문 수정
	function fn_surveyEdit(){
		var check = confirm("설문 수정 중에는 설문이 일시적으로 중지됩니다.");
		
		if(check){
			location.href = "/survey/surveyEdit/" + ${detailSurveyList[0].qustnrNo};	
		}else {
			return;
		}
	}
	
	// 설문 삭제
	function fn_deleteSurvey(){
		// form 객체 생성
		var newForm = $('<form></form>'); 
		
		// form 속성 추가
		newForm.attr("method","post"); 
		newForm.attr("action","/survey/delete");  
		
		// form에 input 객체 추가
		newForm.append( $('<input type="hideen" name="qustnrNo" value="${detailSurveyList[0].qustnrNo}">') );
		newForm.append( $('<input type="hideen" name="fileNo" value="${detailSurveyList[0].fileNo}">') );
		newForm.append( $('<input type="hideen" name="flag" value="0">') );
		
		// 만들어진 form을 body에 추가
		newForm.appendTo($("#body")); 
		
		console.log(newForm);
		
		var check = confirm("설문을 삭제하시겠습니까?\n(삭제된 설문은 복구할 수 없습니다.)");
		
		if(check){
			newForm.submit();	
		}else {
			return;
		}
		

	}
	
	// 설문 중지
	function fn_surveyStatusEditStop(){
		var newForm = $('<form></form>'); 
		
		// form 속성 추가
		newForm.attr("method","post"); 
		newForm.attr("action","/survey/surveyStatusEditStop");  
		
		// form에 input 객체 추가
		newForm.append( $('<input type="hideen" name="qustnrNo" value="${detailSurveyList[0].qustnrNo}">') );
		newForm.append( $('<input type="hideen" name="flag" value="0">') );
		
		// 만들어진 form을 body에 추가
		newForm.appendTo($("#body")); 
		
		console.log(newForm);
		
		var check = confirm("설문을 중지하시겠습니까?");
		
		if(check){
			newForm.submit();	
		}else {
			return;
		}
	}
	
	// 설문 진행
	function fn_surveyStatusEditRun(){
		var newForm = $('<form></form>'); 
		
		// form 속성 추가
		newForm.attr("method","post"); 
		newForm.attr("action","/survey/surveyStatusEditRun");  
		
		// form에 input 객체 추가
		newForm.append( $('<input type="hideen" name="qustnrNo" value="${detailSurveyList[0].qustnrNo}">') );
		newForm.append( $('<input type="hideen" name="flag" value="0">') );
		
		// 만들어진 form을 body에 추가
		newForm.appendTo($("#body")); 
		
		console.log(newForm);
		
		var check = confirm("설문을 진행하시겠습니까?");
		
		if(check){
			newForm.submit();	
		}else {
			return;
		}
	}
	
	// 설문 마감
	function fn_surveyStatusEditDone(){
		var newForm = $('<form></form>'); 
		
		// form 속성 추가
		newForm.attr("method","post"); 
		newForm.attr("action","/survey/surveyStatusEditDone");  
		
		// form에 input 객체 추가
		newForm.append( $('<input type="hideen" name="qustnrNo" value="${detailSurveyList[0].qustnrNo}">') );
		newForm.append( $('<input type="hideen" name="flag" value="0">') );
		
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
	
	// 자신의 댓글에 hover 시, [수정],[삭제] 아이콘 띄우기
	function fn_UDshow(obj){
		$(obj).hover(function(){
			$(this).find(".btnCommentUD").css("display", "block");
		}, function(){
			$(this).find(".btnCommentUD").css("display", "none");
		});
	}
	
	// 댓글 수정 아이콘 클릭 시
	function fn_openEditComment(obj){
		var answerCn = $(obj).parents(".comments").find("p").text();
		$(obj).parents("li").find(".editComment input[name='answerCn']").val(answerCn);
		$(obj).parents("li").find(".editComment").css("display", "block");
		$(obj).parents("li").find(".comments p").css("display", "none");
		$(obj).parents("li").find(".comments span").css("display", "none");
	}
	
	// 댓글 수정 - [수정] 클릭 시
	function fn_editComment(obj){
		var qustnrNo = ${detailSurveyList[0].qustnrNo};
		var updtEmpno = ${sessionScope.empVo.empno};
		var answerObj = $(obj).parents("li").find("input[name='answerCn']");
		var answerCn = answerObj.val();
		var answerNo = $(obj).parents("li").find("input[name='answerNo']").val();
		
		var now = new Date();
		var year = now.getFullYear();	// 연
		var month = now.getMonth() + 1;	// 월 
		var date = now.getDate();		// 일
		var hour = now.getHours();		// 시
		var min = now.getMinutes();		// 분
		
		// 1~9월, 1~9일, 0~9시 앞에 0 붙여주기
		if(month < 10){
			month = "0" + month;
		}
		if(date < 10){
			date = "0" + date;
		}
		if(hour < 10){
			hour = "0" + hour;
		}
		if(min < 10){
			min = "0" + min;
		}
		if(fn_isEmpty(answerCn)){
			alert("댓글을 입력하세요.");
			return false;
		}
		
		var updtTm = year + "-" + month + "-" + date + " " + hour + ":" + min;
		
		var AjaxData = {"qustnrNo" : qustnrNo, "updtEmpno" : updtEmpno, "answerCn" : answerCn, "answerNo" : answerNo};
		
		$.ajax({
			url : "/survey/editSurveyAnswer"
			, type : "post"
			, data : AjaxData
			, success : function(result){
				if(result > 0){
					$(obj).parents("li").find(".editComment").css("display", "none");
					answerObj.val(answerCn);
					$(obj).parents("li").find(".comments p").text(answerCn);
					$(obj).parents("li").find(".comments .tm").text(updtTm);
					$(obj).parents("li").find(".comments p").css("display", "block");
					$(obj).parents("li").find(".comments span").css("display", "inline");
				}
			}
		});
	}
	
	// 댓글 수정 - [취소] 클릭 시
	function fn_cancelEditComment(obj){
		$(obj).parents("li").find(".editComment").css("display", "none");
		$(obj).parents("li").find(".comments p").css("display", "block");
		$(obj).parents("li").find(".comments span").css("display", "inline");
	}
	
	// 댓글 삭제(댓글 삭제 아이콘 클릭 시)
	function fn_deleteComment(obj){
		var qustnrNo = ${detailSurveyList[0].qustnrNo};
		var answerNo = $(obj).parents("li").find("input[name='answerNo']").val();
		
		var AjaxData = {"qustnrNo" : qustnrNo, "answerNo" : answerNo};
		
		$.ajax({
			url : "/survey/deleteSurveyAnswer"
			, type : "post"
			, data : AjaxData
			, success : function(result){
				if(result > 0){
					$(obj).parents("li").remove();
					var answerCount = $(".ulComment li").length;
					var answerInfo = '<span><i class="far fa-comment mr-2"></i></span><span>댓글('+ answerCount +')</span>';
					$(".surveyCommentTitle").empty();
					$(".surveyCommentTitle").append(answerInfo);
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
		<div class="surveyDetailTitle">
			<h3>설문 상세</h3>
		</div>
		<!-- 권한에 따른 설정 -->
		<c:if test="${detailSurveyList[0].wrterEmpno == sessionScope.empVo.empno}">
		
		<!-- 설문이 마감 상태가 아닐 때 -->
		<c:if test="${detailSurveyList[0].qustnrStatus != 'QU02'}">
		<div class="surveyDetailRUD">
			<a onclick="fn_surveyEdit()"><span><i class="far fa-edit mr-2"></i></span><span>수정</span></a>
			
			<c:if test="${detailSurveyList[0].qustnrStatus == 'QU01'}">
			<a onclick="fn_surveyStatusEditStop()"><span><i class="fas fa-ban mr-2"></i></span><span>중지</span></a>
			</c:if>
			<c:if test="${detailSurveyList[0].qustnrStatus == 'QU03'}">
			<a onclick="fn_surveyStatusEditRun()"><span><i class="far fa-play-circle mr-2"></i></span><span>진행</span></a>
			</c:if>
			
			<a onclick="fn_surveyStatusEditDone()"><span><i class="far fa-clock mr-2"></i></span><span>마감</span></a>
			<a onclick="fn_deleteSurvey()"><span><i class="far fa-trash-alt mr-2"></i></span><span>삭제</span></a>
			<a href="/survey/home" class="surveyList"><span><i class="fas fa-bars mr-2"></i></span><span>목록</span></a>
		</div>
		</c:if>
		
		<!-- 설문이 마감상태 일 때 -->
		<c:if test="${detailSurveyList[0].qustnrStatus == 'QU02'}">
		<div class="surveyDetailRUD">
			<a onclick="fn_deleteSurvey()"><span><i class="far fa-trash-alt mr-2"></i></span><span>삭제</span></a>
			<a href="/survey/home" class="surveyList" style="float: none;"><span><i class="fas fa-bars mr-2"></i></span><span>목록</span></a>
		</div>
		</c:if>
		
		</c:if>
		
		<c:if test="${detailSurveyList[0].wrterEmpno != sessionScope.empVo.empno}">
		<div class="surveyDetailRUD">
			<a href="/survey/home" class="surveyList" style="float: none;"><span><i class="fas fa-bars mr-2"></i></span><span>목록</span></a>
		</div>
		</c:if>
		<div class="surveyDetailContent">
			<div class="surveyInfo">
				<h3>${detailSurveyList[0].qustnrSj}</h3>
				<table class="table">
					<colgroup>
						<col width="120px">
						<col width="auto">
					</colgroup>
					<tbody>
						<tr class="trSurveyWriter">
							<td>작성자</td>
							<td>
								<span>${detailSurveyList[0].wrterNm}&nbsp;${detailSurveyList[0].ofcpsNm}</span>
							</td>
						</tr>
						<tr class="trSurveyWriteDate">
							<td>작성일</td>
							<td><span>${detailSurveyList[0].writingDe}</span></td>
						</tr>
						<tr class="trSurveyDate">
							<td>설문 기간</td>
							<td><span>${detailSurveyList[0].beginDe} ~ ${detailSurveyList[0].endDe}</span></td>
						</tr>
						<tr class="trSurveyEditOption">
							<td>참여 후 수정</td>
							<c:if test="${detailSurveyList[0].afterUpdtAt eq 'Y'}">
							<td><span>허용</span></td>
							</c:if>
							<c:if test="${detailSurveyList[0].afterUpdtAt eq 'N'}">
							<td><span>허용안함</span></td>
							</c:if>
						</tr>
						<tr class="trSurveyResultOption">
							<td>설문 결과</td>
							<c:if test="${detailSurveyList[0].othbcAt eq 'Y'}">
							<td><span>공개</span></td>
							</c:if>
							<c:if test="${detailSurveyList[0].othbcAt eq 'N'}">
							<td><span>비공개</span></td>
							</c:if>
						</tr>
					</tbody>
				</table>
				
				<div class="divSurveyDesc">
					<p>${detailSurveyList[0].guidanceSntenc}</p>
					<c:if test="${detailSurveyList[0].fileNo != 0}">
					<div class="surveyFile">
					<c:forEach var="surveyFile" items="${detailSurveyList}">
						<p>
							<span><i class="fas fa-paperclip mr-2"></i>${surveyFile.fileOrginlNm}</span><span class="fileDownload" onclick="javascript:location.href='/download?fileNo=${surveyFile.fileNo}&fileOrdr=${surveyFile.fileOrdr}'"><i class="fas fa-download ml-3"></i></span>
						</p>
					</c:forEach>
					</div>
					<div class="row surveyFileImg">
					<c:forEach var="surveyFileImg" items="${detailSurveyList}">
					<c:set var="extsn" value="${fn:toLowerCase(surveyFileImg.extsn)}" />
					<c:if test="${extsn == 'jpg' || extsn == 'png' || extsn == 'jpeg' || extsn == 'jfif' || extsn == 'bmp'}">
						<div class="col-sm-3">
							<img src="/reload?fileNo=${surveyFileImg.fileNo}" alt="${surveyFileImg.fileOrginlNm}">
						</div>
					</c:if>
					</c:forEach>
					</div>
					</c:if>
				</div>
				
			</div>
			
			<!-- 설문  시작 -->
			<div class="divAddQuestionResultList">
				<input type="hidden" name="qustnrNo" value="${detailSurveyList[0].qustnrNo}">	<!-- 설문 번호 -->
				<input type="hidden" name="rspnsEmpno" value="${sessionScope.empVo.empno}">	<!-- 설문 대상자 번호 -->
				<c:forEach var="qesitm" items="${detailSurveyQesitm}">
				<c:if test="${qesitm.qesitmType == 'QE01'}">
				<div class="divAddQuestion">
					<div class="divAddQuestionResultTitle">
						<input type="hidden" name="qesitmNo" value="${qesitm.qesitmNo}">	<!-- 문항 번호-->
						<span>${qesitm.qesitmNo}.&nbsp;&nbsp;&nbsp;${qesitm.cn}</span>
					</div>
					<div class="divAddQuestionResult">
						<ul>
							<c:forEach var="ex" items="${detailSurveyEx}">
							<c:if test="${qesitm.qesitmNo == ex.qesitmNo}">
							<c:forEach var="rspnsResult" items="${rspnsResultList}">
							<c:if test="${ex.exCn == rspnsResult.rspnsCn && ex.qesitmNo == rspnsResult.qesitmNo}">
							<li>
								<input type="hidden" name="exNo" value="${ex.exNo}">	<!-- 보기 번호 -->
								<input type="radio" class="question-radio" name="rspnsCn${qesitm.qesitmNo}" value="${ex.exCn}" checked="checked">&nbsp;
								<label>${ex.exCn}</label>
							</li>
							</c:if>
							<c:if test="${ex.exCn != rspnsResult.rspnsCn && ex.qesitmNo == rspnsResult.qesitmNo}">
							<li>
								<input type="hidden" name="exNo" value="${ex.exNo}">	<!-- 보기 번호 -->
								<input type="radio" class="question-radio" name="rspnsCn${qesitm.qesitmNo}" value="${ex.exCn}">&nbsp;
								<label>${ex.exCn}</label>
							</li>
							</c:if>
							</c:forEach>
							</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				</c:if>
				<c:if test="${qesitm.qesitmType == 'QE02'}">
				<div class="divAddQuestion">
					<div class="divAddQuestionResultTitle">
						<input type="hidden" name="qesitmNo" value="${qesitm.qesitmNo}">	<!-- 문항 번호-->
						<span>${qesitm.qesitmNo}.&nbsp;&nbsp;&nbsp;${qesitm.cn}</span>
					</div>
					<div class="divAddQuestionResult">
						<ul>
							<c:forEach var="ex" items="${detailSurveyEx}">
							<c:if test="${qesitm.qesitmNo == ex.qesitmNo}">
							<c:forEach var="rspnsResult" items="${rspnsResultList}">
							<c:if test="${ex.exScore == rspnsResult.rspnsScore && ex.qesitmNo == rspnsResult.qesitmNo}">
							<li>
								<input type="hidden" name="exNo" value="${ex.exNo}">
								<input type="radio" class="question-radio" name="rspnsScore${qesitm.qesitmNo}" value="${ex.exScore}" checked="checked">&nbsp;
								<label>${ex.exScore}점</label>
							</li>
							</c:if>
							<c:if test="${ex.exScore != rspnsResult.rspnsScore && ex.qesitmNo == rspnsResult.qesitmNo}">
							<li>
								<input type="hidden" name="exNo" value="${ex.exNo}">
								<input type="radio" class="question-radio" name="rspnsScore${qesitm.qesitmNo}" value="${ex.exScore}">&nbsp;
								<label>${ex.exScore}점</label>
							</li>
							</c:if>
							</c:forEach>
							</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				</c:if>
				</c:forEach>
				<div class="btnSurveySubmit">
					<button type="button" class="btn" id="btnSurveyResultEdit">설문 제출</button>
					<button type="button" class="btn" id="btnSurveyResultCancel" onclick="javascript:location.href='/survey/detail/${detailSurveyList[0].qustnrNo}'">취소</button>
				</div>
			</div>
				
			<!-- 설문  끝 -->

			<!-- 응답 제출을 위한 form -->
			<form id="surveyResultEditFrm" action="/survey/surveyResultEdit" method="post">
				<input type="hidden" name="qustnrNo">
				<input type="hidden" name="rspnsEmpno" value="${sessionScope.empVo.empno}">
				<input type="hidden" name="qesitmNoArr">
				<input type="hidden" name="rspnsExNoArr">
				<input type="hidden" name="rspnsCnArr">
				<input type="hidden" name="rspnsScoreArr">
				<input type="hidden" name="beforeExNoArr">
			</form>
			
		</div>
		<c:if test="${detailSurveyList[0].answerAt == 'Y'}">
		<div class="surveyComment">
			<div class="surveyCommentTitle">
				<span><i class="far fa-comment mr-2"></i></span><span>댓글(${surveyAnswerList.size()})</span>
			</div>
			
				<c:if test="${detailSurveyList[0].qustnrStatus == 'QU01'}">
				<div class="surveyMyComment">
					<c:set var="fileCours" value="${fn:replace(sessionScope.empVo.fileCours,'\\\\','/')}" />
					<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">
					<input type="text" class="form-control" name="answerCn">
					<button type="button" class="btn" id="btnSurveyCommentAdd">등록</button>
				</div>
				</c:if>

			<div class="surveyCommentList">
				<ul class="ulComment">
				<c:forEach var="answer" items="${surveyAnswerList}">
				<c:if test="${not empty answer}">
					<li onmouseover="fn_UDshow(this)">
						<input type="hidden" name="answerNo" value="${answer.answerNo}">
						<span class="photo">
							<c:set var="fileCours" value="${fn:replace(answer.fileCours,'\\\\','/')}" />
							<c:set var="url" value="/resources/upload/" />
							<img src="/reload?fileNo=${answer.fileNo}">
						</span>
						<div class="comments">
							<div class="editComment">
								<input type="text" name="answerCn" class="form-control" style="display: inline;">
								<button type="button" class="btn" onclick="fn_editComment(this)" style="display: inline;">수정</button>
								<button type="button" class="btn cancel" onclick="fn_cancelEditComment(this)" style="display: inline;">취소</button>
							</div>
							<span class="wrter">${answer.wrterNm}&nbsp;${answer.ofcpsNm}</span>
							<p>${answer.answerCn}</p>
							<span class="tm">${answer.updtTm}</span>
							<c:if test="${answer.wrterEmpno == sessionScope.empVo.empno}">
							<div class="btnCommentUD">
								<button type="button" class="btn" onclick="fn_openEditComment(this)">
									<i class="far fa-edit"></i>
								</button>
								<button type="button" class="btn" onclick="fn_deleteComment(this)">
									<i class="fas fa-times"></i>
								</button>
							</div>
							</c:if>
						</div>
					</li>
				</c:if>
				</c:forEach>
				</ul>
			</div>
		</div>
		</c:if>
		
	</div>
</div>
