<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	.divNoticeBtn #btnNoticeUpdate {border-color: #55beff; background-color: #55beff; color: white;}
	.divNoticeBtn #btnNoticeUpdate:hover {background-color: #009dff; border-color: #009dff;}
	.divNoticeBtn #btnNoticeDelete {border-color: #55beff; background-color: #55beff; color: white;}
	.divNoticeBtn #btnNoticeDelete:hover {background-color: #009dff; border-color: #009dff;}
	.divNoticeBtn #btnNoticePrev:hover {background-color: #dddddd;}

	
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
	$(function(){
		//처음 상세보기 화면일 경우 입력란을 읽기전용으로 처리
		$(".form-readOnly").prop("readonly",true);
		
		// 첨부파일 조회
		var fileNo = '<c:out value="${noticeVo.fileNo}"/>';
		console.log(fileNo);
		$.getJSON("/notice/getFileList", {fileNo: fileNo}, function(arr){
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
						<a href="/notice/list">
							전체공지
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="lefr-menu-list-content">
		<div class="noticeInTitle">
			<h4>공지 상세 정보</h4>
		</div>
		<form id="frm" method="post" action="/notice/update">
		<div class="noticeIn-step1">
			<table class="table">
				<colgroup>
					<col width="150px">
					<col width="auto">
				</colgroup>
				<tbody>
					<tr>
						<th class="th"><span>공지 제목</span></th>
						<td>
						<div style="padding: 8px; width: 100%; height: calc(2.25rem + 2px); border-radius: .25rem; border: 1px solid #ced4da;">${noticeVo.sj}</div>
						</td>
					</tr>
					<tr>
						<th class="th"><span>작성일</span></th>
						<td>
							<div style="padding: 8px; width: 100%; height: calc(2.25rem + 2px); border-radius: .25rem; border: 1px solid #ced4da;">
							<fmt:formatDate pattern='yyyy-MM-dd(E)' value='${noticeVo.writngTm}' />
							</div>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<th class="th"><span>작성자</span></th>
						<td>
							<div style="padding: 8px; width: 100%; height: calc(2.25rem + 2px); border-radius: .25rem; border: 1px solid #ced4da;">${noticeVo.nm}</div>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<th class="th"><span>공지 내용</span></th>
						<td>
							<textarea style="padding: 8px; border-radius: .25rem; border: 1px solid #ced4da; resize:none;" class="form-readOnly" rows="10" id="cn" name="cn" >${noticeVo.cn}</textarea>
							
							<div class='uploadResult'>
							</div>	
							
							<div id="updateInfo"  style="color:blue; float:right;"> 
								<c:if test="${noticeVo.updtEmpno!=0}">
									수정정보 : ${noticeVo.updtNm}
									${noticeVo.updtTm}
								</c:if>
							</div>
						</td>
					</tr>
				</tbody>
				
				<input type="hidden" id="updtEmpno" name="updtEmpno" value='${empVo.empno}'>
				<input type="hidden" name="noticeNo" value="${noticeVo.noticeNo}" />
				<input type="hidden" name="updtTm" value="${noticeVo.updtTm}" />
				<input type="hidden" name="noticeVo_updtEmpno" value="${noticeVo.updtEmpno}" />
				
				
				</table>
		</div>
		<div class="divNoticeBtn" id="divFooter2" >
			<c:if test="${noticeVo.wrterEmpno == empVo.empno}">
				<button id="btnNoticeUpdate" type="button" class="btn" onclick="location.href='/notice/update?noticeNo=${noticeVo.noticeNo}'">수정</button>
			</c:if>
			<button id="btnNoticePrev" type="button" class="btn" onclick="location.href='/notice/list'">목록</button>
			<c:if test="${noticeVo.wrterEmpno == empVo.empno}">
				<button id="btnNoticeDelete" type="button" class="btn oper" data-oper="delete">삭제</button>
			</c:if>
		</div>
		</form>
		<form method="post" action="/notice/delete" id="frmDelete" name="frmDelete">
        	<input type="hidden" name="noticeNo" value="${noticeVo.noticeNo}" />
        	<input type="hidden" name="noticeNo" value="${noticeVo.fileNo}" />
        </form>
	</div>
</div>