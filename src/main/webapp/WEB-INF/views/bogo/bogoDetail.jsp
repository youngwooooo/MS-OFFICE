<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
.uploadResult {font-size: 0.9rem;}
</style>
<script src="\resources\js\jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		// 첨부파일 조회
		var fileNo = '<c:out value="${bogoDetail.fileNo}"/>';
		console.log(fileNo);
		$.getJSON("/bogo/getFileList", {fileNo: fileNo}, function(arr){
			console.log(arr);
			var str = "";
			
			$(arr).each(function(i,fileVo){
				var fileCallPath = encodeURIComponent(fileVo.fileCours + "/" + fileVo.fileNm + "_" + fileVo.fileOrginlNm);
				str += "<p data-cours='"+fileVo.fileCours+"'data-fileOrdr='"+fileVo.fileOrdr+"'data-fileNo='"+fileVo.fileNo+"'data-nm='"+fileVo.fileNm+"'data-orginNm='"+fileVo.fileOrginlNm+"'data-fileSize='"+fileVo.fileSize+ "'data-extsn='"+fileVo.extsn+ "'data-fileSize='"+fileVo.fileSize+ "'>";
				str += "<i class='fas fa-file mr-2'></i>"+ fileVo.fileOrginlNm +"("+ fileSizePrint(fileVo.fileSize) +")";
				str += "</p>";
			});
			
			$(".uploadResult").append(str);
		
		}); //getJSON
		
		// 다운로드
		$(".uploadResult").on("click","p",function(e){
			console.log("view image");
			
			var pObj = $(this);
			console.dir(pObj);
			console.dir(pObj.data("fileno"));
			console.dir(pObj.data("fileordr"));
			
			// 파일 다운로드
  		 	location.href = "/download?fileNo=" + pObj.data("fileno") + "&fileOrdr=" + pObj.data("fileordr");
			
		});
		
		function showImage(fileCallPath){
			alert(fileCallPath);
			
			$(".bigPictureWrapper").css("display","flex").show();
			
			$(".bigPicture").html("<img src'/display?fileOrginlNm"+fileCallPath+"'>")
			.animate({width:'100%', height:'100%'}, 1000);
		}
		
		
		var formObj = $("#frm");
		// 확인 버튼
		$("#btnSubmit").on("click", function(){
			var sj = $("input[name='sj']");			
			
			// 공지 제목 체크
			if(fn_isEmpty(sj.val())){
				alert("공지제목을 입력하세요.");
				sj.focus();
				return false;
			}
			
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
		
		// 공지 삭제
		$("#btnNoticeDelete").on("click",function(){
			var input = confirm("게시물을 삭제하시겠습니까?");
			
			if(input){//true
				$("#frmDelete").attr("action","/notice/delete").submit();
			}else{//false
				return;
			}
		});
		
	});	// jquery end
	

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
	
	
</script>

<body>
	<div class="card shadow mb-4" style="width: 55%; margin:150px 300px;">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">보고서 정보</h6>
		</div>
		<div class="card-body">
		<form action="/bogo/detail" method="post" id="faqFrm">
					<div class="row">
					<c:forEach var="list" items="${list}">
						<div class="col-sm-12">
							<table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
								<tr role="row">
									<th class="sorting sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 50px;">
										보고자
									</th>
									<td class="sorting_1">${list.reportrNm}</td>
								</tr>
								<tr>
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 100px;">
										제목
									</th>
									<td>${list.sj}</td>
								</tr>
								<tr class="even">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 60px;">
										내용
									</th>
									<td>${list.cn}</td>
								</tr>
								<tr class="even" hidden="hidden">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 60px;">
										보고서리스트번호
									</th>
									<td><input style="border:0 solid black;" name="reprtListNo" value="${list.reprtListNo}"></input></td>
								</tr>
								<tr class="odd">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										등록일
									</th>
									<td><input style="border:0 solid black;" name="writngTm" value="${list.writngTm}"></input></td>
									</tr>
								<tr class="odd">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										책임자
									</th>
									<td><input style="border:0 solid black;" value="${empVo.nm}"></input></td>
									</tr>
									<tr class="even">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 60px;">
										첨부파일
									</th>
									<td>
										<input type="hidden" style="border:0 solid black;" name="fileNo" value="${list.fileNo}"></input>
										<div class='uploadResult'>
										</div>
									</td>
								</tr>
								<tr class="odd" hidden="hidden">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										보고자
									</th>
									<td><input style="border:0 solid black;" name=reportrEmpno value="${list.reportrEmpno}" ></input></td>
									</tr>
								<tr class="odd" hidden="hidden">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										보고서번호
									</th>
									<td><input style="border:0 solid black;" name=reprtNo value="${list.reprtNo}" ></input></td>
									</tr>
								<tr class="odd" hidden="hidden">
									<th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										책임자번호
									</th>
									<td><input style="border:0 solid black;" name=rspnberEmpno value="${empVo.empno}" ></input></td>
									</tr>
								<tr class="even" hidden="hidden">
									<th hidden="hidden" class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30px;">
										승인반려여부
									</th>
									
									<td hidden="hidden"><input  id="cnfirmAt" name="cnfirmAt" value="Y"></input></td>
									</tr>
							</table>
						</div>
							</c:forEach>
						
					</div>
					&nbsp;&nbsp;&nbsp;
						<div class="row" style=" float: right; ">
						
						<a href="#" class="btn btn-secondary btn-icon-split">
                            <span class="text" onclick="javascript:history.go(-1)">뒤로가기</span>
                        </a>
                        &nbsp;&nbsp;&nbsp;
							
							
							
							<button type="submit" id="btnApprove" style="width: 70px; height: 40px; color: white; background-color: blue; border-radius: 30px; border: 1px; ">승인</button>
							&nbsp;&nbsp;
							<button type="submit" id="frmDelete" style="width: 70px; height: 40px; color: white; background-color: red; border-radius: 30px; border: 1px;">반려</button>
						</div>			
					</form>	
		
	     
			</div>
	</div>
	

	

	<script type="text/javascript">
	$(function() {
		
		//삭제 버튼 클릭 후 고객 정보 삭제 처리
		$("#frmDelete").on("click",function(){
			var input = confirm("반려하시겠습니까?");
		
			if(input){//true
// 				document.getElementById("#cnfirm").setAttribute("value", "N");
				
					$("#cnfirmAt").val("N");
				}
// 				$("#frmDelete").submit();
			else{
				return;
			}
		});		
	});
		</script>
</body>
</html>