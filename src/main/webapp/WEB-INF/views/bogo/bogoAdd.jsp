<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">


	var chk2 = 0;
	var roomObject = [];
	var inviteChk=false; 
	
	function fn_reportBtn(){
		chk2 = 1;
		$("#memberList").children().remove();
		
// 		$("#memberList").append("<div class='col-sm-4 emp'><input type='hidden' class='empno' name='empVoList[0].empno' value='210914001'><span class='cocnrNm'>김회장 회장</span><a href='#' class='deleteMember' onclick='fn_deleteMember(this)'><i class='fas fa-times-circle'></i></a></div>");
		$("#memberList").append($("#reporter").children());
		/* chk = false; */
	};
	
	function fn_masterBtn(){
		console.log("1111111111");
 		chk2 = 2;
		$("#memberList1").children().remove();
		$("#memberList1").append($("#master").children());
		/* chk = false; */
	}

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
// 	function fn_deleteMember(obj) {
// 		$(obj).parent().remove();
// 	}
	
	/* $(item).val() == empno   */
	/* 		$(".cocnrNm").each(function(index, item){
	} */
	function fn_createBoard(data) {
		
		if(chk2 == 1){
			$("#reporter").append($("#memberList").html());
		}
		if(chk2 == 2) {
			console.log("여기는 오는거야?");
			$("#master").append($("#memberList1").html());
		}
		if(chk2 == 1){
			$("#memberList").children().remove();
		}
		if(chk2 == 2){
			$("#memberList1").children().remove();
		}
		if(chk2 == 1){
			$('#createBoard').modal("hide");
		}
		if(chk2 == 2){
			$('#createBoard2').modal("hide");
		}
		
	}
			 
		
		/* if(chk2){ */
		/* }else{ */
			
			
		/* } */	
		/* var idx = 0; 
		idx = $(".empno").length; //길이
		var chk = false;
		$(".cocnrNm").each(function(index, item){
			if($(item).val() == empno){
				chk = true;
			}
		});
		if(chk){
			return;
		}else{
			$("#inviteForm").append("<input type='hidden' class='cocnrNm' name='empVoList["+idx+"].empno' value=" + empno + "></input>");
			/* $("#inviteDiv").append(`<button type="button" class="empnoBtn btn btn-outline-secondary" onclick="deleteUser(this, '`+ empno + `')">` + nm + `</button>`) */
		//}
 
	
	
</script>


	<!-- private int reprtListNo;  //보고서 목록번호
	private int reprtNo;  //보고서 번호
	private int reportrEmpno; // 보고자 사번
	private String sj; //제목
	private String cn; //내용
	private String writngTm; //작성 시간
	private int col; //파일 번호
	private int updtEmpno; //수정자 사번
	private String updtTm; // 수정 시각
	private int rnum; 
	private String Department;//부서 -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">보고서 추가</h6>
		</div>
		<div class="card-body">
			<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

				<form action="/bogo/add" method="post" id="inviteForm">
					<input type="hidden" class="form-control" name="oprtrEmpno"
						id="oprtrEmpno" value="${empVo.empno}">


					<!-- form start -->
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group" >
								<label for="department">부서</label> <input type="text"
									class="form-control" name="department" id="department"
									value="MS그룹" disabled="disabled"style="width: 1400px">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="sj">제목</label> <input type="text"
									class="form-control" name="sj" id="sj"style="width: 1400px">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group" style="width: 1400px;">
								<label for="cn">내용</label> <textarea class="summernote" name="cn" id="summernote">
								</textarea>
							</div>
						</div>
					</div>
					<%-- 	<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="organizationOpen">보고자</label>
							<a id="organizationOpen" class="nav-link">+추가</a>
							</div>
						</div>
					</div>
			
							
						</div>
					</div> --%>
					<!-- <div>
						<div>
							보고양식<span style="color: red;">*</span><br /> 
							<input type="file">
						</div>
					</div> -->
					보고자 :
					<button id="btnCreate" type="button" class="btn btn-default"
						onclick="fn_reportBtn()" data-toggle="modal"
						data-target="#createBoard">
						<span>+추가</span>
					</button>
					<div id="reporter"></div>
					<br> <br>
					책임자 :
					<button id="btnCreate2" type="button" class="btn btn-default"
						onclick="fn_masterBtn()" data-toggle="modal"
						data-target="#createBoard2">
						<span>+추가</span>
					</button>
					<div id="master"></div>
					<br><br>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="rspnberEmpno">운영자</label> <input type="text"
									class="form-control" value="${empVo.nm}" disabled="disabled" style="width: 1400px;">
							</div>
						</div>
					</div>
					<hr>

					<div class="row">
						<div class="col-sm-12 text-right">
							<button type="submit" class="btn btn-primary" id="btnSubmit">등록</button>
							<button type="reset" class="btn btn-light">취소</button>
							<button type="button" class="btn btn-warning"
								onclick="javascript:history.go(-1)">뒤로가기</button>
						</div>
					</div>

				</form>
				<!-- // form end -->

			</div>
		</div>
	</div>
	
	<div class="modal" id="createBoard" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
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
							<td>보고자 <a class="sharedEmpAdd"><i
									class="fas fa-plus-circle ml-2"></i></a>
							</td>
							<td>
								<div class="row" id="memberList"></div>
							</td>
						</tr>
					</table>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnCreateBoard" type="button" class="btn btn-primary"
						onclick="fn_createBoard()">등록</button>
					<button id="btnCancel" type="button" class="btn btn-default"
						data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal" id="createBoard2" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
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
							<td>책임자 <a class="sharedEmpAdd"><i
									class="fas fa-plus-circle ml-2"></i></a>
							</td>
							<td>
								<div class="row" id="memberList1"></div>
							</td>
						</tr>
					</table>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnCreateBoard" type="button" class="btn btn-primary"
						onclick="fn_createBoard()">등록</button>
					<button id="btnCancel" type="button" class="btn btn-default"
						data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
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
