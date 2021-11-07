<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	.surveyCreate-step1 .surveyAttachFile {padding-top: 10px; padding-bottom: 10px;}
	.surveyCreate-step1 .surveyAttachFile label {margin: 0px;}
	.surveyCreate-step1 .surveyAttachFile span, .divQuestion .divAddExam span, .divQuestion-edit .divAddExam span {border: 1px solid #55beff; background-color: #55beff; color: white; padding: 5px;}
	.surveyCreate-step1 .surveyAttachFile span:hover, .divQuestion .divAddExam span:hover {border-color: #009dff; background-color: #009dff; cursor: pointer;}
	.surveyCreate-step1 .surveyAttachedFile {border:1px dashed #dddddd; min-height: 60px; padding: 10px;}
	.surveyCreate-step1 .surveyAttachedFile p {padding: 5px 10px 5px 10px; margin-bottom: 0px;}
	.surveyCreate-step1 .surveyAttachedFile .deleteFile:hover {cursor: pointer;}
	.surveyCreate-step1 .attahcedFileImg {margin-top: 20px;}
	.surveyCreate-step1 .attahcedFileImg img {max-width: 350px; max-height: 250px;}
	
	.divAddQuestionResultList {border-bottom: 1px solid #dddddd; padding: 20px 10px 20px 10px;}
	.divAddQuestionResultList span {font-weight: bold;}
	.divAddQuestionResultList ul {list-style: none; margin-bottom: 0px; margin-top: 10px;}
	.divAddQuestionResultList label {font-weight: normal !important; font-size: 0.9rem;}
	.divAddQuestionResultList .addQuestionResultUD {float: right; margin-left: 15px; margin-right: 15px; padding: 5px;}
	.divAddQuestionResultList .addQuestionResultUD:hover {cursor: pointer; background-color: #dddddd;} 
	
	.divQuestion .table, .table input {font-size: 0.9rem;}
	.divQuestion .table th {font-weight: bold; border-color: white; padding-top: 20px;}
	.divQuestion .table td {border-color: white;}
	.divQuestion .table label {margin-right: 15px; margin-left: 5px; font-weight: normal;}
	
	.divQuestion-edit .table, .table input {font-size: 0.9rem;}
	.divQuestion-edit .table th {font-weight: bold; border-color: white; padding-top: 20px;}
	.divQuestion-edit .table td {border-color: white;}
	.divQuestion-edit .table label {margin-right: 15px; margin-left: 5px; font-weight: normal;}
	
	.divAddQuestion {padding: 30px; text-align: center;}
	.divAddQuestion #btnAddQuestion {border: 1px solid #dddddd; width: 35%; height: 45px; font-size: 0.9rem;}
	
	.divQuestion {padding: 20px; border-bottom: 1px solid #dddddd;}
	.divQuestion .table .divSelect {float: left; margin-right: 10px;}
	.divQuestion .table .divSelect select {font-size: 0.9rem;}
	.divQuestion .divAddExam {padding-top: 10px;}
	.divQuestion .addedExam {display: flex; margin-top: 15px;}
	.question-check, .question-radio {margin-right: 5px;}
	.divQuestion .addedExam input {height: 30px;}
	.divQuestion .addedExam span {padding-left: 10px; padding-top: 5px; cursor: pointer;}
	
	.divQuestion-edit {padding: 20px; border-bottom: 1px solid #dddddd;}
	.divQuestion-edit .table .divSelect {float: left; margin-right: 10px;}
	.divQuestion-edit .table .divSelect select {font-size: 0.9rem;}
	.divQuestion-edit .divAddExam {padding-top: 10px;}
	.divQuestion-edit .addedExam {display: flex; margin-top: 15px;}
	.divQuestion-edit .addedExam input {height: 30px;}
	.divQuestion-edit .addedExam span {padding-left: 10px; padding-top: 5px; cursor: pointer;}
	
	.divQuestionBtn {text-align: center; padding: 10px;}
	
	.divSurveyBtn {text-align: center;}
	.divSurveyBtn button, .divQuestionBtn button {border: 1px solid #dddddd; margin-right: 10px; width: 100px; font-size: 0.9rem;}
	.divSurveyBtn #btnSurveyCreate, .divQuestionBtn .btnQuestionCreate {border-color: #55beff; background-color: #55beff; color: white;}
	.divSurveyBtn #btnSurveyCreate:hover, .divQuestionBtn .btnQuestionCreate:hover {background-color: #009dff; border-color: #009dff;}
	.divSurveyBtn #btnSurveyPrev:hover, #btnSurveySave:hover, .divAddQuestion #btnAddQuestion:hover {background-color: #dddddd;}
	
</style>
<script type="text/javascript">
	$(function(){
	
		
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
		
		$("input[type=date]").val(sysdate);
		
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
			// 아닐시 설문 대상자 비우기
			}else{
				$("#addMemberList").empty();
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
		
		// 설문 등록 
		$("#btnSurveyCreate").on("click", function(){
			var qustnrSj = $("input[name='qustnrSj']");			// 설문 제목
			var cnArr = $("input[name='cnArr']");		// [문항 추가] - 질문 제목
			var exCnForArr = $("input[name='exCnForArr']");		// [문항 추가] - [+ 보기] - 보기 내용
			var codeArr = $(".divAddQuestionResultList codeArr").val();		// 설문 문항 타입
			
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
			// 문항 존재 여부 체크
			if($(".divAddQuestionResultList").length == 0){
				alert("문항을 추가 해주세요.");
				return false;
			}else{	// 문항이 존재하면..
				// 질문 빈 값 체크
				if(fn_isEmpty(cnArr.val())){
					alert("질문을 입력하세요.");
					cnArr.focus();
					return false;
				}
				// '선택형'일 때만 보기 체크
				if(codeArr == "QE01"){
					// 보기 존재 여부 체크
					if($(".addedExam").length == 0){
						alert("보기를 추가 해주세요.");
						return false;
					}else{	// 보기가 존재하면..
						// 보기 내용 빈 값 체크
						if(fn_isEmpty(exCnForArr.val())){
							alert("보기 내용을 입력하세요.");
							exCnForArr.focus();
							return false;
						}
					}
				}
			}
			
			
  			$("#frm").submit();
			
		});
		
		// 설문 작성 취소
		$("#btnSurveyCancel").on("click", function(){
			if($("input[name='fileNo']").length > 0){
				var fileNo = $("input[name='fileNo']")[0].value;
				$.ajax({
					url : "/file/deleteAllFile"
					, type : "post"
					, data : {"fileNo" : fileNo}
					, success : function(result){
						if(result > 0){
							location.href = "/survey/home";
						}
					}
				});	
			}else {
				location.href = "/survey/home";
			}
			
		});
		
		// '+ 파일' 클릭 시, 파일 이름(파일 크기) 보이기
		$("#file").on('change',function(){
			var formData = new FormData();
			var file = $("#file");			// 파일 객체
			var files = file[0].files;		// 파일 
			console.log(files);
			var fileName = file.val().split('\\').pop();	// 파일 이름
			var fileSize = file[0].files[0].size;	// 파일 크기
			
			formData.append("uploadFile", files[0]);
			
			// 파일 업로드
			$.ajax({
				url: "/file/fileAjaxAction"
				, async : false
				, processData: false
				, contentType: false
				, data: formData
				, type: 'post'
				, dataType: 'json'
				, success : function(file){
	 				// 파일번호 구하기
	 				$.ajax({
	 					url : "/file/getFileNo"
	 					, async : false
	 					, type : "get"
	 					, success : function(fileNo){
	 						if($("input[name='fileNo']").length == 0){
		 						file[0].fileNo = fileNo;
		 						console.log(file[0].fileNo);
	 						}else {
	 							file[0].fileNo = $("input[name='fileNo']")[0].value
	 							console.log(file[0].fileNo);
	 						}
	 					}
	 				});
	 				// 최대 파일 순서 구하기
	 				$.ajax({
	 					url : "/file/getMaxFileOrdr"
	 					, async : false
	 					, type : "post"
	 					, data : {"fileNo" : file[0].fileNo}
	 					, success : function(fileOrdr){
	 						console.log(fileOrdr)
	 						file[0].fileOrdr = fileOrdr;
	 					}
	 				});
	 				
	 				console.log(file);
	 				
	 				// 파일 insert
	 				$.ajax({
						url : "/file/createdFileInfo"
						, type : "post"
						, data : file[0] 
						, success : function(fileInfo){
							var str = '<p>'
			 					+	'<span><i class="fas fa-paperclip mr-2"></i></span>'+ file[0].fileOrginlNm +'<span>('+ fileSizePrint(file[0].fileSize) +')</span>'
			 					+	'<span class="deleteFile" onclick="fn_deleteFile('+file[0].fileNo+', '+ file[0].fileOrdr +', this)"><i class="fas fa-times ml-2"></i></span>'
			 					+	'<input type="hidden" name="fileNo" value="'+ file[0].fileNo +'">'
			 					+'</p>';
			 				$(".surveyAttachedFile").append(str);
			 				
			 				var reg = /(.*?)\/(jpg|jpeg|png|bmp|jfif)$/;	// 이미지를 구분하기 위한 정규표현식
							if(files[0].type.match(reg)){
								var imgObj = '<div class="col-sm-4"><img id="img'+  file[0].fileOrdr +'" src="" alt="" onclick="fn_openImg(this)"></div>';
								$(".attahcedFileImg").append(imgObj);
								
								var reader = new FileReader();
					            reader.onload = function(e) {
					                $(".attahcedFileImg #img"+ file[0].fileOrdr +"").attr("src", e.target.result);
					                $(".attahcedFileImg #img"+ file[0].fileOrdr +"").attr("alt", file[0].fileOrginlNm);
					            }
					            reader.readAsDataURL(files[0]);
							}
						}
	 				});
	 				
				}
	 				
			});
			
			
		});
		
		
		// [문항추가] 클릭 시, 문항 추가하기
		$("#btnAddQuestion").on("click", function(){
			var str = '<div class="divQuestion">'
					+	'<table class="table">'
					+	'<colgroup>'
					+		'<col width="150px">'
					+		'<col width="auto">'
					+	'</colgroup>'
					+	'<tbody>'
					+		'<tr>'
					+			'<th>질문</th>'
					+			'<td><input type="text" class="form-control" name="cnArr"></td>'
					+		'</tr>'
					+		'<tr>'
					+			'<th>설문 문항 타입</th>'
					+			'<td>'
					+				'<div class="divSelect">'
					+					'<select class="form-control selectType" name="codeArr" onchange="fn_select1Change(this)">'
					+						'<option value="QE01">선택형</option>'
					+						'<option value="QE02">점수형</option>'
					+					'</select>'
					+				'</div>'
					+			'</td>'
					+		'</tr>'
					+		'<tr id="exam">' 
					+			'<th>보기</th>'
					+			'<td class="thExam">'
					+				'<div class="divAddExam">'
					+					'<span onclick="fn_addExam(this)"><i class="fas fa-plus mr-2"></i>보기</span>'
					+				'</div>'
					+			'</td>'
					+		'</tr>'
					+	'</tbody>'
					+ '</table>'
					+'<div class="divQuestionBtn">'
					+	'<button type="button" class="btn btnQuestionCreate" onclick="fn_questionCreate(this)">완료</button>'
					+	'<button type="button" class="btn btnQuestionCancel" onclick="fn_questionCancel(this)">취소</button>'
					+'</div>';
					
			$("#frm").append(str);
		});
		
	});	// jquery end
	
	// 설문 대상자 개별 삭제
	function fn_deleteMember(obj){
		$(obj).parent(".surveyMember").remove();
	}
	
	
	// [문항추가] - [취소] 클릭 시, 문항 삭제
	function fn_questionCancel(obj){
		$(obj).parents(".divQuestion").remove();
	}
	
	// [+ 보기] 클릭 시, 보기 추가
	function fn_addExam(obj){
		var single = '<div class="addedExam">'
				+	'<input type="radio" class="question-radio">'
				+	'<input type="text" class="form-control" name="exCnForArr">'
				+	'<input type="hidden" name="exScoreForArr" value="0">'
				+	'<input type="hidden" name="exNoForArr">'
				+   '<span onclick="fn_addedExamCancel(this)"><i class="fas fa-times"></i></span>'
				+ '</div>';
				
		$(obj).parents(".thExam").append(single);	
	}
	
	// 보기 input의 'x' 클릭 시, 보기 삭제
	function fn_addedExamCancel(obj){
		$(obj).parents(".addedExam").remove();
	}
	
	// "선택형"만 보기 보이기
	function fn_select1Change(obj){
		if($(obj).val() == "QE01"){
			$(obj).parents("tr").siblings("#exam").css("display", "table-row");
		}else{
			$(obj).parents("tr").siblings("#exam").css("display", "none");
		}
	}
	
	// 문항 만들고 결과 보이기
	function fn_questionCreate(obj){
		var cnArrObj = $(obj).parents(".divQuestion").find("input[name='cnArr']");		// [문항 추가] - 질문 제목
		
		// 보기 내용을 위한 로직
		var exCnForArrObj = $(obj).parents(".divQuestion").find("input[name='exCnForArr']");		// [문항 추가] - [+ 보기] - 보기 내용
		var exCnArr = new Array();
		for(var i=0; i<exCnForArrObj.length; i++){
			exCnArr.push(exCnForArrObj[i].value);
		}
		
		var exScoreForArr = $(obj).parents(".divQuestion").find("input[name='exScoreForArr']");
		var exScoreArr = new Array();
		for(var i=0; i<exCnForArrObj.length; i++){
			exScoreArr.push(exScoreForArr[i].value);
		}
		console.log(exScoreArr);
		
		var exNoForArr = $(obj).parents(".divQuestion").find("input[name='exNoForArr']");
		var exNoArr = new Array();
		for(var i=0; i<exNoForArr.length; i++){
			exNoArr.push((i+1));
		}
		console.log(exNoArr);
		
		
		var selectType = $(obj).parents(".divQuestion").find(".selectType").val();		// 선택한 select1 option 값(0, 1)
// 		console.log(selectType);
		
		// 질문 빈 값 체크
		if(fn_isEmpty(cnArrObj.val())){
			alert("질문을 입력해주세요.");
			cnArrObj.focus();
			return false;
		}
		//  '선택형'일 때만 보기 존재 여부 체크
		if(selectType == "QE01"){
			if($(".addedExam").length == 0){
				alert("보기를 추가해주세요.");
				return false;
			}else{	// 보기가 존재하면..
				// 보기 내용 빈 값 체크
				for(var i=0; i<exCnForArrObj.length; i++){
					if(fn_isEmpty(exCnForArrObj[i].value)){
						alert("보기 내용을 입력해주세요.");
						exCnForArrObj[i].focus();
						return false;
					}
				}
				
			}
		}
		
		// 선택형 문항
		var choice = '<div class="divAddQuestionResultList">'
				+		'<input type="hidden" name="exCnArr" value="'+ exCnArr +'">'
				+		'<input type="hidden" name="exScoreArr" value="'+ exScoreArr +'">'
				+		'<input type="hidden" name="exNoArr" value="'+ exNoArr +'">'
				+		'<div class="divAddQuestionResultTitle">'
				+		'<input type="hidden" name="cnArr" value="'+ cnArrObj.val() +'">'
				+			'<span>'+ cnArrObj.val() +'</span>'
				+			'<span class="addQuestionResultUD" onclick="fn_addQuestionResultDelete(this)"><i class="far fa-trash-alt"></i></span>'
				+ 			'<span class="addQuestionResultUD" onclick="fn_addQuestionResultEdit(this)"><i class="far fa-edit"></i></span>'
				+		'</div>'
				+		'<input type="hidden" name="codeArr" value="'+ selectType +'">'
				+		'<div class="divAddQuestionResult">'
				+			'<ul>';
				
		for(var i=0; i<exCnForArrObj.length; i++){
			choice += '<li>'
					+	'<input type="radio" class="question-radio"><label>'+ exCnForArrObj[i].value +'</laber>'
					+	'<input type="hidden" name="exCnForArr" value="'+ exCnForArrObj[i].value +'">'
					+	'<input type="hidden" name="exScoreForArr" value="'+ exScoreForArr[i].value +'">'
					+	'<input type="hidden" name="exNoForArr" value="'+(i+1)+'">'
					+ '</li>';
		}
				
							
		choice += 			'</ul>'
				+		'</div>'
				+ '</div>';
		
				
		// 점수형 문항
		var point = '<div class="divAddQuestionResultList">'
			+		'<input type="hidden" name="exCnArr" value="null, null, null, null, null">'
			+		'<input type="hidden" name="exNoArr" value="1,2,3,4,5">'
			+		'<div class="divAddQuestionResultTitle">'
			+		'<input type="hidden" name="cnArr" value="'+ cnArrObj.val() +'">'
			+			'<span>'+ cnArrObj.val() +'</span>'
			+			'<span class="addQuestionResultUD" onclick="fn_addQuestionResultDelete(this)"><i class="far fa-trash-alt"></i></span>'
			+ 			'<span class="addQuestionResultUD" onclick="fn_addQuestionResultEdit(this)"><i class="far fa-edit"></i></span>'
			+		'</div>'
			+		'<input type="hidden" name="codeArr" value="'+ selectType +'">'
			+		'<input type="hidden" name="exScoreArr" value="1,2,3,4,5">'
			+		'<div class="divAddQuestionResult">'
			+			'<ul>'
			+				'<li>'
			+					'<input type="radio" class="question-radio"><label>1점</laber>'
			+			 	'</li>'
			+				'<li>'
			+					'<input type="radio" class="question-radio"><label>2점</laber>'
			+			 	'</li>'
			+				'<li>'
			+					'<input type="radio" class="question-radio"><label>3점</laber>'
			+			 	'</li>'
			+				'<li>'
			+					'<input type="radio" class="question-radio"><label>4점</laber>'
			+			 	'</li>'
			+				'<li>'
			+					'<input type="radio" class="question-radio"><label>5점</laber>'
			+			 	'</li>'
			+			'</ul>'
			+		'</div>'
			+ '</div>';
				
		// 선택형일 때 추가
		if(selectType == "QE01"){
			$("#frm").append(choice);
		}
		
		// 점수형일 때 추가
		if(selectType == "QE02"){
			$("#frm").append(point);
		}			
		
		// 추가 한 후 해당 객체 삭제
		$(obj).parents(".divQuestion").remove();
	}
	
	// 문항 결과 수정 정보 오픈
	function fn_addQuestionResultEdit(obj){
		var cnArrObj = $(obj).parents(".divAddQuestionResultList").find("input[name='cnArr']");
		var exCnForArrObj = $(obj).parents(".divAddQuestionResultList").find("input[name='exCnForArr']");
		var codeArr = $(obj).parents(".divAddQuestionResultList").find("input[name='codeArr']").val();
// 		console.log(codeArr);
		
		if(codeArr == "QE01"){
			// 선택형 문항
			var choice = '<div class="divQuestion-edit">'
				+	'<table class="table">'
				+	'<colgroup>'
				+		'<col width="150px">'
				+		'<col width="auto">'
				+	'</colgroup>'
				+	'<tbody>'
				+		'<tr>'
				+			'<th>질문</th>'
				+			'<td><input type="text" class="form-control" name="cnArr" value="'+ cnArrObj.val() +'"></td>'
				+		'</tr>'
				+		'<tr>'
				+			'<th>설문 문항 타입</th>'
				+			'<td>'
				+				'<div class="divSelect">'
				+					'<select class="form-control selectType" name="codeArr" onchange="fn_select1Change(this)">'
				+						'<option value="QE01" selected>선택형</option>'
				+						'<option value="QE02">점수형</option>'
				+					'</select>'
				+				'</div>'
				+			'</td>'
				+		'</tr>'
				+		'<tr id="exam">' 
				+			'<th>보기</th>'
				+			'<td class="thExam">'
				+				'<div class="divAddExam">'
				+					'<span onclick="fn_addExam(this)" style="cursor: pointer;"><i class="fas fa-plus mr-2"></i>보기</span>'
				+				'</div>';
				
			for(var i=0; i<exCnForArrObj.length; i++){
				choice += '<div class="addedExam">'
						+	'<input type="radio" class="question-radio">'
						+ 	'<input type="text" class="form-control" name="exCnForArr" value="'+ exCnForArrObj[i].value +'">'
						+	'<input type="hidden" name="exScoreForArr" value="0">'
						+	'<input type="hidden" name="exNoForArr" value="'+(i+1)+'">'
						+	'<span onclick="fn_addedExamCancel(this)"><i class="fas fa-times"></i></span></div>';	
			}	
			
			choice +=			'</td>'
				+		'</tr>'
				+	'</tbody>'
				+ '</table>'
				+'<div class="divQuestionBtn">'
				+	'<button type="button" class="btn btnQuestionCreate" onclick="fn_questionEdit(this)">수정</button>'
				+	'<button type="button" class="btn btnQuestionCancel" onclick="fn_questionEditCancel(this)">취소</button>'
				+'</div>'
			    +'</div>';
			
			    
			$(obj).parents(".divAddQuestionResultList").css("display", "none");
			$(obj).parents(".divAddQuestionResultList").after(choice);	
		}
		
		
		
		if(codeArr == "QE02"){
			// 점수형 문항
			var point = '<div class="divQuestion-edit">'
				+	'<table class="table">'
				+	'<colgroup>'
				+		'<col width="150px">'
				+		'<col width="auto">'
				+	'</colgroup>'
				+	'<tbody>'
				+		'<tr>'
				+			'<th>질문</th>'
				+			'<td><input type="text" class="form-control" name="cnArr" value="'+ cnArrObj.val() +'"></td>'
				+		'</tr>'
				+		'<tr>'
				+			'<th>설문 문항 타입</th>'
				+			'<td>'
				+				'<div class="divSelect">'
				+					'<select class="form-control selectType" name="codeArr" onchange="fn_select1Change(this)">'
				+						'<option value="QE01">선택형</option>'
				+						'<option value="QE02" selected>점수형</option>'
				+					'</select>'
				+				'</div>'
				+			'</td>'
				+		'</tr>'
				+		'<tr id="exam" style="display: none;">' 
				+			'<th>보기</th>'
				+			'<td class="thExam">'
				+				'<div class="divAddExam">'
				+					'<span onclick="fn_addExam(this)" style="cursor: pointer;"><i class="fas fa-plus mr-2"></i>보기</span>'
				+				'</div>'
				+			'</td>'
				+		'</tr>'
				+	'</tbody>'
				+ '</table>'
				+'<div class="divQuestionBtn">'
				+	'<button type="button" class="btn btnQuestionCreate" onclick="fn_questionEdit(this)">수정</button>'
				+	'<button type="button" class="btn btnQuestionCancel" onclick="fn_questionEditCancel(this)">취소</button>'
				+'</div>'
			    +'</div>';
			
			$(obj).parents(".divAddQuestionResultList").css("display", "none");
			$(obj).parents(".divAddQuestionResultList").after(point);	
		}   
		
	}
	
	// 문항 수정 - [수정] 클릭 시
	function fn_questionEdit(obj){
		// 바로 앞에 있는 divAddQuestionResultList의 객체
		var resultObj = $(obj).parents(".divQuestion-edit").prev();
// 		console.log(resultObj);
		
		var codeArr = $(obj).parents(".divQuestion-edit").find(".selectType").val();
// 		console.log(codeArr);
		
		// 문항 이름 수정
		var cnArrObj = $(obj).parents(".divQuestion-edit").find("input[name='cnArr']");
		resultObj.find("input[name='cnArr']").val(cnArrObj.val()); 
		resultObj.find("span:first").text(cnArrObj.val());
		
		
		
		// 선택형 일 때, 문항 보기 수정
		if(codeArr == "QE01"){
			var exCnForArrObj = $(obj).parents(".divQuestion-edit").find("input[name='exCnForArr']");
			var exCnArr = new Array();
			for(var i=0; i<exCnForArrObj.length; i++){
				exCnArr.push(exCnForArrObj[i].value);
			}
			console.log(exCnArr);
			
			var exScoreForArrObj = $(obj).parents(".divQuestion-edit").find("input[name='exScoreForArr']");
			var exScoreArr = new Array();
			for(var i=0; i<exCnForArrObj.length; i++){
				exScoreArr.push(exScoreForArrObj[i].value);
			}
			console.log(exScoreArr);
			
			var exNoForArrObj = $(obj).parents(".divQuestion-edit").find("input[name='exNoForArr']");
			var exNoArr = new Array();
			for(var i=0; i<exCnForArrObj.length; i++){
				exNoArr.push((i+1));
			}
			console.log(exNoArr);
			
			// 문항 비우기
			resultObj.find(".divAddQuestionResult ul").empty();
			
			// 질문 빈 값 체크
			if(fn_isEmpty(cnArrObj.val())){
				alert("질문을 입력해주세요.");
				cnArrObj.focus();
				return false;
			}
			//  '선택형'일 때만 보기 존재 여부 체크
			if($(".addedExam").length == 0){
				alert("보기를 추가해주세요.");
				return false;
			}else{	// 보기가 존재하면..
				// 보기 내용 빈 값 체크
				for(var i=0; i<exCnForArrObj.length; i++){
					if(fn_isEmpty(exCnForArrObj[i].value)){
						alert("보기 내용을 입력해주세요.");
						exCnForArrObj[i].focus();
						return false;
					}
				}
				
			}
			
			// 문항 데이터 출력
			for(var i=0; i<exCnForArrObj.length; i++){
				var choice = '<li>'
							+	'<input type="radio" class="question-radio"><label>'+ exCnForArrObj[i].value +'</label>'
							+	'<input type="hidden" name="exCnForArr" value="'+ exCnForArrObj[i].value +'">'
							+	'<input type="hidden" name="exScoreForArr" value="'+ exScoreForArrObj[i].value +'">'
							+	'<input type="hidden" name="exNoForArr" value="'+ (i+1) +'">'
							+'</li>';
							
				// 문항 데이터 넣기
				resultObj.find(".divAddQuestionResult ul").append(choice);
			}
			// 결과 div 보이기
			resultObj.css("display", "block");
			resultObj.find("input[name='codeArr']").val(codeArr);
			resultObj.find("input[name='exCnArr']").val(exCnArr);
			resultObj.find("input[name='exScoreArr']").val(exScoreArr);
			resultObj.find("input[name='exNoArr']").val(exNoArr);
			
			// 해당 객체 삭제
			$(obj).parents(".divQuestion-edit").remove();
		}
		
		// 점수형 일 때
		if(codeArr == "QE02"){
			resultObj.find(".divAddQuestionResult ul").empty();
			
			// 질문 빈 값 체크
			if(fn_isEmpty(cnArrObj.val())){
				alert("질문을 입력해주세요.");
				cnArrObj.focus();
				return false;
			}
			
			var point = '<li>'
					+		'<input type="radio" class="question-radio"><label>1점</laber>'
					+	'</li>'
					+	'<li>'
					+		'<input type="radio" class="question-radio"><label>2점</laber>'
					+	'</li>'
					+	'<li>'
					+		'<input type="radio" class="question-radio"><label>3점</laber>'
					+	'</li>'
					+	'<li>'
					+		'<input type="radio" class="question-radio"><label>4점</laber>'
					+	'</li>'
					+	'<li>'
					+		'<input type="radio" class="question-radio"><label>5점</laber>'
					+	'</li>';
					
			resultObj.find(".divAddQuestionResult ul").append(point);
			resultObj.css("display", "block");
			resultObj.find("input[name='codeArr']").val(codeArr);
			
			// 해당 객체 삭제
			$(obj).parents(".divQuestion-edit").remove();
		}
		
		
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
	
	// 문항 수정  - [취소] 클릭 시
	function fn_questionEditCancel(obj){
		var resultObj = $(obj).parents(".divQuestion-edit").prev();
		console.log(resultObj);
		resultObj.css("display", "block");
		
		$(obj).parents(".divQuestion-edit").remove();
	}
	
	// 문항 결과 삭제
	function fn_addQuestionResultDelete(obj){
		$(obj).parents(".divAddQuestionResultList").remove();
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
			<h3>설문 작성</h3>
		</div>
		<form id="frm" method="post" action="/survey/create">
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
							<td><input type="text" class="form-control" name="qustnrSj"></td>
						</tr>
						<tr class="surveyDate">
							<th class="th"><span>설문 기간</span></th>
							<td class="surveyDateSelect">
								<input type="date" class="form-control" id="beginDe" name="beginDe"><span>~</span><input type="date" id="endDe" class="form-control" name="endDe">
							</td>
						</tr>
						<tr class="surveyMember">
							<th><span>설문 대상자</span></th>
							<td>
								<input type="radio" id="surveyMemberAllSelect" name="member" checked="checked">
								<label for="surveyMAllSelect">MS그룹</label>
								<input type="radio" id="surveyMemberSelect" name="member">
								<label for="surveyMemberSelect">직접 선택</label>
								<div class="surveyMemberSelectList">
									<button type="button" id="btnSurveyMemberAdd"><i class="fas fa-plus mr-2"></i>추가</button>
									<button type="button" id="btnAllSurveyMemberDelete"><i class="far fa-trash-alt mr-2"></i>전체 삭제</button>
									<div class="row" id="addMemberList">
									</div>
								</div>
								<div class="desc">
									<span>※ 'MS그룹' 선택 시, 하위 모든 부서까지 범위가 설정됩니다.</span><br>
									<span style="color: blue;">※ 'MS그룹' 선택 시, '직접 선택'의 설문 대상자는 초기화됩니다.</span>
								</div>
							</td>
						</tr>
						<tr class="surveyResultYN">
							<th><span>설문 결과 공개</span></th>
							<td>
								<input type="hidden" name="othbcAt">
								<input type="radio" id="surveyResultOpen" name="result" checked="checked">
								<label for="surveyResultOpen">공개</label>
								<input type="radio" id="surveyResultClose" name="result">
								<label for="surveyResultClose">비공개</label>
								<div class="desc">
									<span>※ 설문 결과 공개 여부를 설정합니다.</span>
								</div>
							</td>
						</tr>
						<tr class="surveyAnswerYN">
							<th><span>댓글 작성</span></th>
							<td>
								<input type="hidden" name="answerAt">
								<input type="radio" id="surveyCommentOpen" name="comment" checked="checked">
								<label for="surveyCommentOpen">사용</label>
								<input type="radio" id="surveyCommentClose" name="comment">
								<label for="surveyCommentClose">사용안함</label>
								<div class="desc">
									<span>※ 설문에 댓글을 작성할 수 있는지 여부를 설정합니다.</span>
								</div>
							</td>
						</tr>
						<tr class="surveyEditYN">
							<th><span>참여 후 수정 허용</span></th>
							<td>
								<input type="hidden" name="afterUpdtAt">
								<input type="radio" id="surveyEditOpen" name="update" checked="checked">
								<label for="surveyEditOpen">허용</label>
								<input type="radio" id="surveyEditClose" name="update">
								<label for="surveyEditClose">허용안함</label>
								<div class="desc">
									<span>※ 설문 결과를 제출하고 수정할 수 있는지 여부를 설정합니다.</span>
								</div>
							</td>
						</tr>
						<tr class="surveyInfo">
							<th><span>설문 안내 문구</span></th>
							<td>
								<textarea rows="5" name="guidanceSntenc"></textarea>
								<div class="surveyAttachFile">
									<label for="file"><span><i class="fas fa-plus mr-2"></i>파일</span></label>
									<input id="file" type="file" style="display: none;">
								</div>
								<div class="surveyAttachedFile">
								</div>
								<div class="row attahcedFileImg">
									
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
		<div class="divAddQuestion">
			<button type="button" id="btnAddQuestion" class="btn">문항 추가</button>		
		</div>
		<div class="divSurveyBtn">
			<button id="btnSurveyCreate" type="button" class="btn">작성완료</button>
			<button id="btnSurveyCancel" type="button" class="btn">취소</button>
		</div>
	</div>
</div>