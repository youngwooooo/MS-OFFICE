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
	
	.menu-list-ul a {font-size: 0.9rem;}
</style>
<script type="text/javascript">
	$(document).ready(function(e){
			var formObj = $("#frm");
			
			// 작성완료 버튼 (제출)
			$("#btnNoticeCreate").on("click", function(e){
					
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
				
				// 공지사항 정보 제출
				formObj.append(str).submit();
				
				
			}); // submit(btnNoticeCreate)
			
			
			// 첨부파일 x 아이콘 선택 시 삭제
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
						targetP.remove();
					}
				}); // ajax
			});
			
			
			// 업로드 시 첨부파일 정보 보이기
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
			
			
			// 파일 업로드 시
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
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h4><a href="/notice/list">공지사항</a></h4></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/notice/insert'"><span>공지 작성</span></button>
			</div>
			<div class="menu-list">
				<ul class="menu-list-ul">
					<li>
						<a href='/notice/list'>
							전체공지
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="lefr-menu-list-content">
		<div class="noticeInTitle">
			<h4>공지사항 작성</h4>
		</div>
		<form id="frm" method="post" action="/notice/insert">
		<div class="noticeIn-step1">
			<table class="table">
				<colgroup>
					<col width="150px">
					<col width="auto">
				</colgroup>
				<tbody>
					<tr>
						<th class="th"><span>공지 제목</span></th>
						<td><input type="text" class="form-control" id="sj" name="sj"></td>
					</tr>
					<tr>
						<th class="th"><span></span></th>
						<td><input type="hidden" class="form-control" id="wrterEmpno" name="wrterEmpno" value="${empVo.empno}"></td>
					</tr>
					<tr>
						<th class="th"><span>공지 내용</span></th>
						<td>
							<textarea style="padding: 8px; border-radius: .25rem; border: 1px solid #ced4da; resize:none;"  rows="10" id="cn" name="cn"></textarea>
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
			<button id="btnNoticeCreate" type="button" class="btn">작성완료</button>
			<button id="btnNoticePrev" type="button" class="btn" onclick="location.href='/notice/list'">이전</button>
		</div>
		</form>
	</div>
</div>