<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.noticeInTitle, .noticeIn-step1, .divNoticeBtn {padding: 20px 20px 20px 10px;}
	
	.noticeIn-step1 {border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.noticeIn-step1 .table, .table input {font-size: 0.9rem;}
	.noticeIn-step1 .table th {font-weight: bold; border-color: white;}
	.noticeIn-step1 .table .th {padding-top: 20px; }
	.noticeIn-step1 .table td {border-color: white;}
	.noticeIn-step1 .table label {margin-right: 15px; margin-left: 5px; font-weight: normal;}
	.noticeIn-step1 .table .desc {color: #888; font-size: 12px;}
	.noticeIn-step1 .table textarea {width: 100%;}
	
	.noticeIn-step1 .uploadDiv {padding-top: 10px; padding-bottom: 10px;}
	.noticeIn-step1 .uploadDiv label {margin: 0px;}
	.noticeIn-step1 .uploadDiv span {border: 1px solid #55beff; background-color: #55beff; color: white; padding: 5px;}
	.noticeIn-step1 .uploadDiv span:hover {border-color: #009dff; background-color: #009dff; cursor: pointer;}
	.noticeIn-step1 .uploadResult {border:1px dashed #dddddd; min-height: 60px;}
	.noticeIn-step1 .uploadResult p {padding: 5px 10px 5px 10px; margin-bottom: 0px;}
	
	.question-check, .question-radio {margin-right: 5px;}
	
	.divNoticeBtn {text-align: center;}
	.divNoticeBtn button {border: 1px solid #dddddd; margin-right: 10px; width: 100px; font-size: 0.9rem;}
	.divNoticeBtn #btnNoticeCreate {border-color: #55beff; background-color: #55beff; color: white;}
	.divNoticeBtn #btnNoticeCreate:hover {background-color: #009dff; border-color: #009dff;}
	.divNoticeBtn #btnNoticePrev:hover, #btnNoticeSave:hover {background-color: #dddddd;}
	
	.bigPictureWrapper {
		position : absolute;
		display: none;
		justify-content : center;
		align-items:center;
		top:0%;
		width:100%;
		height:100%;
		background-color:gray;
		z-index:100;
		background:rgba(255,255,255,0,5);
	}
	.bigPicture {
		position:relative;
		display:flex;
		justify-content:center;
		align-items:center;
	}
	
	.bigPicture img {
		width:600px;
	}
	.modal-dialog {
		left: 500px;
		top: 200px;
	}
	
	.menu-list-ul a {font-size: 0.9rem;}
</style>
<script type="text/javascript">


	var chk2 = false;
    var chk = false; 
	var roomObject = [];
	var inviteChk=false; 
	
	function fn_reportBtn(){
		chk2 = true;
		$("#memberList").children().remove();
		
// 		$("#memberList").append("<div class='col-sm-4 emp'><input type='hidden' class='empno' name='empVoList[0].empno' value='210914001'><span class='cocnrNm'>김회장 회장</span><a href='#' class='deleteMember' onclick='fn_deleteMember(this)'><i class='fas fa-times-circle'></i></a></div>");
		$("#memberList").append($("#reporter").children());
		/* chk = false; */
	};
	$(function() {
		
		vo1 = "empVoList[0].empno";
		bogoYn = true;
		
		// 모달 닫을 때 
		/* $('#createBoard').on('hidden.bs.modal', function(e) {
			console.log('modal close');
			$(this).find('form')[0].reset() // form 비우기
			$(this).find('#memberList').empty(); // 보드 공유자 비우기
		}); */
		
		
	}); // end jquery

	// 보드 공유자 삭제
	function fn_deleteMember(obj) {
		$(obj).parent().remove();
	}
	
	/* $(item).val() == empno   */
	/* 		$(".cocnrNm").each(function(index, item){
	} */
	function fn_createBoard(data) {
		
		console.log($("#memberList").children());
		
		if(chk2){
			$("#reporterTd").append($("#memberList").html());
		}
		$("#memberList").children().remove();
		
		$("#createBoard").modal("hide");
	}
			 
		</script>
<script type="text/javascript">
	$(document).ready(function(e){
			var formObj = $("#frm");
			$("#btnNoticeCreate").on("click", function(e){
					
// 				$("#btnNoticeCreate").on("click", function(){
// 					var sj = $("input[name='sj']");			
					
// 					// 공지 제목 체크
// 					if(fn_isEmpty(sj.val())){
// 						alert("공지제목을 입력하세요.");
// 						sj.focus();
// 						return false;
// 					}
					
				var str ="";
				
				$(".uploadResult p").each(function(i, obj){
					var jobj = $(obj);
					console.dir(jobj);
					str +="<input type='hidden' name='fileList["+ i + "].fileOrdr' value='"+(i+1)+"'>";
					str +="<input type='hidden' name='fileList["+ i + "].fileOrginlNm' value='"+jobj.data("orginnm")+"'>";
					str +="<input type='hidden' name='fileList["+ i + "].fileNm' value='"+jobj.data("nm")+"'>";
					str +="<input type='hidden' name='fileList["+ i + "].fileCours' value='"+jobj.data("cours")+"'>";
					str +="<input type='hidden' name='fileList["+ i + "].extsn' value='"+jobj.data("extsn")+"'>";
					str +="<input type='hidden' name='fileList["+ i + "].fileSize' value='"+jobj.data("filesize")+"'>";
					console.log(jobj.data("orginnm"));
				}); // 첨부파일 정보 삽입
				console.log(str);
				formObj.append(str).submit();
				
				
			}); // submit(btnNoticeCreate)
			
			// 첨부파일 변경 처리
			$(".uploadResult").on("click","span",function(e){
				var targetFile = $(this).data("file");
				var type = $(this).data("type");
				console.log(type);
				
				var targetP = $(this).closest("p");
				
				$.ajax({
					url : '/file/deleteFile',
					data : {fileOrginlNm : targetFile, type:type},
					dataType : 'text',
					type : 'POST',
					success: function(result){
						alert(result);
						targetP.remove();
					}
						
				}); // ajax
				
			});
			
			// 업로드 시 이미지 보이기
			function showUploadedFile(uploadResultArr) {
				if(!uploadResultArr || uploadResultArr.length == 0) {return;}
				var str ="";
				$(uploadResultArr).each(function(i, obj){
					var fileCallPath = encodeURIComponent(obj.fileCours + "/" + obj.fileNm + "_" + obj.fileOrginlNm);
					str += "<p data-cours='"+obj.fileCours+"'data-nm='"+obj.fileNm+"'data-orginNm='"+obj.fileOrginlNm+"'data-fileSize='"+obj.fileSize+ "'data-extsn='"+obj.extsn +"'>";
					str += "<i class='fas fa-file mr-2'></i>"+ obj.fileOrginlNm +"("+ fileSizePrint(obj.fileSize) +")";
					str += "<span data-file=\'"+ fileCallPath + "\'data-type='file'><i class='fas fa-times ml-2'></i></span></p>";
				});
				//console.log("str"+ str);
				$(".uploadResult").append(str);
			}
			
			
			$("input[type='file']").change(function(e){
				// Ajax를 이용하는 파일업로드는 FormData를 이용해서 필요한 파라미터를 담아 전송 
				var formData = new FormData();
				var inputFile = $("input[name='uploadfile']");
				var files = inputFile[0].files;
				
				console.log(files);
				// 첨부파일 데이터는 formData에 추가
				for(var i=0; i<files.length; i++) {
					formData.append("uploadFile", files[i]);
					console.log(formData);
					console.log(files[i]);
				}
				console.log(formData);
				
				// Ajax를 통해서 formData자체를 전송
				$.ajax({
					url: '/file/fileAjaxAction',
					processData: false,
					contentType: false,
					data: formData,
					type: 'POST',
					dataType: 'json',
					success : function(result){
						console.log(result);
						showUploadedFile(result);
					}
				});
			});
				
//	 			//파일 이미지 보여주기
//	 			$("#uploadfile").on('change',function(){
// 					var str ="";
// 					var files = $("input[name='uploadfile']")[0].files
					
// 					$(files).each(function(i, obj){
// 						console.log(obj);
// 						str += "<p data-cours='"+obj.fileCours+"'data-nm='"+obj.fileNm+"'data-orginNm='"+obj.name+ "'data-extsn='"+obj.extsn+ "'>";
// 						str += "<span><i class='fas fa-file mr-2'></i></span>"+ obj.name +"<span>("+ fileSizePrint(obj.size) +")<span>";
// 						str += "<span onclick='fn_delFile'><i class='fas fa-times ml-2'></i></span></p>";
// 					});
// 					$(".uploadResult").append(str);
// 				});
				
			// 파일 크기 포맷팅
			function fileSizePrint(fileSize){
			     var size = "";
			     if (fileSize < 1024){
			    	 size = fileSize + "B";
			     }else if (fileSize < 1024 * 1024){
			    	 size = parseInt (fileSize / 1024) + "KB";
			     }else if (fileSize < 1024 * 1024 * 1024){
			    	 size = parseInt (fileSize / (1024 * 1024)) + "M";
			     }else size = parseInt (fileSize / (1024 * 1024 * 1024)) + "G";
			     
			     return size;
			}
	});// ready(function)
		
	
	
</script>

<div id="body">
	<!-- 메일 삭제를 위한 폼 -->
	<form id="forDelMailFrm">
		<!-- 여기다가 checkbox들의 value값을 담아 주어야 함 -->
		<input type="hidden" id="emailNo" name="emailNo">	
	</form>
	
	<div class="left-menu" >
		<div class="left-menu-list">
			<div class="menu-name"><h4><a href="/mail/home">메일</a></h4></div>
			<div class="menu-create">
			<a href="/mail/mailSend"><button id="btCreateBoard" type="button" class="btn btn-default" style="width: 100%;
    height: 60px;
    border-color: black;
    background-color: white; position: relative;"> <span>메일쓰기</span></button></a>	
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>메일함</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/mail/home">
						전체메일
						</a>
					</li>
					<li>
						<a href="/mail/home">
						받은 메일함</a>
					</li>
					<li>
						<a href="/mail/sendlist">
							보낸메일함
						</a>
					</li>
				</ul>
			</div>
			
		
		</div>
	</div> <!-- 왼쪽네비 -->
	<div class="lefr-menu-list-content">
		<div class="noticeInTitle">
			<h4>메일 작성</h4>
			<form id="frm" method="post" action="/mail/mailSend">
		<div class="noticeIn-step1">
			<table class="table">
				<colgroup>
					<col width="150px">
					<col width="auto">
				</colgroup>
				<tbody>
					<tr>
						<th class="th"><span>받는사람</span></th>
						<td><div id="reporterTd" id="reporter" style="width: 1060px; display: inline-block; border-radius:3px; border:1px solid; height: 38px; border-color:#ced4da;"></div>
						<button id="btnCreateBoard" type="button" class="btn" onclick="fn_reportBtn()" data-toggle="modal"
						data-target="#createBoard" style="background-color: #009dff; border-color: #55beff; color: white;  display: inline-block; margin-bottom: 33px;">조직도</button></td>
					</tr>
					
					<tr>
						<th class="th"><span>메일 제목</span></th>
						<td><input type="text" class="form-control" id="sj" name="sj" ></td>
					</tr>
					
					<tr>
						<th class="th"><span></span></th>
						<td><input type="hidden" class="form-control" id="dsptchEmpno" name="dsptchEmpno" value="${empVo.empno}"></td>
					</tr>
					<tr>
						<th class="th"><span>내용</span></th>
						<td>
							<textarea rows="10" id="cn" name="cn"></textarea>
							<div class='uploadDiv'>
								<label for="uploadfile"><span><i class="fas fa-plus mr-2"></i>파일</span></label>
								<input type='file' id='uploadfile' name='uploadfile' style="display: none;" multiple>
							</div>
							<div class='uploadResult'>
								
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class = 'bigPictureWrapper'>
			<div class='bigPicture'>
			
			</div>
		</div>
		
		<div class="divNoticeBtn">
			<button id="btnNoticeCreate" type="button" class="btn">보내기</button>
			<button id="btnNoticePrev" type="button" class="btn" onclick="window.history.back()">이전</button>
		</div>
		</form>
		</div>
</div>
</div>
	<div class="modal" id="createBoard" data-backdrop="static">
		<div class="modal-dialog" style="left: 638px; top: 165px;">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title" style="font-size: 1rem;">수신자 설정</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<table>
						<colgroup>
							<col width="100px">
							<col width="400px">
						</colgroup>

						<tr>
							<td>수신자 <a class="sharedEmpAdd"><i
									class="fas fa-plus-circle ml-2"></i></a>
							</td>
							<td>
								<div class="row" id="memberList"  style="inline-block;"></div>
							</td>
						</tr>
					</table>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnCreateBoard" type="button" class="btn btn-primary"
						onclick="fn_createBoard()" style="font-size: 0.9rem;">등록</button>
					<button id="btnCancel" type="button" class="btn btn-default"
						data-dismiss="modal" style="font-size: 0.9rem;">취소</button>
				</div>
			</div>
		</div>
	</div>
	
		