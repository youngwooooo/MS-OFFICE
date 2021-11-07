<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="\resources\js\jquery.min.js"></script>
<style>
.uploadDiv {padding-top: 10px; padding-bottom: 10px;}                                              
.uploadDiv label {margin: 0px;}                                                                    
.uploadDiv span {border: 1px solid #55beff; background-color: #55beff; color: white; padding: 5px;}
.uploadDiv span:hover {border-color: #009dff; background-color: #009dff; cursor: pointer;}         
.uploadResult {border:1px dashed #dddddd; min-height: 60px;}                                       
.uploadResult p {padding: 5px 10px 5px 10px; margin-bottom: 0px;}                                  
</style>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
  <!--  -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">보고하기</h6>
		</div>
		<div class="card-body">
			<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
				
				<form action="/bogo/insert" method="post" id="frm">
					<!-- form start -->
				
					<input type="hidden" class="form-control" name=reportrEmpno id="reportrEmpno" value="${empVo.empno}">
					<input type="hidden" class="form-control" name="reprtListNo" id="reprtListNo" value="${param.reprtListNo}">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reportr">보고자</label> <input type="text"
									class="form-control" disabled="disabled" value="${empVo.nm}" style="width: 1400px">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="title">제목</label> <input type="text"
									class="form-control" name="sj" id="sj" style="width: 1400px">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="cn">내용</label>
								<div class="cn">
									<textarea class="summernote" name="cn" id="summernote"></textarea>
								</div>


							</div>
						</div>
					</div>
					
					<div>
						<div class='uploadDiv'>
							<label for="uploadfile"><span><i class="fas fa-plus mr-2"></i>파일</span></label>
							<input type='file' id='uploadfile' name='uploadfile' style="display: none;" multiple>
						</div>
						<div class='uploadResult'>
							
						</div>
					</div>
					
					
					
					
					<div class="row">
						<div class="col-sm-12 text-right">
							<button type="submit" class="btn btn-primary" id="btnSubmit">등록</button>
							<button type="reset" class="btn btn-light">취소</button>
							<button type="button" class="btn btn-danger"
								onclick="javascript:history.go(-1)">뒤로가기</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
				<!-- // form end -->
	<script>
		$('.summernote').summernote(
				{
					// 에디터 높이
					height : 400,
					width : 1400,
					// 에디터 한글 설정
					lang : "ko-KR",
					// 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
					focus : true,
					toolbar : [
							// 글꼴 설정
							[ 'fontname', [ 'fontname' ] ],
							// 글자 크기 설정
							[ 'fontsize', [ 'fontsize' ] ],
							// 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
							[
									'style',
									[ 'bold', 'italic', 'underline',
											'strikethrough', 'clear' ] ],
									
							// 글자색
							[ 'color', [ 'forecolor', 'color' ] ],
							// 표만들기
							[ 'table', [ 'table' ] ],
							// 글머리 기호, 번호매기기, 문단정렬
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							// 줄간격
							[ 'height', [ 'height' ] ],
							// 그림첨부, 링크만들기, 동영상첨부
							[ 'insert', [ 'picture', 'link', 'video' ] ],
							// 코드보기, 확대해서보기, 도움말
							[ 'view', [ 'codeview', 'fullscreen', 'help' ] ] ],
					// 추가한 글꼴
					fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS',
							'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체',
							'바탕체' ],
					// 추가한 폰트사이즈
					fontSizes : [ '8', '9', '10', '11', '12', '14', '16', '18',
							'20', '22', '24', '28', '30', '36', '50', '72' ]

				});
	</script>
	<script>
	$(document).ready(function(e){
		var formObj = $("#frm");
		$("#btnSubmit").on("click", function(e){
				
//				$("#btnNoticeCreate").on("click", function(){
//					var sj = $("input[name='sj']");			
				
//					// 공지 제목 체크
//					if(fn_isEmpty(sj.val())){
//						alert("공지제목을 입력하세요.");
//						sj.focus();
//						return false;
//					}
				
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
					alert("Uploaded");
				}
			});
		});
			
// 			//파일 이미지 보여주기
// 			$("#uploadfile").on('change',function(){
//					var str ="";
//					var files = $("input[name='uploadfile']")[0].files
				
//					$(files).each(function(i, obj){
//						console.log(obj);
//						str += "<p data-cours='"+obj.fileCours+"'data-nm='"+obj.fileNm+"'data-orginNm='"+obj.name+ "'data-extsn='"+obj.extsn+ "'>";
//						str += "<span><i class='fas fa-file mr-2'></i></span>"+ obj.name +"<span>("+ fileSizePrint(obj.size) +")<span>";
//						str += "<span onclick='fn_delFile'><i class='fas fa-times ml-2'></i></span></p>";
//					});
//					$(".uploadResult").append(str);
//				});
			
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
	});
	</script>
	<script>
		$(document)
				.ready(
						function() {

							var toolbar = [
									// 글꼴 설정
									[ 'fontname', [ 'fontname' ] ],
									// 글자 크기 설정
									[ 'fontsize', [ 'fontsize' ] ],
									// 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
									[
											'style',
											[ 'bold', 'italic', 'underline',
													'strikethrough', 'clear' ] ],
									// 글자색
									[ 'color', [ 'forecolor', 'color' ] ],
									// 표만들기
									[ 'table', [ 'table' ] ],
									// 글머리 기호, 번호매기기, 문단정렬
									[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
									// 줄간격
									[ 'height', [ 'height' ] ],
									// 그림첨부, 링크만들기, 동영상첨부
									[ 'insert', [ 'picture', 'link', 'video' ] ],
									// 코드보기, 확대해서보기, 도움말
									[
											'view',
											[ 'codeview', 'fullscreen', 'help' ] ] ];

							var setting = {
								height : 300,
								minHeight : null,
								maxHeight : null,
								focus : true,
								lang : 'ko-KR',
								toolbar : toolbar,
								callbacks : { //여기 부분이 이미지를 첨부하는 부분
									onImageUpload : function(files, editor,
											welEditable) {
										for (var i = files.length - 1; i >= 0; i--) {
											uploadSummernoteImageFile(files[i],
													this);
										}
									}
								}
							};

							$('#summernote').summernote(setting);
						});
	</script>
	