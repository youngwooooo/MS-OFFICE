<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style type="text/css">
	.row .mypageDiv {padding: 20px;}
	.row .mypageDiv header {padding: 0px 20px 20px 10px;}
	.row .mypageDiv .table th {vertical-align: middle; border-bottom: 1px solid #dee2e6; border-top: none; padding: 20px;}
	.row .mypageDiv .table td {border-bottom: 1px solid #dee2e6; border-top: none; padding: 20px;}
	.row .mypageDiv .table label {margin: 0px; font-size: 0.8rem; font-weight: normal;}
	.row .mypageDiv .table .photo {background-color: #f1f1f1; color: #878787; padding: 7px; width: 120px; display: block; text-align: center;}
	.row .mypageDiv .table img {width: 120px; height: 110px; border-radius: 3px;}
	.row .mypageDiv .table input[type='file'] {display: none;}
	.row .mypageDiv .btnDiv {padding-top: 20px; padding-bottom: 20px;}
	.row .mypageDiv .btnDiv button {font-size: 0.9rem; width: 100px;}
	.row .mypageDiv .btnDiv #btnEditEmpInfo {background-color: #55beff; color: white; border: 1px solid #55beff; margin-right: 5px;}
	.row .mypageDiv .btnDiv #btnEditEmpInfo:hover {background-color: #069dfb; border-color: #069dfb;}
	.row .mypageDiv .btnDiv #btnCancelEmpInfo {color: #000; border: 1px solid #dddddd;}
	.row .mypageDiv .btnDiv #btnCancelEmpInfo:hover {background-color: #f5f5f5; }
	.row .mypageDiv .empInfoDiv {font-size: 0.9rem;}
	.row .mypageDiv .editDiv {display: flex; display: none;} 
	.row .mypageDiv .editDiv span {margin-top: 5px; margin-left: 5px;}
	.row .mypageDiv .txt-form:hover, .row .mypageDiv .editDiv span:hover {cursor: pointer;}
	.row .mypageDiv .btnDiv {font-size: 0.9rem; text-align: center;}
	input[name='nm'], input[name='telno'] {height: 30px; font-size: 0.9rem; width: 120px;} 
</style>

<script type="text/javascript">
	$(function(){
		// 파일 이미지 보이기
		$("#file").on('change',function(){
			var reg = /(.*?)\/(jpg|jpeg|png|bmp|jfif)$/;	// 이미지를 구분하기 위한 정규표현식
			
			var formData = new FormData();
			var file = $("#file");			// 파일 객체
			var files = file[0].files;		// 파일 
			var fileName = file.val().split('\\').pop();	// 파일 이름
			var fileSize = file[0].files[0].size;	// 파일 크기
			if(files[0].type.match(reg)){
				formData.append("uploadFile", files[0]);
				
				var reader = new FileReader();
	            reader.onload = function(e) {
	            	$("#profileImg").attr("src",  e.target.result);
	            	$("#profileImg").attr("alt",  files[0].name);
	            }
				
	            reader.readAsDataURL(files[0]);
	            
			}else {
				alert("이미지 파일만 선택해주세요.");
				return false;
			}
	       
		});
		
		// 수정
		$("#btnEditEmpInfo").on("click", function(){
			var formData = new FormData();
			var file = $("#file");
			var files = file[0].files;
			console.log(files[0]);
			
			// 이름, 연락처만 수정
			if(files[0] == null){
				var nmObj = $("input[name='nm']");
				if(fn_isEmpty(nmObj.val())){
					alert("이름을 입력하세요.");
					nmObj.focus();
					return false;
				}
				var telnoObj = $("input[name='telno']");
				if(fn_isEmpty(telnoObj.val())){
					alert("연락처를 입력하세요.");
					telnoObj.focus();
					return false;
				}
				
				$("#profileFrm").submit();
				
			// 이름, 연락처, 사진 수정
			}else {
				var nmObj = $("input[name='nm']");
				if(fn_isEmpty(nmObj.val())){
					alert("이름을 입력하세요.");
					nmObj.focus();
					return false;
				}
				var telnoObj = $("input[name='telno']");
				if(fn_isEmpty(telnoObj.val())){
					alert("연락처를 입력하세요.");
					telnoObj.focus();
					return false;
				}
				
				// 파일 정보 담기
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
		 					
			 					var fileNo = '<input type="hidden" name="fileNo" value="'+ fileNo +'">';
			 					var fileOrdr = '<input type="hidden" name="fileOrdr" value="1">';
		 						var fileNm = '<input type="hidden" name="fileNm" value="'+ file[0].fileNm +'">';
								var fileOrginlNm = '<input type="hidden" name="fileOrginlNm" value="'+ file[0].fileOrginlNm +'">';
								var fileCours = '<input type="hidden" name="fileCours" value="'+ file[0].fileCours +'">';
								var fileSize = '<input type="hidden" name="fileSize" value="'+ file[0].fileSize +'">';
								var extsn = '<input type="hidden" name="extsn" value="'+ file[0].extsn +'">';
								
								$("#profileFrm").append(fileNo);
								$("#profileFrm").append(fileOrdr);
								$("#profileFrm").append(fileNm);
								$("#profileFrm").append(fileOrginlNm);
								$("#profileFrm").append(fileCours);
								$("#profileFrm").append(fileSize);
								$("#profileFrm").append(extsn);
									
 		 						$("#profileFrm").submit();
		 						
		 					}
		 				});
					}
				});
				
			}
			
		});
		
	}); // end jquery

	function fn_openEditInfo(obj){
		$(obj).css("display", "none");
		$(obj).siblings(".editDiv").css("display", "flex");
	}
	
	function fn_closeEditInfo(obj){
		$(obj).parents(".editDiv").css("display", "none");
		$(obj).parents("td").find(".txt-form").css("display", "inline");
		var txt = $(obj).parents("td").find(".txt-form").text();
		$(obj).siblings("input").val(txt);
	}
</script>
<div id="body">
	<div class="lefr-menu-list-content" style="margin: 0px;">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8 mypageDiv">
				<header><h3>기본 정보</h3></header>
				<div class="empInfoDiv">
					<form id="profileFrm" action="/mypageEdit" method="post">
					<input type="hidden" name="empno" value="${sessionScope.empVo.empno}">
					<input type="hidden" name="beforeFileNo" value="${getEmpInfo.beforeFileNo}">
						<table class="table">
							<colgroup>
								<col width="100px">
								<col width="auto">
							</colgroup>
							<tbody>
							<tr>
								<th>사진</th>
								<td>
									<c:set var="fileCours" value="${fn:replace(getEmpInfo.fileCours,'\\\\','/')}" />
									<c:set var="url" value="/resources/upload/" />
									<img id="profileImg" src="/reload?fileNo=${getEmpInfo.fileNo}" alt="${getEmpInfo.fileOrginlNm}">
									<div class="uploadFile">
										<label for="file"><span class="photo">사진 올리기</span></label>
										<input id="file" type="file" accept="image/*">
									</div>
								</td>
							</tr>
							<tr>
								<th><span>이름</span></th>
								<td>
									<span class="txt-form" onclick="fn_openEditInfo(this)">${getEmpInfo.nm}</span>
									<div class="editDiv">
										<input type="text" class="form-control" name="nm" value="${getEmpInfo.nm}">
										<span class="nm" onclick="fn_closeEditInfo(this)"><i class="fas fa-times"></i></span>
									</div>
								</td>
							</tr>
							<tr>
								<th><span>회사</span></th>
								<td><span>MS그룹</span></td>
							</tr>
							<tr>
								<th><span>부서</span></th>
								<td><span>${getEmpInfo.deptNm}</span></td>
							</tr>
							<tr>
								<th><span>직책</span></th>
								<td><span>${getEmpInfo.rspofcNm}</span></td>
							</tr>
							<tr>
								<th><span>직위</span></th>
								<td><span>${getEmpInfo.ofcpsNm}</span></td>
							</tr>
							<tr>
								<th><span>입사일</span></th>
								<td><span>${getEmpInfo.ecnyDe}</span></td>
							</tr>
							<tr>
								<th><span>이메일</span></th>
								<td><span>${getEmpInfo.email}</span></td>
							</tr>
							<tr>
								<th><span>연락처</span></th>
								<td>
									<span class="txt-form" onclick="fn_openEditInfo(this)">${getEmpInfo.telno}</span>
									<div class="editDiv">
										<input type="text" class="form-control" name="telno" value="${getEmpInfo.telno}">
										<span onclick="fn_closeEditInfo(this)"><i class="fas fa-times"></i></span>
									</div>
								</td>
							</tr>
							</tbody>
						</table>
					</form>
				</div>
				<div class="btnDiv">
					<button id="btnEditEmpInfo" class="btn">저장</button>
					<button id="btnCancelEmpInfo" class="btn" onclick="javascript:location.href='/index'">취소</button>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>