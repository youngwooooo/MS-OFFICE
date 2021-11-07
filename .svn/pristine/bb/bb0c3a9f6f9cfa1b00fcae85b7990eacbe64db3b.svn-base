<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<style>

.content_top {
	padding: 20px;
}

.critical {
	width: 100%;
	padding: 20px;
	
	border-bottom: 1px solid #dee2e6;
}

.critical-right {
	text-align: right;
}

.drft-document {
	padding: 0px 20px 20px 20px;
}

	.uploadDiv {padding-top: 10px; padding-bottom: 10px;}
	.uploadDiv label {margin: 0px;}
	.uploadDiv span {border: 1px solid #55beff; background-color: #55beff; color: white; padding: 5px;}
	.uploadDiv span:hover {border-color: #009dff; background-color: #009dff; cursor: pointer;}
	.uploadResult {border:1px dashed #dddddd; min-height: 60px;}
	.uploadResult p {padding: 5px 10px 5px 10px; margin-bottom: 0px;}

.modal-dialog {
	top: -100px;
}
</style>
<script type="text/javascript">
function fn_vcatnDeCal(){
	if($("#beginDe").val() == "" || $("#endDe").val() == ""){
		return;
	}
	var beginDe = new Date($("#beginDe").val());	
	var endDe = new Date($("#endDe").val());
	console.log(beginDe);
	console.log(endDe);
	var vcatnDe = (endDe - beginDe)/1000/60/60/24 + 1;
	console.log(vcatnDe);
	$("#vcatnDe").val(vcatnDe);
}
function fn_change(){
	var subUrl = $("#inputState").val();
	location.href='/EA/' + subUrl;
}

function fn_deleteMember(obj){
	$(obj).parent().remove();
}
function fn_submit(){
	var str ="";
    
    $(".uploadResult p").each(function(i, obj){
       var jobj = $(obj);
       str +="<input type='hidden' name='fileList["+ i + "].fileOrdr' value='"+(i+1)+"'>";
       str +="<input type='hidden' name='fileList["+ i + "].fileOrginlNm' value='"+jobj.data("orginnm")+"'>";
       str +="<input type='hidden' name='fileList["+ i + "].fileNm' value='"+jobj.data("nm")+"'>";
       str +="<input type='hidden' name='fileList["+ i + "].fileCours' value='"+jobj.data("cours")+"'>";
       str +="<input type='hidden' name='fileList["+ i + "].extsn' value='"+jobj.data("extsn")+"'>";
       str +="<input type='hidden' name='fileList["+ i + "].fileSize' value='"+jobj.data("filesize")+"'>";
    }); 
    $("#drftInsert").append(str);
	$("#drftInsert").submit();
}

	$(document).ready(function(e){
		
		$("#lineChange").on("click", function(){
			$("#lineOfcps").html('<td rowspan="3" style="background: rgb(221, 221, 221); border: 1px solid black; width: 20px;">승인</td>');
			$("#lineName").html('');
			$("#lineApp").html('');
			$("#memberList .empno").each(function(idx, item){ //사번
				var empno = $(item).val();
				$("#line").append("<input type='hidden' name='empVoList["+ idx +"].empno' value='"+empno+"'>");
				console.log(empno);
			});
			$("#memberList .cocnrNm").each(function(idx, item){ //이름
				var name = $(item).text();
				$("#lineName").append('<td style="height: 60px; border: 1px solid black;">'+name+'</td>');
				console.log(name);
			});
			$("#memberList .cocnrOfcpsNm").each(function(idx, item){ //직위
				var ofcpsName = $(item).text();
				$("#lineOfcps").append('<td style="height: 20px; border: 1px solid black; width: 80px;">'+ofcpsName+'</td>');
				$("#lineApp").append('<td style="height: 20px; border: 1px solid black;"></td>');
				console.log(ofcpsName);
			});
			$("#drftModal").modal("hide");
		});
		
		$("#modalOpen").on("click", function(){
			$("#organizationModal").css("z-index", 1051).css("top", "200px").css("left", "-100px");
			$("#organizationModal").modal("show");
		});
		
		$("#drftInfo").on("click", function(){
			flag = 12;
			$("#drftModal").modal("show");
		});
		
		$("#coDept").on("click", function(){
			$("#organizationModal").css("left", "0px").css("top", "0px");
			flag = 11;			
			$("#organizationModal").modal("show");
			});
			
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
	<div class="lefr-menu-list-content">
		<header class="content_top">
			<h4>
				<span title="휴가신청서">휴가신청서</span>
			</h4>
		</header>

		<div class="critical">
			<div class="row">
				<div class="critcal-left col-sm-2">
					<button onclick="fn_submit()" class="btn btn-outline-dark">결재요청</button>
					<button onclick="javascript:location.href='/EA/home'" class="btn btn-outline-dark">취소</button>
				</div>
				<div class="col-sm-2"></div>
				<div class="critical-right col-sm-3">
					<button id="drftInfo" class="btn btn-outline-dark">결재 정보</button>
					<select onchange="fn_change()" id="inputState" class="btn btn-outline-dark" style="width:150px; display:inline-block;">
			        	<option value="insert" >업무기안</option>
			        	<option value="insertVacation" selected>휴가신청서</option>
			        </select>
				</div>
				<div class="col-sm-1"></div>
			</div>

		</div>
		<!-- 기안서 시작 -->
		<div class="row">
			<div class="col-sm-9">
				<div class="drft-document">
					<!-- 문서 내용 표시 테스트 -->
					<form id="drftInsert" action="/EA/insertVacation" method="post">
							<table
								style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
								<!-- Header -->
								<colgroup>
									<col width="310">
									<col width="490">
								</colgroup>
								<tbody>
									<tr>
										<td
											style="background: white; padding: 0px !important; border: 0px currentColor; border-image: none; height: 90px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: middle;"
											colspan="2" class="">휴 가 신 청 서
											<input type="hidden" name="formNo" value="1">	
										</td>
									</tr>
									<tr>
										<td
											style="background: white; padding: 0px !important; border: currentColor; border-image: none; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;"><span
											id="agreementWrap"></span> <!-- 에디터 &nbsp; 버그. 개행과 공백을 최소화 시키자. -->
											<table
												style="border: 1px solid rgb(0, 0, 0); border-image: none; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 1px; border-collapse: collapse;">
												<!-- User -->
												<colgroup>
													<col width="90">
													<col width="220">
												</colgroup>
												<tbody>
													<tr>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
															기안자</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; text-align: center;">
															${empVo.nm}
															<input type="hidden" name="empno" value="${empVo.empno}">
														</td>
													</tr>
													<tr>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
															소속
														</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; text-align: center;">
															${empVo.deptNm}
															<input type="hidden" name="deptCode" value="${empVo.deptCode}">
														</td>
													</tr>
													<tr>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
															기안일
														</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
															<input type="text" style="vertical-align: middle; width: 100%; text-align: center; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)" placeholder="">
														</td>
													</tr>
													<tr>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
															문서번호
														</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
															<input type="text" readonly style="vertical-align: middle; width: 100%; text-align: center; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)" placeholder="">
														</td>
													</tr>
												</tbody>
											</table></td>
										<td
											style="background: white; padding: 0px !important; border: currentColor; border-image: none; text-align: right; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">

											<table
												style="height: 100px; width: 100px; text-align: center; display: inline-block;">
												<tr>
													<td rowspan="3"
														style="background: rgb(221, 221, 221); border: 1px solid black; width: 20px;">신청
													</td>
													<td
														style="height: 20px; border: 1px solid black; width: 80px;">${empVo.ofcpsNm}
													</td>
												</tr>
												<tr>
													<td style="height: 60px; border: 1px solid black;">${empVo.nm}
													</td>
												</tr>
												<tr>
													<td style="height: 20px; border: 1px solid black;">
													</td>
												</tr>
											</table>

											<table id="line"
												style="height: 100px; text-align: center; display: inline-block;">
												<tr id="lineOfcps"> <!-- 직위 -->
												</tr>
												<tr id="lineName"> <!-- 이름 -->
												</tr>
												<tr id="lineApp"> <!-- 승인 -->
												</tr>
											</table>
										</td>
									</tr>
								</tbody>
							</table> <br>
							<table
								style="border: 0px solid rgb(0, 0, 0); border-image: none; width: 800px; font-family: malgun gothic, dotum, arial, tahoma; margin-top: 10px; border-collapse: collapse;">
								<!-- Draft -->
								<colgroup>
									<col width="120">
									<col width="230">
									<col width="120">
									<col width="330">
								</colgroup>
								<tbody>
									<tr>
										<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
										기간&nbsp;및&nbsp;일시
										</td>
										<td colspan="3" style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;">
											<input onchange="fn_vcatnDeCal()" type="date" id="beginDe" name="beginDe">&nbsp;~&nbsp;
											<input onchange="fn_vcatnDeCal()" type="date" id="endDe" name="endDe">
											<span id="usingPointArea" style="line-height: normal; font-family: malgun gothic,dotum,arial,tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;">
												<b>사용일수 : </b>
												<input type="text" name="vcatnDe" id="vcatnDe" value="1" readonly="readonly">
											</span> 
										</td>
									</tr>
									<tr>
										<td
											style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
											협조부서</td>
										<td id="coDept" colspan="3"
											style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
										</td>
									</tr>
									<tr>
										<td
											style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
											제목</td>
										<td
											style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"
											colspan="3">
											<input name="sj" style="width:100%; border:none;" type="text" class="ipt_editor" placeholder="필수값 입니다.">
										</td>
									</tr>
									<tr>
										<!-- 실제 내용 들어가는 곳 -->
										<td colspan=4 style="background: rgb(255, 255, 255); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; height: 350px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: top;">
										<textarea name="cn" class="form-control" id="p_content"></textarea>
										<script type="text/javascript">
										 CKEDITOR.replace('p_content'
										                , {height: 300                                                  
										                 });
										</script>
										</td>
									</tr>
								</tbody>
							</table> </span>
					<div class="uploadDiv">
						<label for="uploadfile"><span><i class="fas fa-plus mr-2"></i>파일</span></label>
						<input type="file" id="uploadfile" name="uploadfile" style="display: none;" multiple="">
					</div>
					<div class="uploadResult" style="width:800px;">
						
					</div>
					</form>
				</div>
			</div>
			
		</div>
	</div>
</div>

<!-- 결재선 modal -->
<div class="modal fade" id="drftModal" tabindex="-1" role="dialog" aria-labelledby="drftModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="drftModalLabel">결재선</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table>
	        <colgroup>
				<col width="100px">
				<col width="400px">
			</colgroup>
        	<tr>
        		<td>
        			<a id="modalOpen"><i class="fas fa-plus-circle ml-2"></i></a>
        		</td>
        		<td class="row" id="memberList"></td>
        	</tr>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" id="lineChange" class="btn btn-primary">확인</button>
      </div>
    </div>
  </div>
</div>