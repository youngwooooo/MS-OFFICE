<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/resources/js/jspdf.min.js"></script>
<script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<style>

.content_top {
	padding: 20px 20px 30px 20px;
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
<script>
function fn_drft_reject(){
	location.href = "/EA/drftReject?drftNo=${param.drftNo}";
}
function fn_drft_update(){
	location.href = "/EA/drftUpdate?drftNo=${param.drftNo}";
}
//pdf 다운로드
function fn_down_pdf() {
	//저장 영역 div id
    html2canvas($('#box_pdf_content')[0] ,{	
		//logging : true,		// 디버그 목적 로그
		//proxy: "html2canvasproxy.php",
		allowTaint : true,	// cross-origin allow 
		useCORS: true,		// CORS 사용한 서버로부터 이미지 로드할 것인지 여부
		scale : 2			// 기본 96dpi에서 해상도를 두 배로 증가
		
    }).then(function(canvas) {	
		// 캔버스를 이미지로 변환
		var imgData = canvas.toDataURL('image/png');
		
		var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm
		var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
		var imgHeight = canvas.height * imgWidth / canvas.width;
		var heightLeft = imgHeight;
		var margin = 10; // 출력 페이지 여백설정
		var doc = new jsPDF('p', 'mm');
		var position = 0;
		
		// 첫 페이지 출력
		doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
		heightLeft -= pageHeight;
		
		// 한 페이지 이상일 경우 루프 돌면서 출력
		while (heightLeft >= 20) {			// 35
			position = heightLeft - imgHeight;
			position = position - 20 ;		// -25
			
			doc.addPage();
			doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
			heightLeft -= pageHeight;
		}
		
		// 파일 저장
		var fileNm = "<c:out value='${drftVo.sj}' />" + ".pdf";
		doc.save(fileNm);
    });
}

//프린트
function fn_print() {
	var inbody = document.body.innerHTML; // 이전 body 영역 저장

	window.onbeforeprint = function(){ // 프린트 화면 호출 전 발생하는 이벤트
	    document.body.innerHTML = document.getElementById('box_pdf_content').innerHTML; // 원하는 영역 지정
	}

	window.onafterprint = function(){ // 프린트 출력 후 발생하는 이벤트
	    document.body.innerHTML = inbody; // 이전 body 영역으로 복구
	}

	window.print();
}

//창 닫기
function fn_close() {
	window.close();
}
//첨부파일 조회
$(function(){
	var fileNo = '<c:out value="${drftVo.fileNo}"/>';
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
	//다운로드
	$(".uploadResult").on("click","p",function(e){
		console.log("view image");
		
		var pObj = $(this);
		console.dir(pObj);
		console.dir(pObj.data("fileno"));
		console.dir(pObj.data("fileordr"));
		
		// 파일 다운로드
		 	location.href = "/download?fileNo=" + pObj.data("fileno") + "&fileOrdr=" + pObj.data("fileordr");
		
	});
});
</script>
<div id="body">
	<div class="lefr-menu-list-content">
		<header class="content_top">
			<h4>
				<span title="업무기안">
				<c:if test="${drftVo.formNo eq 0}">업무기안</c:if>
				<c:if test="${drftVo.formNo eq 1}">휴가신청서</c:if>
				</span>
			</h4>
		</header>

		<div class="critical">
			<div class="row">
				<div class="critcal-left col-sm-4">
					<button onclick="fn_drft_update()" class="btn btn-outline-dark">승인</button>
					<button onclick="fn_drft_reject()" class="btn btn-outline-dark">반려</button>
					<button onclick="fn_down_pdf()" class="btn btn-outline-dark">pdf 다운로드</button>
					<button onclick="fn_print()" class="btn btn-outline-dark">프린트</button>
				</div>
				<div class="col-sm-4"></div>
				<div class="critical-right col-sm-3">
				</div>
				<div class="col-sm-1"></div>
			</div>

		</div>
		<!-- 기안서 시작 -->
		<div class="row">
			<div class="col-sm-9">
				<div class="drft-document">
					<!-- 문서 내용 표시 테스트 -->
					<form id="drftInsert" action="/EA/insertDrft" method="post">
					<div id="box_pdf_content">
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
											colspan="2" class="">
											<c:if test="${drftVo.formNo eq 0}">업 무 기 안</c:if>
											<c:if test="${drftVo.formNo eq 1}">휴 가 신 청 서</c:if>
											<input type="hidden" name="formNo" value="0">	
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
															${drftVo.nm}
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
															${drftVo.deptNm}
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
															<input value="${fn:substring(drftVo.writngTm,0,10)}" readonly type="text" style="vertical-align: middle; width: 100%; text-align: center; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)" placeholder="">
														</td>
													</tr>
													<tr>
														<td
															style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
															문서번호
														</td>
														<td
															style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
															<input value="${drftVo.drftNo}" type="text" readonly style="vertical-align: middle; width: 100%; text-align: center; border: 0px; box-shadow: inset 0px 0px 0px rgba(150, 150, 150, 0.2)" placeholder="">
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
														style="height: 20px; border: 1px solid black; width: 80px;">${drftVo.ofcpsNm}
													</td>
												</tr>
												<tr>
													<td style="height: 60px; border: 1px solid black;">${drftVo.nm}
													</td>
												</tr>
												<tr>
													<td style="height: 20px; border: 1px solid black;">
														신청
													</td>
												</tr>
											</table>

											<table id="line"
												style="height: 100px; text-align: center; display: inline-block;">
												<tr id="lineOfcps"> <!-- 직위 -->
												<td rowspan="3" style="background: rgb(221, 221, 221); border: 1px solid black; width: 20px;">승인</td>
												<c:forEach var="lineVo" items="${lineVolist}">
													<td style="height: 20px; border: 1px solid black; width: 80px;">${lineVo.ofcpsNm}</td>    
												</c:forEach>
												</tr>
												<tr id="lineName"> <!-- 이름 -->
												<c:forEach var="lineVo" items="${lineVolist}">
													<td style="height: 60px; border: 1px solid black;">${lineVo.nm}</td>    
												</c:forEach>
												</tr>
												<tr id="lineApp"> <!-- 승인 -->
												<c:forEach var="lineVo" items="${lineVolist}">
													<td style="height: 20px; border: 1px solid black;">${lineVo.sancNm}</td>    
												</c:forEach>
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
								<c:if test="${drftVo.formNo eq 1}">
									<tr>
										<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
										기간&nbsp;및&nbsp;일시
										</td>
										<td colspan="3" style="background: rgb(255, 255, 255); padding: 3px; border: 1px solid black; border-image: none; width: 700px; height: 22px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; vertical-align: middle;">
											<input readonly onchange="fn_vcatnDeCal()" type="date" id="beginDe" name="beginDe" value="${fn:substring(drftVo.beginDe,0,10)}">&nbsp;~&nbsp;
											<input readonly onchange="fn_vcatnDeCal()" type="date" id="endDe" name="endDe" value="${fn:substring(drftVo.endDe,0,10)}">
											<span id="usingPointArea" style="line-height: normal; font-family: malgun gothic,dotum,arial,tahoma; font-size: 9pt; margin-top: 0px; margin-bottom: 0px;">
												<b>사용일수 : </b>
												<input type="text" name="vcatnDe" id="vcatnDe"  value="${drftVo.vcatnDe}" readonly="readonly">
											</span> 
										</td>
									</tr>
								</c:if>
									<tr>
										<td
											style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
											협조부서</td>
										<td id="coDept" colspan="3"
											style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;">
											${drftVo.coDeptNm}
										</td>
									</tr>
									<tr>
										<td
											style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; border-image: none; height: 25px; text-align: center; color: rgb(0, 0, 0); font-size: 14px; font-weight: bold; vertical-align: middle;">
											제목</td>
										<td
											style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; border-image: none; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: middle;"
											colspan="3">
											<input readonly value="${drftVo.sj}" name="sj" style="width:100%; border:none;" type="text" class="ipt_editor" placeholder="필수값 입니다.">
										</td>
									</tr>
									<tr>
										<!-- 실제 내용 들어가는 곳 -->
										<td colspan=4 style="background: rgb(255, 255, 255); border-width: medium 1px 1px; border-style: none solid solid; border-color: currentColor black black; padding: 5px; height: 350px; text-align: left; color: rgb(0, 0, 0); font-size: 14px; font-weight: normal; vertical-align: top;">
											${drftVo.cn}
										</td>
									</tr>
								</tbody>
							</table> </span>
					<!-- <div class="uploadDiv">
						<label for="uploadfile"><span><i class="fas fa-plus mr-2"></i>파일</span></label>
						<input type="file" id="uploadfile" name="uploadfile" style="display: none;" multiple="">
					</div> -->
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