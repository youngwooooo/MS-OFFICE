<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
.left-menu-list {position: absolute; border-right: 1px solid #dee2e6; height: 100%; width: 260px; float: left;}
.lefr-menu-list-content{margin-left: 260px; padding-left: 10px; padding-right: 10px; display: flex;}
.left-menu-list a {color : black;}
.left-menu-list a:hover {color: black;}

.menu-name {padding: 20px 20px 30px 20px;}
.menu-create {padding: 0px 20px 20px 20px;}
.menu-list {padding: 0px 20px 20px 20px;}
#btCreateBoard:hover {box-shadow: 0px 5px 15px #dddddd;}
#btCreateBoard > span {font-size: 1rem;}

.menu-list .menu-list-ul {list-style: none; padding-left: 0px; margin-bottom: 0px;}
.menu-list li {padding-left: 40px; margin-top: 3px;}
.menu-list .pad0 {padding-left: 10px;}
.menu-list li:hover {background-color: #f7f8f9;}
.menu-list span {font-size: 0.9rem;}


.table tbody tr:hover {background-color: #f4f4f4; cursor:pointer}
.table {text-align: center; font-size: 0.9rem;}
.table thead th {border-top: none; border-bottom: none; padding: 5px;}
.table thead tr {border-top: 1px solid #dddddd;}
.table-responsive {margin-bottom: 30px;}
.table .mailbox-subject {text-align: left;}	

.menu-list-ul a {font-size: 0.9rem;}

#delBtn, #reload-mail {font-size: 0.9rem; border: 1px solid #dddddd;}
#delBtn:hover, #reload-mail:hover {color: #888;}



</style>
<script type="text/javascript">
$(document).ready(function(){
	//전체 선택 checkbox
	var flag = 0;
	$("#totalCheck").click(function(){
	   if( (flag % 2) == 0 ){
	      $("input:checkbox").prop("checked", true);            
	   }else if( (flag % 2) == 1 ){
	      $("input:checkbox").prop("checked", false);
	   }            
	   flag++;
	   
	});
	
	
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

	
	// ' > 메뉴 ' 클릭 시, 아이콘 변경 및 ul 토글
	$(function(){
		$(".toggle-menu-list").click(function(e){
			e.preventDefault();
			$(this).find("i").toggleClass("fas fa-angle-down mr-2 fas fa-angle-right mr-2");
			$(this).next().slideToggle();
		});
		
	});
		
});	

function showImage(fileCallPath){
	alert(fileCallPath);
	
	$(".bigPictureWrapper").css("display","flex").show();
	
	$(".bigPicture").html("<img src'/display?fileOrginlNm"+fileCallPath+"'>")
	.animate({width:'100%', height:'100%'}, 1000);
}

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

//항목 읽을 시 읽음 처리
function updateForReadProcessing(emailNo){
		
	
	$("#emailUpdate").val(emailNo);
	
	console.log(">> emailNo 값 : " + $("#emailUpdate").val(emailNo));
	
	$("#updateCnfirmAt").attr("method", "GET");
	$("#updateCnfirmAt").attr("action", "/mail/mailDetail");
	$("#updateCnfirmAt").submit();
	
}

//삭제 버튼	
function delBtn(){
	if( !confirm("정말 삭제하시겠습니까?") ){
		
	}else{
		var str = "";
		   
		var saveMsgIdVal = $("#eachCheck:checked").val();
		
		for(var i=0; i<$("#eachCheck:checked").length; i++){
		   if( i == $("#eachCheck:checked").length -1 ){
		      str += $("#eachCheck:checked").eq(i).val();
		      console.log(">> str : " + str);
		   }else{
		      str += $("#eachCheck:checked").eq(i).val() + ",";
		   }   
		   
		}
		$("#emailNo").val(str);
		
		$("#forDelMailFrm").attr("method", "POST");
		$("#forDelMailFrm").attr("action", "/mail/delete");				
		$("#forDelMailFrm").submit();
		
	}	
	
}
</script>

<div id="body">
	<!-- 메일 삭제를 위한 폼 -->
	<form id="forDelMailFrm">
		<!-- 여기다가 checkbox들의 value값을 담아 주어야 함 -->
		<input type="hidden" id="emailNo" name="emailNo">	
	</form>
	
	<div class="left-menu" >
		<div class="left-menu-list">
			<div class="menu-name" style="padding-bottom: 10px;"><h4><a href="/mail/home">메일</a></h4></div>
			<div class="menu-create">
			<a href="/mail/mailSend"><button id="btCreateBoard" type="button" class="btn btn-default" style="width: 100%;
    height: 60px;
    border-color: black;
    background-color: white; position: relative; "> <span>메일쓰기</span></button></a>	
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
							받은 메일함
						</a>
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
	
	<div class="right-menu" >
		<div class="lefr-menu-list-content">
			<div class="menu-name"><h4>받은메일함</h4></div>
		</div>
		<div class="lefr-menu-list-content">
			<div class="mailbox-controls">
                <button type="button" class="btn" id="delBtn" onclick="delBtn();" >
					<i class="fas fa-trash-alt mr-2"></i>삭제
                </button>
                <button id="reload-mail" type="button" class="btn" onclick="window.location.reload();">
                  <i class="fas fa-sync-alt"></i>
                </button>
			</div>
		</div>
		<div class="lefr-menu-list-content">
			<div class="table-responsive mailbox-messages">
				<form id="updateCnfirmAt">			
					<input type="hidden" name="emailNo" value="" id="emailUpdate">
				</form>
				
				<table class="table">
					<colgroup>
						<col width="50px">
						<col width="100px">
						<col width="150px">
						<col width="auto">
						<col width="150px">
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox" value="" id="totalCheck" name="totalCheck"></th>
							<th>확인여부</th>
							<th>발신자</th>
							<th class="mailbox-subject">제목</th>
							<th>수신일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${item}" var="item" varStatus="idx">
							<tr onclick="updateForReadProcessing(${item.emailNo});" class="dataRow" id="dataRow">
								<!-- 체크박스 시작 -->
								<td onclick="event.cancelBubble=true">									
									<input type="checkbox" value="${item.emailNo}" id="eachCheck">
									<input type="hidden" value="${item.emailNo}" id="${idx.index}update">
									<input type="hidden" id="cnfirmAt"  value="${item.cnfirmAt}">
									<label for="check1"></label>
								</td>
								<!-- 체크박스 끝 -->
								<td>
									<input type="hidden" value="${item.emailNo}" id="emailNoId">
									<c:if test="${item.cnfirmAt =='N'}">
										<i class="fas fa-envelope" ></i>
										</c:if>
									<c:if test="${item.cnfirmAt =='Y'}">
									<i class="fas fa-envelope-open"></i>
									</c:if>
								</td>
								<td class="mailbox-name">
									${item.receiverNm}
								</td>
								<td class="mailbox-subject">
									<b>${item.sj}</b>
								</td>
								<td class="mailbox-date">
									${item.dsptchTm}
								</td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
                <!-- /.table -->
                </div>
              </div>
	</div><!-- 오른쪽 네비 -->
<div class="Paging">
			<ul id="page1">


				<li><a href=""><i class="fas fa-step-backward"></i></a></li>
	            <li><a href=""><i class="fas fa-chevron-left"></i></a></li>
	            
				<c:forEach var="pageNo" begin="${paging.startPage }" end="${paging.endPage }" varStatus="stat">
			        <li class="<c:if test="${pageNo == param.currentPage}">active</c:if>">
			        <a href="/mail/home?currentPage=${pageNo}&selSearch=${param.selSearch}&keyword=${param.keyword}" aria-controls="example2" data-dt-idx="${pageNo }" tabindex="0">${pageNo }</a>
			        </li>       
	           	</c:forEach>
	           	
	            <li><a href=""><i class="fas fa-chevron-right"></i></a></li>
				<li><a href=""><i class="fas fa-step-forward"></i></a></li>
			</ul>
		</div>
</div><!-- body -->
		<div class="listSearch">
			<form method="get" action="/mail/home" name="frmSearch" id="frmSearch">
   			<input type="hidden" name="currentPage" value="1" />
				<div class="input-group searchSelect">
					<select name="selSearch" class="form-control">
						<option value="">전체</option>
						<option value="nm" 
			      			<c:if test="${param.selSearch=='nm'}">selected</c:if>
			      		>작성자</option>
			      		<option value="sj"
			      			<c:if test="${param.selSearch=='sj'}">selected</c:if>
			      		>제목</option>
			      		<option value="cn"
			      			<c:if test="${param.selSearch=='cn'}">selected</c:if>
			      		>내용
			      		</option>
					</select>
				</div>
				<div class="input-group searchKeyword">
	        		<input type="text" name="keyword" class="form-control" placeholder="검색"  value="${param.keyword}">
	        		<div class="input-group-append">
			            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
	        		</div>
	       		</div>
       		</form>
		</div>