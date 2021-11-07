<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.comDetailEdit{
			display:none;
		}
	.status {border: 1px solid #ff616b; background-color: #ff616b; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.statusEnd {border: 1px solid #787878; background-color: #787878; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.editIcon {opacity:50%;}
	.editIcon:hover {opacity:100%;}
	

	.comDetailTitle {padding: 20px 20px 10px 20px; text-align: center;}
	.comDetailLately  { padding: 0px 4rem; text-align: center;}
	.row {padding: 30px;}
	.row .divProfile, .divMem, .divActive, .divNotice {
			background-color: white; border: 1px solid #ddd; border-radius: 10px; padding: 20px 20px 20px 20px; margin-bottom: 20px;
	}
	.row .title {font-weight: bold; font-size: 0.9rem;}
	.row .divMemTitle, .activeTitle, .noticeTitle {font-weight: bold; font-size: 0.9rem; border-color: white; color: black; margin-bottom: 20px; }
	.row .table a {color: black;}
	
	.row .memTable {border:none; padding:5px; font-size: 0.9rem;}
	
	.row .divProfile img {width: 50%;  max-width: 80px; min-height: 70px; margin: 0px 0px 10px 0px; border-radius: 50%;}
	.row .divProfile p {margin-bottom: 0px;}
	.row .divProfile p > span {font-weight: bold; font-size: 0.9rem; padding-left: 5px; color: black;}
	.row .divProfile span {font-size: 0.8rem; color: #919191;}
	
	.row .upBtn {
    	float: right;
    	border-color: #55beff; background-color: #55beff; color: white;
   	    border-radius: 10px;
	}
	
	.row .upBtn:hover {background-color: #009dff; border-color: #009dff;}
	.divShortcuts .btn {
		background-color: white; 
		font-size: 0.9rem; 
		width: 46%; 
		height: 50px; 
		margin-left: 5px; 
		margin-bottom: 7px; 
		margin-top: 7px; 
		border: 1px solid white; 
		border-radius: 20px;
		border: 2px solid #55beff;
	   	font-size: 0.8rem;
	   	color: black;
	   	border-radius: 20px;
	}
	
	.row .divMem p {margin: 0px; padding-top: 10px;}
	.row .divMem .currentTime {font-size: 0.8rem; color: #888;}
	.row .divMem h2 {display: inline;}
	.row .divMem span {padding-right: 10px;}
	.row .divMem .divMemTime {padding-top: 5px;}
	.row .divMem .divTotalWorkGraph {width: 100%; background-color: #EEF1F6; margin-top: 7px; height: 10px;}
	.row .divMem .divTotalWorkGraph {width: 100%; background-color: #EEF1F6; margin-top: 7px; height: 10px;}
	.row .divMem .divRunWorkGraph {background-color: #55beff; width: 0; height: 10px;}
	.row .divMem .divStartWorkTime {margin-top: 30px;}
	.row .divMem .divEndWorkTime {padding-bottom: 20px; border-bottom: 1px dashed #dddddd;}
	.row .divMem .spWorkTimeName {font-size: 0.8rem; font-weight: bold;}
	.row .divMem .spWorkTime {float: right;}
	.row .divMem .divMemBtn {margin-top: 20px;}
	.row .divMem .divMemBtn #btnStartWork {float: left; width: 49%; height: 43px; margin-bottom: 7px;}
	.row .divMem .divMemBtn #btnEndWork {float:right; width: 49%; height: 43px; margin-bottom: 7px;}
	.row .divMem .divMemBtn #btnStatusWork {clear: both; width: 100%;}
	.row .divMem .dropdown-menu {width: 210px; text-align: center; padding: 0px; border: 2px solid #55beff;}
	.row .divMem .dropdown-menu ul {margin: 0px; padding: 0px; list-style: none;}
	.row .divMem .dropdown-menu li {margin-top: 5px; cursor: pointer; font-size: 0.9rem; height: 30px; padding-top: 5px;}
	.row .divMem .dropdown-menu li:hover {background-color: #EEF1F6}
	.row .divMem .btn {border: 2px solid #55beff; font-size: 0.8rem; color: black; border-radius: 20px;}
	.row .divMem .btn:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.row .nav .nav-item .nav-link {font-size: 0.8rem; padding: 10px 15px 10px 15px; font-weight: bold; color: #b1afaf;}
	.row .nav .nav-item .nav-link:hover {border-color: white; color: black;}
	.row .nav .nav-item .nav-link.active {border-color: white; border-bottom: 4px solid #55beff; color: black;}
	
	.row .divActive ul, .divNotice ul {margin-top: 10px; border-bottom: 0px;}	
	.row .divActive .table .community-board a {color: black; font-size: 0.9rem;}
	.row .divActive .table .community-board span {color: #888; font-size: 0.8rem; margin-right: 5px;}
	.row .divActive .table .community-board .community-boardWriter {font-size: 0.7rem;}
	
	.row .divNotice .table td {font-size: 0.8rem;}
	.row .divNotice .table span {color: #888;}
	.noticeInTitle, .noticeIn-step1, .divNoticeBtn {padding: 20px 20px 20px 10px;}
	
	.noticeIn-step1 {border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.noticeIn-step1 .table, .table input {font-size: 0.9rem;}
	.noticeIn-step1 .table th {font-weight: bold; border-color: white;}
	.noticeIn-step1 .table .th {padding-top: 20px; }
	.noticeIn-step1 .table td {border-color: white;}
	.noticeIn-step1 .table label {margin-right: 15px; margin-left: 5px; font-weight: normal;}
	.noticeIn-step1 .table .desc {color: #888; font-size: 12px;}
	.noticeIn-step1 .table textarea {width: 100%; border-color: #dddddd;}
	
	.noticeIn-step1 .uploadDiv {padding-top: 10px; padding-bottom: 10px;}
	.noticeIn-step1 .uploadDiv label {margin: 0px;}
	.noticeIn-step1 .uploadDiv span {border: 1px solid #55beff; background-color: #55beff; color: white; padding: 5px;}
	.noticeIn-step1 .uploadDiv span:hover {border-color: #009dff; background-color: #009dff; cursor: pointer;}
	.noticeIn-step1 .uploadResult {border:1px dashed #dddddd; min-height: 60px;}
	.noticeIn-step1 .uploadResult p {padding: 5px 10px 5px 10px; margin-bottom: 0px;}
	
	.question-check, .question-radio {margin-right: 5px;}
	
	.divNoticeBtn {text-align: center;}
	.divNoticeBtn button {border: 1px solid #dddddd; margin-right: 10px; width: 100px; font-size: 0.9rem;}
	.row .divNoticeBtn #btnNoticeCreate {border-color: #55beff; background-color: #55beff; color: white;}
	.row .divNoticeBtn #btnNoticeCreate:hover {background-color: #009dff; border-color: #009dff;}
	.row .divNoticeBtn #btnNoticePrev:hover, #btnNoticeSave:hover {background-color: #dddddd;}
	
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
</style>
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
						targetP.remove();
					}
						
				}); // ajax
				
			});
			
			// 업로드 시 이미지 보이기
			function showUploadedFile(uploadResultArr) {
				if(!uploadResultArr || uploadResultArr.length == 0) {return;}
				var str ="";
				$(uploadResultArr).each(function(i, obj){
					
					if(obj.image){
						var fileCallPath = encodeURIComponent(obj.fileCours + "/s_" + obj.fileNm + "_" + obj.fileOrginlNm);
						str += "<p data-cours='"+obj.fileCours+"'data-nm='"+obj.fileNm+"'data-orginNm='"+obj.fileOrginlNm+"'data-fileSize='"+obj.fileSize+ "'data-extsn='"+obj.extsn+ "'>";
						str += "<i class='fas fa-file mr-2'></i>"+ obj.fileOrginlNm +"("+ fileSizePrint(obj.fileSize) +")";
						str += "<span data-file=\'"+ fileCallPath + "\'data-type='image'><i class='fas fa-times ml-2'></i></span></p>";
					}else{
						var fileCallPath = encodeURIComponent(obj.fileCours + "/" + obj.fileNm + "_" + obj.fileOrginlNm);
						str += "<p data-cours='"+obj.fileCours+"'data-nm='"+obj.fileNm+"'data-orginNm='"+obj.fileOrginlNm+"'data-fileSize='"+obj.fileSize+ "'data-extsn='"+obj.extsn +"'>";
						str += "<i class='fas fa-file mr-2'></i>"+ obj.fileOrginlNm +"("+ fileSizePrint(obj.fileSize) +")";
						str += "<span data-file=\'"+ fileCallPath + "\'data-type='file'><i class='fas fa-times ml-2'></i></span></p>";
					}
					
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
		
	// 회원 삭제
	function fn_delete(sbscrberEmpno,cmmntyNo,obj){
//	 	alert(sbscrberEmpno);
		console.log(obj);
		var input = confirm("삭제하시겠습니까?");
		if(input){
			
			$.ajax({
				url : "/com/memDelete"
				, type : "post"
				, data : {"cmmntyNo" : cmmntyNo, "sbscrberEmpno" : sbscrberEmpno}
				, success : function(result){
					if(result == 1){
						$(obj).parents(".memList").remove();			
					}				
				}
			});
		}else{
			return;
		}
	}	
	//커뮤니티 수정아이콘 누르면
	function fn_comUpdateBtn(obj){
		$(obj).parents(".lefr-menu-list-content").find(".comDetailTop").css("display", "none");
		$(obj).parents(".lefr-menu-list-content").find(".comDetailEdit").css("display", "block");
	}

	// 커뮤니티 수정
	function fn_comUpdate(cmmntyNo){
		var sj = $(".comDetailEdit input[name='sj']");
		var cn = $(".comDetailEdit input[name='cn']");
		var rcritAt = $(".comDetailEdit input[name='rcritAt']:checked");
		
		console.log(sj.val());
		console.log(cn.val());
		console.log(rcritAt.val());
		$(".comDetailTop .a div").html("");
		$.ajax({
			url : "/com/comUpdate"
			, type : "post"
			, data : {"sj" : sj.val(), "cn" : cn.val(), "rcritAt" : rcritAt.val(), "cmmntyNo" : cmmntyNo}
			, success : function(result){
				console.log(result);
				if(result != null){
					console.log()
					$.ajax({
			               url : "/com/comSelect"
			               	, type : "post"
			               	, data : {"cmmntyNo": cmmntyNo}
			               	, success : function(editedCommu){
			                  	console.log(editedCommu);
			                   	$(".comDetailTop .comTitleH2").text(editedCommu.sj);
			                   	if(editedCommu.rcritAt=='Y'){
			                   		var rcritAt = "<span class='status' style='display: inline;'>모집 중</span>";
		                   	}else{
			                   		var rcritAt = "<span class='statusEnd' style='display: inline;'>모집 완료</span>";
			                   	}
			                   	$(".comDetailTop .a div").append(rcritAt);
			                   	$(".comDetailTop p").text(editedCommu.cn);
			                   	$(".comDetailTop").css("display", "block");
			               		$(".comDetailEdit").css("display", "none");
			               }
			            });
				}
			}
		});
	}
</script>
<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h2><a href="/com/list">커뮤니티</a></h2></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/com/insert'"><span>커뮤니티 만들기</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>전체 커뮤니티</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/com/list"><span>전체 커뮤니티</span></a>
					</li>
					<li>
						<a href="/com/comMyJoin"><span>가입 현황</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<i class="fas fa-angle-down mr-2"></i><strong>나의 커뮤니티</strong><a href="/com/comJoinMem" style="float: right;">  <i class="fas fa-cog" style="color:gray;"></i></a>
				<ul class="menu-list-ul">
					<c:forEach var="item" items="${myList}">
						<li class="lineless" onclick="javascript:location.href='/com/detail?cmmntyNo=${item.cmmntyNo}'">
							<a href="#"><span>${item.sj}</span></a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="lefr-menu-list-content">
	<div class="comDetailTop">
	<div class="comDetailTitle">
		<div class="a" style="overflow: hidden">
			<h2 class="comTitleH2" onclick="javascript:location.href='/com/detail?cmmntyNo=${commuVo.cmmntyNo}'" style="display: inline;">${commuVo.sj}</h2>
				<div style="display: inline;">
					<c:if test="${commuVo.rcritAt=='Y'}"><span class="status" style="display: inline;">모집 중</span></c:if>
					<c:if test="${commuVo.rcritAt=='N'}"><span class="statusEnd" style="display: inline;">모집 완료</span></c:if>
				</div>
				<c:if test="${commuVo.estblEmpno==empVo.empno}">
					<h2 onclick="fn_comUpdateBtn(this)" style="display: inline; float: right;"><i class="fas fa-edit editIcon" style="color:gray;"></i></h2>
				</c:if>
		</div>
		<p style="margin-top: 10px; margin-right: 50px;">${commuVo.cn}</p>
	</div>
	</div>

	<div class="comDetailEdit">
		<div class="comDetailTitle">
			<div class="b" style="overflow: hidden">
				<h2 class="comTitle" style="display: inline;">
					<input type="text" name="sj" value="${commuVo.sj}" />
				</h2>
				<h2 onclick="fn_comUpdate(${commuVo.cmmntyNo})" style="display: inline; float: right;"><i class="fas fa-edit editIcon" style="color:gray;"></i></h2>
			</div>
			<p style="margin-top: 10px;">
				<input type="text" name="cn" value="${commuVo.cn}" />
			</p>
			<c:if test="${commuVo.rcritAt=='Y'}">
				<input type="radio" id="rcritAtY" name="rcritAt" value="Y" checked>
			  	<label for="rcritAtY">모집 중</label>
			  	<input type="radio" id="rcritAtN" name="rcritAt" value="N">
			  	<label for="rcritAtN">모집 완료</label>
			</c:if>
			<c:if test="${commuVo.rcritAt=='N'}">
				<input type="radio" id="rcritAtY" name="rcritAt" value="Y">
			  	<label for="rcritAtY">모집 중</label>
				<input type="radio" id="rcritAtN" name="rcritAt" value="N" checked>
			  	<label for="rcritAtN">모집 완료</label>
			</c:if>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2">
			<div class="divProfile" style="width: 100%; text-align: center;">
				<img src="/reload?fileNo=${commuVo.fileNo}">
				<p><span>${commuVo.nm}</span></p>
				<span>${commuVo.deptNm}</span>
				<div class="divShortcuts">
					<button onclick="javascript:location.href='/messenger'" type="button" class="btn" style="width: 95%;"><i class="fas fa-sms fa-lg mr-2" style="color: darkorange"></i>메신저</button>
				</div>
			</div>
			<div class="divMem" style="padding-right:4px;">
				<div class="divMemTitle">가입한 맴버</div>
				<table class="memTable">
					<colgroup>
						<col width="80px">
						<col width="auto">
						<col width="10px">
					</colgroup>
					<c:forEach var="memList" items="${memList}">
		               <tr class="memList">
		                  <td><span>${memList.nm}</span>
		                  </td>
		                  <td>${memList.dept}
		                  </td>
		                  <td>
		                  <c:if test="${commuVo.estblEmpno== empVo.empno}">
		                  	<span style="padding-left:3px;" onclick="fn_delete(${memList.sbscrberEmpno},${memList.cmmntyNo},this)"><i class="fas fa-times"></i></span>
		                  </c:if>
		                  </td>
		               </tr>
	               </c:forEach>
				</table>
			</div>
		</div>
		<div class="col-sm-10">
		<form id="frm" method="post" action="/com/noticeinsert">
		<input type='hidden' id='cmmntyNo' name='cmmntyNo' value="${commuVo.cmmntyNo}">
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
						<input type="text" class="form-control" id="sj" name="sj">
						</td>
					</tr>
					<tr>
						<th class="th"><span>공지 내용</span></th>
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
			<button id="btnNoticeCreate" type="button" class="btn">작성완료</button>
			<button id="btnNoticePrev" type="button" class="btn" onclick="location.href='/notice/list'">이전</button>
		</div>
		</form>
		</div>
	</div>
	</div>
</div>