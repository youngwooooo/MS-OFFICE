<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.form-control{
		width: 100%;
	    height: 30px;
	    margin-left: 5px;
	    font-size: 0.9rem;
	    border: 1px solid #dddddd;
	    padding: 0px 10px 0px 10px;}
	.btnComment {
		margin-left: 5px;
    	font-size: 0.8rem;
	}
	#btnAddComment{
	    width: 50px;
	    height: 30px;
	    border: 1px solid #55beff;
	    background-color: #55beff;
	    color: white;
	}
	.commentTitle{
	    font-size: 0.8rem;
	    font-weight: bold;
	    padding-left: 10px;
	}
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
	
	.row .InBtn {
    	float: right;
    	border-color: #55beff; background-color: #55beff; color: white;
   	    border-radius: 10px;
 	    margin-right: 10px;
	    width: 60px;
	    height: 30px;
	    
	}
	.row .InBtn:hover {background-color: #009dff; border-color: #009dff;}
	
	.row .upBtn {
    	border: .5px solid #55beff; font-size: 0.7rem; color: black; border-radius: 10px; width: 40px; height: 25px; background-color: white;
	}
	.row .upBtn:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.actUp {
    	border: .5px solid #55beff; font-size: 0.7rem;
    	background-color: #55beff; color: white;
    	border-radius: 10px; width: 40px; height: 25px;
	}
	.actUp:hover {background-color: #009dff; border-color: #009dff; font-weight: bold;}
	.actDel {
    	border: .5px solid #55beff; font-size: 0.7rem; color: black; border-radius: 10px; width: 40px; height: 25px; background-color: white;
	}
	.actDel:hover {background-color: #55beff; color: white; font-weight: bold;}
	.activeCk {
    	border: .5px solid #55beff; font-size: 0.7rem;
    	background-color: #55beff; color: white;
    	border-radius: 10px; width: 40px; height: 25px;
	}
	.activeCk:hover {background-color: #009dff; border-color: #009dff; font-weight: bold;}
	.activeCancel {
    	border: .5px solid #55beff; font-size: 0.7rem; color: black; border-radius: 10px; width: 40px; height: 25px; background-color: white;
	}
	.activeCancel:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.activeBtnUpDel{float:right;}
	.acticeUpPlay{float:right;}
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
	.commentAdd .myComment {display: flex; margin-top: 10px;}
	.myComment img {width: 30px; height: 30px; border-radius: 50%;}
	.commentList img {width: 30px; height: 30px; border-radius: 50%;}
	.editComment img {width: 30px; height: 30px; border-radius: 50%;}
	.commentAdd .myComment input {width: 100%; height: 30px; margin-left: 5px;}                                                                      
	.commentAdd .myComment .btnComment {margin-left: 5px; font-size: 0.8rem;}                                                                        
	.commentAdd .myComment .btnComment .btnAddComment {width:50px; height: 30px; border: 1px solid #55beff; background-color: #55beff; color: white;}
	.commentAdd .myComment .btnComment .btnAddComment:hover {background-color: #009dff; border-color: #009dff;}                                      
	.commentList {height: 100%; min-height: 60px; margin-top: 10px;}                                                                                 
	.commentList .memberImg {position: absolute;}                                                                                                    
	.commentList .comments {margin-left: 30px; overflow: hidden;}                                                                                    
	.commentList .comments p {margin: 0px 0px 0px 5px; padding-top: 5px; font-size: 0.9rem;}                                                         
	.commentList .comments span{font-size: 0.8rem; color: #888; margin-left: 5px;}                                                                   
	.commentList .comments .divEditAnswer {float: right;}                                                                                            
	.commentList .comments .divEditAnswer button {color: #888;}                                                                                      
	.commentList .comments .divEditAnswer button:hover {background: #f7f7f7;}                                                                        
	.commentAdd .editComment {display: none; margin-top: 10px; margin-bottom: 10px;}                                                                                       
	.commentAdd .editComment input {width: 100%; height: 30px; margin-left: 5px; font-size: 0.9rem;}                                                                       
	.commentAdd .editComment .btnComment {margin-left: 5px; font-size: 0.8rem; display: flex;}                                                                             
	.commentAdd .editComment .btnComment .btnEditComment {width:50px; height: 30px; border: 1px solid #55beff; background-color: #55beff; color: white; margin-right: 5px;}
	.commentAdd .editComment .btnComment .btnEditComment:hover {background-color: #009dff; border-color: #009dff;}                                                         
	.commentAdd .editComment .btnComment .btnCancelComment {width:50px; height: 30px; border: 1px solid #dddddd; color: black;}                                            
	.commentAdd .editComment .btnComment .btnCancelComment:hover {background-color: #dddddd;}                                                                              
	
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
	.row .divNotice{min-height: 277px;}
	.row .tab-content1{min-height: 220px;}
	.row .divActive{min-height: 299px;}
	.row .tab-content2{min-height: 146px;}
	
	.fade {
	    position: fixed;
	  	top:0; left: 0; bottom: 0; right: 0;
	  	background: rgba(0, 0, 0, 0.5);
    }
	.modal-dialog {left:180px;}
	.modal-content {border: 1px solid #ddd; border-radius: 8px; padding: 20px; margin-bottom: 15px; width:430px;}
	.modal-content .modal-header {display:unset; padding-bottom: 5px;}
	.modal-content .modal-header2 {display:unset; padding-bottom: 5px; font-size: 0.9rem;}
	.modal-content .modal-header2 {display:unset;padding:2px;}
	.modal-content .communityTitle {margin: 10px 0;}
	.modal-content .communitySubject {padding-bottom: 5px;}
	.modal-content .communitySubject span {font-size: 0.9rem; color: #888; padding-left: 3px;}
	.modal-content .communityContent .table tr {border-color: white;}
	.modal-content .communityContent .table td {border-color: white; font-size: 0.8rem; padding: 3px;}
	.modal-content .communityContent .table td > span {color: #888;}
	.modal-content .divGoSurvey {text-align: center; border-top: 1px dashed #dddddd;}
	.divGoCom #btnGoCom {border: 2px solid #55beff; font-size: 0.8rem; color: black; border-radius: 20px; width: 100%; margin-top: 10px; height: 40px;}
	.divGoCom #btnGoCom:hover {background-color: #55beff; color: white; font-weight: bold;}
	.modal-footer{padding:0;}
    .fileImage{border: 1px solid #e9ecef; height: 356px;}
    .comCreate, .comCancel:hover {
	    background-color: #009dff;
	    border-color: #009dff;
	}
	.uploadResult {border: 1px solid #e9ecef; height: 356px;}
	.uploadResult2 {border: 1px solid #e9ecef; height: 356px;}
	.noticeCn {border: 1px solid #e9ecef; height: 356px; padding:10px;}
	.uploadResult img{width:300px; height:300px; margin: 0px 2rem;}
	.uploadResult2 img{width:300px; height:300px;}
	.comCreate, .comCancel {
	    width: 50px;
	    height: 30px;
	    border: 1px solid #55beff;
	    background-color: #55beff;
	    color: white;
	}
	.status {border: 1px solid #ff616b; background-color: #ff616b; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.statusEnd {border: 1px solid #787878; background-color: #787878; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.rightHead {
	    float:right;
	}
	.heartCss{margin:10px;}
	.heartCss:hover{cursor: pointer;}
	.addImage {margin: 7rem 9rem;}
	
	.fileImage:hover {background: rgba(0, 0, 0, 0.1); cursor: pointer;}
	.fileImage {margin-top: 20px; margin-bottom: 20px;}
	.activePic img{width:300px; height:300px; border:1px #ddd solid;}
	
	.box{
		position:relative;
		transition: .5s ease;
	    padding: 0px 18px;
	}
	.likeNanswer{
		position:absolute;
		visibility:hidden; 
	}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.box:hover img{filter: brightness(70%)}
	.box:hover .likeNanswer{visibility:visible;}
	.activeDate { color: #888;}
	.modal-footer1 .uploadNotice {min-height: 60px;}
	.modal-footer1 .uploadNotice p {padding: 5px 10px 5px 10px; margin-bottom: 0px; font-size: 0.8rem;}
	
	.uploadActive img {width: 350px;
					    height: 350px;
					    margin: 2px 1.2rem;}
	.homeTop{padding:10px; padding-bottom:0px;}
	.editIcon {opacity:50%;}
	.editIcon:hover {opacity:100%;}
	.answerAct{
		border-top: 1px solid #e9ecef;
	    padding-top: 10px;
	    margin-top: 10px;
	    padding-left: 10px;
	    padding-right: 10px;
	}
	.myComment {
		display: flex;
	    margin-top: 10px;
	}
	.comDetailEdit{
		display:none;
	}
	
	#nmAct img {
		width: 30px;
	    height: 30px;
	    border-radius: 50%;
	} 
	#sjAct{
		border: none;
	}                                                                                                                                                                               
	#cnAct{
		border: none;
	}
	
	.commuContent {font-size: 0.9rem;}  
	.notice-title:hover {cursor: pointer;}
	.fa-times:hover {cursor: pointer;}
	.commendCss:hover {cursor: pointer;}
</style>
<script type="text/javascript">

$(document).ready(function(e){
	$("input[id='sjAct']").css("board","none");
	// 활동 게시물 수정하기 버튼
	$(".actUp").on("click", function(){
		$(".actInput").attr("readonly", false);
		$(".activeBtnUpDel").css("display", "none");
		$(".acticeUpPlay").css("display", "block");
		$("input[id='sjAct']").css("border","1px solid #ced4da");
		$("input[id='sjAct']").css("border-radius",".25rem");
		$("textarea[id='cnAct']").css("border","1px solid #ced4da");
		$("textarea[id='cnAct']").css("border-radius",".25rem");
	});
	
	// 활동 게시물 수정 후 확인(제출)
	var formAct = $("#actFrmUp");
	$("#actUpdateSub").on("click", function(){
		formAct.submit();
	});
	
	// 활동 삭제
	$(".actDel").on("click",function(){
		var input = confirm("게시물을 삭제하시겠습니까?");
		
		if(input){//true
			$("#frmActDel").attr("action","/com/comActDelete").submit();
		}else{//false
			return;
		}
	});
	
	// 활동 게시물 등록하기
	var formObj = $("#frm");
	$("#btnGoCom").on("click", function(){
		var sj = $("input[name='sj']");			
		var uploadFileX = $(".uploadResult p").length
		// 제목 체크
		if(fn_isEmpty(sj.val())){
			alert("공지제목을 입력하세요.");
			sj.focus();
			return false;
		}
		// 파일 체크
		if(uploadFileX == 0){
			alert("사진을 등록해주세요");
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
				targetP.remove();
				if($(".uploadResult p").length == 0) {
					$(".fileImage").css("display", "block");
					$(".uploadResult").css("display", "none");
				}
			}
				
		}); // ajax
		
	});
	
	
	// 업로드 시 이미지 보이기
	function showUploadedFile(uploadResultArr) {
		if(!uploadResultArr || uploadResultArr.length == 0) {return;}
		var str ="";
		$(uploadResultArr).each(function(i, obj){
			console.log(obj);
			
			var fileCallPath = encodeURIComponent(obj.fileCours + "/" + obj.fileNm);
			str += "<p data-cours='"+obj.fileCours+"'data-nm='"+obj.fileNm+"'data-orginNm='"+obj.fileOrginlNm+"'data-fileSize='"+obj.fileSize+ "'data-extsn='"+obj.extsn +"'>";
			str += "<span data-file=\'"+ fileCallPath + "\'data-type='file'><i class='fas fa-times ml-2' style='padding:3px; float:right; margin-right:10px;'></i></span>";
			str += '<img src="/showImg?fileName='+fileCallPath+'" >';
			str += "</p>";
			

			console.log(fileCallPath);
			
		});
		//console.log("str"+ str);
		$("#myModal .uploadResult").append(str);
	}
	
	
	$("#myModal input[type='file']").change(function(e){
		console.log("제발");
		// Ajax를 이용하는 파일업로드는 FormData를 이용해서 필요한 파라미터를 담아 전송 
		var formData = new FormData();
		var inputFile = $("input[name='uploadfile']");
		var files = inputFile[0].files;
		
		console.log(files);
		formData.append("uploadFile", files[0]);
		console.log(formData);
		
		var reg = /(.*?)\/(jpg|jpeg|png|bmp|jfif)$/;	// 이미지를 구분하기 위한 정규표현식
		if(files[0].type.match(reg)){
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
					if($(".uploadResult p").length > 0){
						$(".fileImage").css("display", "none");
						$(".uploadResult").css("display", "block");
					}
				}
			});
			
		}else{
			alert("이미지 파일이 아닙니다.");
			return false;
		}
		
	});
	
});// ready(function)


function fn_noticeModal(cmmntyNo, bbscttNo){
// 	var tdClick = e.getElementsByTagName("td");

 console.log("cmmntyNo"+cmmntyNo);
 console.log("bbscttNo"+bbscttNo);
 var obj = {cmmntyNo: cmmntyNo, bbscttNo: bbscttNo};
console.log(obj);
 $.ajax({
    type:"post"
    ,url:"/com/noticeAjax"
    ,data:JSON.stringify(obj)   		//보낼 데이터
    ,contentType:"application/json"
    ,cache:false
    ,success:function(data){
    	console.log(data);
    	$("#sjMd").text(data.sj);			// 제목
    	var res = (data.writngTm).substring(0,10);
    	$("#dtMd").text(res);
    	
    	$("#nmMd").text(data.nm);			// 작성자
    	$("#rdcntUp"+data.bbscttNo).text(data.rdcnt);		// 조회 수
    	
    	$("#cnMd").text(data.cn);			// 소개
    	
   		$(".uploadNotice").empty();
    	// 첨부파일 조회
    	var fileNo = data.fileNo;
    	console.log(fileNo);
    	$.getJSON("/community/getFileList", {fileNo: fileNo}, function(arr){
    		console.log(arr);
    		var str = "";
    		
    		$(arr).each(function(i,fileVo){
    			var fileCallPath = encodeURIComponent(fileVo.fileCours + "/" + fileVo.fileNm + "_" + fileVo.fileOrginlNm);
    			str += "<p data-cours='"+fileVo.fileCours+"'data-fileOrdr='"+fileVo.fileOrdr+"'data-fileNo='"+fileVo.fileNo+"'data-nm='"+fileVo.fileNm+"'data-orginNm='"+fileVo.fileOrginlNm+"'data-fileSize='"+fileVo.fileSize+ "'data-extsn='"+fileVo.extsn+ "'data-fileSize='"+fileVo.fileSize+ "'>";
    			str += "<i class='fas fa-file mr-2'></i>"+ fileVo.fileOrginlNm +"("+ fileSizePrint(fileVo.fileSize) +")";
    			str += "</p>";
    		});
    		$(".uploadNotice").append(str);
    	
    	}); //getJSON
    	
		// 다운로드
		$(".uploadNotice").on("click","p",function(e){
			
			var pObj = $(this);
			console.dir(pObj);
			console.dir(pObj.data("fileno"));
			console.dir(pObj.data("fileordr"));
			
			// 파일 다운로드
		 	location.href = "/download?fileNo=" + pObj.data("fileno") + "&fileOrdr=" + pObj.data("fileordr");
			
		});
    }
 });
}


//좋아요 조회
function selectHeart(cmmntyNo,bbscttNo){
	var obj = {"cmmntyNo": cmmntyNo, "bbscttNo": bbscttNo};
	$(".commendHeart").html("");
	$.ajax({
		type:"post"
		    ,url:"/com/comLikeSelect"
		    ,data:JSON.stringify(obj)   		//보낼 데이터
		    ,contentType:"application/json"
		    ,cache:false
		    ,success:function(likeSelect){
		    	console.log(obj)
		    	$.ajax({
		    	    type:"post"
		    	    ,url:"/com/activeAjax"
		    	    ,data:JSON.stringify(obj)   		//보낼 데이터
		    	    ,contentType:"application/json"
		    	    ,cache:false
		    	    ,success:function(data){
		    	    	console.log(data)
				    	console.log(data.likeCn); //0
				    	console.log(data.answerCn); //0
				    	if(likeSelect == null || likeSelect==''){
					    	var heartStr = '<span class="heartCss"onclick="fn_likeUpdate('+cmmntyNo+','+ bbscttNo +',' +'N'+')">';
				    		heartStr += '<i class="far fa-heart fa-2x" style="color:red" ></i>'+data.likeCn+'</span>';
				    	}else {
				    		if(likeSelect.likeAt == 'Y'){
				    			var heartStr = '<span class="heartCss" onclick="fn_likeUpdate('+likeSelect.cmmntyNo+','+ likeSelect.bbscttNo+','+'Y'+')">';
				    			heartStr += '<i class="fas fa-heart fa-2x" style="color:red" ></i>'+data.likeCn+'</span>';
				    		}else {
				    			var heartStr = '<span class="heartCss" onclick="fn_likeUpdate('+likeSelect.cmmntyNo+','+ likeSelect.bbscttNo+','+'N'+')">';
				    			heartStr += '<i class="far fa-heart fa-2x" style="color:red"></i>'+data.likeCn+'</span>';
				    		}
				    	}
				    	heartStr += '<span class="commendCss" onclick="fn_commendShow()"><i class="far fa-comment-dots fa-2x"></i><span id=topAnswerCn'+likeSelect.cmmntyNo+ likeSelect.bbscttNo+'>'+data.answerCn+'</span></span>';
				    	$(".commendHeart").append(heartStr);
				    	$("#likeCountSpan"+likeSelect.cmmntyNo+likeSelect.bbscttNo).text(data.likeCn);
				    	$("#answerCountSpan"+likeSelect.cmmntyNo+likeSelect.bbscttNo).text(data.answerCn);
		    	    }
		    	});
		    }
	});
}
//댓글 보이기
function fn_commendShow(){
	if($(".answerAct").css("display") == 'none'){
		$(".answerAct").css("display","block");
	}else{
		$(".answerAct").css("display","none");
	}
}

//좋아요 변경
function fn_likeUpdate(cmmntyNo,bbscttNo,likeAt){
	if(likeAt=="Y"){
		likeAt= "N"
	}else{
		likeAt = "Y"
	}
	var obj = {"cmmntyNo": cmmntyNo, "bbscttNo": bbscttNo, "likeAt": likeAt};
	$.ajax({
		type:"post"
		    ,url:"/com/comLikeUpdateY"
		    ,data:JSON.stringify(obj)   		//보낼 데이터
		    ,contentType:"application/json"
		    ,cache:false
		    ,success:function(result){
		    	
		    }
	});
	setTimeout(function(){selectHeart(cmmntyNo,bbscttNo)}, 30);
	
}

var N = "N";
var Y = "Y";

// 활동모달 조회
function fn_activeModal(cmmntyNo, bbscttNo, empno, estblEmpno){
// 	var tdClick = e.getElementsByTagName("td");
var obj = {"cmmntyNo": cmmntyNo, "bbscttNo": bbscttNo};
console.log(obj);
 
selectHeart(cmmntyNo,bbscttNo);
 $.ajax({
    type:"post"
    ,url:"/com/activeAjax"
    ,data:JSON.stringify(obj)   		//보낼 데이터
    ,contentType:"application/json"
    ,cache:false
    ,success:function(data){
    	console.log(data);
    	if(empno==data.wrterEmpno || empno== estblEmpno){
    		console.log(empno);
    		console.log(data.empno);
    		console.log(estblEmpno);
    		$(".activeBtnUpDel").css("display", "block");
    		
    	}
    	
    	$("#sjAct").val(data.sj);			// 제목
    	var res = (data.writngTm).substring(0,10);
    	$("#dtAct").text(res);
    	$("#nmAct").empty();
    	var profileNo = '<img src="/reload?fileNo=' + data.photoNo +'">'+' '+data.nm
    	$("#nmAct").append(profileNo);			// 작성자
    	
    	$("input[name='bbscttNo']").val(data.bbscttNo);
    	$("#cnAct").text(data.cn);			// 소개
		$("#fileNoAct").val(data.fileNo);
   		$(".uploadActive").empty();
    	console.log(data.fileNo);
    	
    	$(".answerAct").empty();
    	answerStr="";
    	answerStr += '<div class="commentTitle"><span>댓글</span>(<span id="answerCount'+ data.cmmntyNo+data.bbscttNo +'">'+data.answerCn+'</span>)</div>';
		answerStr += '<div class="commentAdd">';
		answerStr += '<div class="myComment">';
		answerStr += '<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">';
		answerStr += '<input type="text" class="form-control" name="bbtCn">';
		answerStr += '<div class="btnComment">';
		answerStr += '<button id="btnAddComment" class="btnAddComment" type="button" onclick="fn_createComment('+ data.cmmntyNo+','+data.bbscttNo +')">등록</button>';
		answerStr += '</div>';
		answerStr += '</div>';
		answerStr += '<div id="commentList'+ data.cmmntyNo+data.bbscttNo +'" class="commentList">';
		answerStr += '</div>';
		answerStr += '</div>';
		
		$(".answerAct").append(answerStr);
    	// 첨부파일 조회
    	var fileNo = data.fileNo;
    	console.log(fileNo);
    	$.getJSON("/community/getFileList", {fileNo: fileNo}, function(arr){
    		console.log(arr);
    		var str = "";
    		
    		$(arr).each(function(i,fileVo){
    			var fileCallPath = encodeURIComponent(fileVo.fileCours + "/" + fileVo.fileNm);
    			str += "<p data-cours='"+fileVo.fileCours+"'data-fileOrdr='"+fileVo.fileOrdr+"'data-fileNo='"+fileVo.fileNo+"'data-nm='"+fileVo.fileNm+"'data-orginNm='"+fileVo.fileOrginlNm+"'data-fileSize='"+fileVo.fileSize+ "'data-extsn='"+fileVo.extsn+ "'data-fileSize='"+fileVo.fileSize+ "'>";
    			str += '<img src="/showImg?fileName='+fileCallPath+'" >';
    			str += "</p>";
    		});
    		$(".uploadActive").append(str);
    	
    	}); //getJSON
    	
    	// 댓글 조회
    	$.ajax({
    		 type:"post"
    	    ,url:"/com/activeAnswerList"
    	    ,data:JSON.stringify(obj)   		//보낼 데이터
    	    ,contentType:"application/json"
    	    ,cache:false
    	    ,success:function(answerList){
    	    	console.log(answerList);
    	    	for(var j=0; j<answerList.length; j++){
    	    		console.log(data.cmmntyNo);
    	    		console.log(data.cmmntyNo);
    	    		console.log(data.cmmntyNo);
    	    		if(data.cmmntyNo == answerList[j].cmmntyNo && data.bbscttNo == answerList[j].bbscttNo){
    	    			if(answerList[j].bbtCn == null){
							answerList[j].bbtCn = "&nbsp";
						}
						console.log(answerList.length);
    	    			var answerListstr = '<div id="resultComment'+ answerList[j].answerNo +'" class="resultComment">' 	
						+ '<div class="addComment">'
						+ '<input type="hidden" id="answerNo'+ answerList[j].answerNo +'" name="answerNo" value="'+ answerList[j].answerNo +'">'
						+	'<span class="memberImg"><img src="/reload?fileNo=' + answerList[j].photoNo +'"></span>'
						+	'<div class="comments">'
						+		'<p>'+ answerList[j].bbtCn +'</p>'
				 		+		'<span>'+ answerList[j].updtTm +'</span>'
						+	'</div>'
						+ '</div>'
						+ '<div class="editComment">'
						+	'<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">'
						+	'<input type="text" class="form-control" name="bbtCn">'
						+	'<div class="btnComment">'
						+		'<button id="btnEditComment" class="btnEditComment" type="button" onclick="fn_editComment('+ data.cmmntyNo+','+data.bbscttNo+','+ answerList[j].answerNo +')">수정</button>'
						+		'<button id="btnCancelComment" class="btnCancelComment" type="button" onclick="fn_cancelComment(this)">취소</button>'
						+	'</div>'
						+ '</div>'
					    + '</div>';
						
						console.log(answerListstr);
						$("#commentList"+ data.cmmntyNo+data.bbscttNo +"").append(answerListstr);
						if(answerList[j].empno == ${empVo.empno}){
							var edit = '<div class="divEditAnswer">'
									+		'<button type="button" class="btn" onclick="fn_openEditComment(this)"><i class="far fa-edit"></i></button>'
									+		'<button type="button" class="btn" onclick="fn_deleteComment('+ data.cmmntyNo+','+data.bbscttNo+','+ answerList[j].answerNo +',this)"><i class="fas fa-times"></i></button>'
									+	'</div>'
							$("#resultComment"+ answerList[j].answerNo +" .comments").append(edit);
						}//if
    	    		}//if
    	    	}//for
    	    }//success
    	 });
    }//success
 });
}

//댓글 등록
function fn_createComment(cmmntyNo, bbscttNo){
	console.log("cmmntyNo"+cmmntyNo);
	console.log("bbscttNo"+bbscttNo);
	var empno = ${empVo.empno};
	console.log(empno);
	var bbtCn = $("input[name='bbtCn']");
	console.log(bbtCn);
	if( fn_isEmpty(bbtCn.val()) || $.trim(bbtCn.val()) == ""){
		alert("댓글을 입력하세요.");
		bbtCn.focus();
		return false;
	}
	var answerCount = $("#answerCount"+ cmmntyNo + bbscttNo+"").text();
	var addAnswerCount = parseInt(answerCount) + 1;
	
	$.ajax({
		url : "/com/createAnswer"
		, type : "post"
		, data : {"cmmntyNo": cmmntyNo,"bbscttNo": bbscttNo, "empno": empno, "bbtCn":bbtCn.val()}
		, success : function(answerNo){
			console.log(answerNo);
			if(answerNo != null){
				$.ajax({
					url : "/com/createdAnswer"
					, type : "post"
					, data : {"cmmntyNo": cmmntyNo,"bbscttNo": bbscttNo,"answerNo" : answerNo}
					, success : function(answer){
						console.log(answer);
						if(answer.bbtCn == null){
							answer.bbtCn = "&nbsp";
						}
						
						var str = '<div id="resultComment'+ answer.answerNo +'" class="resultComment">' 	
							+ '<div class="addComment">'
							+ '<input type="hidden" id="answerNo'+ answer.answerNo +'" name="answerNo" value="'+ answer.answerNo +'">'
							+	'<span class="memberImg"><img src="/reload?fileNo=${sessionScope.empVo.fileNo}"></span>'
							+	'<div class="comments">'
							+		'<p>'+ answer.bbtCn +'</p>'
					 		+		'<span>'+ answer.updtTm +'</span>'
							+	'</div>'
							+ '</div>'
							+ '<div class="editComment">'
							+	'<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">'
							+	'<input type="text" class="form-control" name="bbtCn">'
							+	'<div class="btnComment">'
							+		'<button id="btnEditComment" class="btnEditComment" type="button" onclick="fn_editComment('+ cmmntyNo+','+bbscttNo+','+ answer.answerNo +')">수정</button>'
							+		'<button id="btnCancelComment" class="btnCancelComment" type="button" onclick="fn_cancelComment(this)">취소</button>'
							+	'</div>'
							+ '</div>'
						    + '</div>';
						    
						$(".commentList").append(str);
						if(answer.empno == ${empVo.empno}){
							var edit = '<div class="divEditAnswer">'
									+		'<button type="button" class="btn" onclick="fn_openEditComment(this)"><i class="far fa-edit"></i></button>'
									+		'<button type="button" class="btn" onclick="fn_deleteComment('+ cmmntyNo+','+bbscttNo+','+  answer.answerNo +',this)"><i class="fas fa-times"></i></button>'
									+	'</div>'
							$("#resultComment"+ answer.answerNo +" .comments").append(edit);
						}
						var answerCount = $("#answerCount"+ cmmntyNo + bbscttNo+"").text(addAnswerCount);
						$("#answerCountSpan"+cmmntyNo+bbscttNo).text(addAnswerCount);
						$("#topAnswerCn"+ cmmntyNo + bbscttNo +"").text(addAnswerCount);
						bbtCn.val(null);
						bbtCn.focus();
					}
				});

			}
		}
	});
	
}

// 카드 댓글 '수정 아이콘' 클릭 시
function fn_openEditComment(obj){
	var comment = $(obj).parents(".comments").find("p").text();
	$(obj).parents(".resultComment").find(".editComment input[name='bbtCn']").val(comment);
	$(obj).parents(".resultComment").find(".addComment").css("display", "none");
	$(obj).parents(".resultComment").find(".editComment").css("display", "block");
}

// 커뮤니티 수정아이콘 누르면
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
		                   	$(".commu"+cmmntyNo).text(editedCommu.sj);
		                   	$(".comDetailTop").css("display", "block");
		               		$(".comDetailEdit").css("display", "none");
		               }
		            });
			}
		}
	});
}


//활동 댓글 수정
function fn_editComment(cmmntyNo, bbscttNo, answerNo){
   console.log(answerNo);
   var updtEmpno = ${sessionScope.empVo.empno};
   var bbtCn = $("#resultComment"+ answerNo +" input[name='bbtCn']");
   console.log(bbtCn.val());
   if( fn_isEmpty(bbtCn.val()) || $.trim(bbtCn.val()) == ""){
      alert("댓글을 입력하세요.");
      answerCn.focus();
      return false;
   }
   
   $.ajax({
      url : "/com/editAnswer"
      , type : "post"
      , data : {"updtEmpno" : updtEmpno, "bbtCn" : bbtCn.val(), "cmmntyNo" : cmmntyNo, "bbscttNo" : bbscttNo, "answerNo" : answerNo}
      , success : function(result){
         console.log(result);
         if(result != null){
            $.ajax({
               url : "/com/createdAnswer"
               , type : "post"
               , data : {"cmmntyNo": cmmntyNo,"bbscttNo": bbscttNo,"answerNo" : answerNo}
               , success : function(editedAnswer){
                  console.log(editedAnswer);
                   $("#resultComment"+ editedAnswer.answerNo +" .comments p").text(editedAnswer.bbtCn);
                   $("#resultComment"+ editedAnswer.answerNo +" .comments span").text(editedAnswer.updtTm);
                   $("#resultComment"+ editedAnswer.answerNo +" .editComment").css("display", "none");
                   $("#resultComment"+ editedAnswer.answerNo +" .addComment").css("display", "block");
               }
            });
         }
      }
   });
}


// 댓글 '수정 아이콘' -> [취소] 클릭 시
function fn_cancelComment(obj){
	$(obj).parents(".resultComment").find(".editComment").css("display", "none");
	$(obj).parents(".resultComment").find(".addComment").css("display", "block");
}

// 댓글 삭제('X' 클릭 시)
function fn_deleteComment(cmmntyNo, bbscttNo, answerNo,obj){
	var answerCount = $("#answerCount"+ cmmntyNo + bbscttNo +"").text();
	var minusAnswerCount = parseInt(answerCount) - 1;
	
	$.ajax({
		url : "/com/deleteAnswer"
		, type : "post"
		, data : {"cmmntyNo" : cmmntyNo, "bbscttNo" : bbscttNo, "answerNo" : answerNo}
		, success : function(result){
			if(result == 1){
				var answerCount = $("#answerCount"+ cmmntyNo + bbscttNo +"").text(minusAnswerCount);
				$("#answerCountSpan"+ cmmntyNo + bbscttNo +"").text(minusAnswerCount);
				$("#topAnswerCn"+cmmntyNo+bbscttNo).text(minusAnswerCount);
				$(obj).parents(".resultComment").remove();			
			}				
		}
	});
	
} 

// 회원 삭제
function fn_delete(sbscrberEmpno,cmmntyNo,obj){
// 	alert(sbscrberEmpno);
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

// 활동 조회모달 닫으면 리로드해서 좋아요 수 변경 적용
$(function(){
	$("#activeModal").on('hide.bs.modal', function(){
		location.reload();
	});
});
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
							<a href="#"><span class="commu${item.cmmntyNo}">${item.sj}</span></a>
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
			<div class="divNotice">
				<div class="noticeTitle">공지사항
					<button id="insertGo1" type="button" class="InBtn" onclick="location.href='/com/noticeListAdd?cmmntyNo=${commuVo.cmmntyNo}'">더보기</button>
				</div>
				<div class="tab-content1">
					<div class="tab-pane show active">
						<table class="table">
							<colgroup>
								<col width="50px">
								<col width="auto">
								<col width="50px">
								<col width="120px">
								<col width="90px">
								<col width="50px">
							</colgroup>
							<c:forEach var="comNoticeVO" items="${comNoticeVO}" varStatus="stat">
							<tr class="trNotice">
								<td>${comNoticeVO.rnum}</td>
								<td class="notice-title" data-toggle="modal" data-target="#noticeModal" onclick="fn_noticeModal(${comNoticeVO.cmmntyNo},${comNoticeVO.bbscttNo})">${comNoticeVO.sj}</td>
								<td>
									<c:if test="${comNoticeVO.fileNo != -1}"><i class="fas fa-paperclip"></i></c:if>
								</td>
								<td>${comNoticeVO.nm}</td>
								<td>
								<fmt:parseDate var="parsedDate" value="${comNoticeVO.writngTm}" pattern="yyyy-MM-dd HH:mm:ss.0"/>
								<fmt:formatDate var="formatRegDate" value="${parsedDate}" pattern="yyyy-MM-dd"/>
								${formatRegDate}
								</td>
								<td id="rdcntUp${comNoticeVO.bbscttNo}">${comNoticeVO.rdcnt}</td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<div class="divActive">
				<div class="activeTitle">활동 사진
					<button id="insertGo2" type="button" class="InBtn" data-toggle="modal" data-target="#myModal">작성</button>
				</div>
				<div class="tab-content2">
					<div class="row activePic">
					<c:forEach var="comActiveVO" items="${comActiveVO}">
						<div class="col-sm-4 box" data-toggle="modal" data-target="#activeModal" onclick="fn_activeModal(${comActiveVO.cmmntyNo},${comActiveVO.bbscttNo},${empVo.empno},${commuVo.estblEmpno})">
							<img src="/display?fileNo=${comActiveVO.fileNo}&fileOrdr=${comActiveVO.fileOrdr}" >
							<div class="likeNanswer">
								<i class="fas fa-heart fa-2x likeCn"  style="color:red"></i><span id="likeCountSpan${comActiveVO.cmmntyNo}${comActiveVO.bbscttNo}">${comActiveVO.likeCn}</span>
								<i class="fas fa-comment fa-2x answerCn"></i><span id="answerCountSpan${comActiveVO.cmmntyNo}${comActiveVO.bbscttNo}">${comActiveVO.answerCn}</span>
							</div>
						</div>
					</c:forEach>
					</div>
				</div>
				<div class="Paging">
					<ul>
						<c:if test="${param.currentPage  > 5}">
						<li>
							<a href="/com/detail?cmmntyNo=${commuVo.cmmntyNo}&currentPage=1"><i class="fas fa-step-backward"></i></a>
						</li>
						<li><a href="/com/detail?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${paging.startPage - 5}"><i class="fas fa-chevron-left"></i></a></li>
						</c:if>
						
						<c:forEach var="pNo" begin="${paging.startPage}" end="${paging.endPage}" varStatus="stat">
						<li class="<c:if test="${pNo == param.currentPage}">active</c:if>">
							<a href="/com/detail?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${pNo}&selSearch=${param.selSearch}&keyword=${param.keyword}">${pNo}</a>
						</li>
						</c:forEach>
						
						<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
						<li><a href="/com/detail?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${paging.startPage + 5}"><i class="fas fa-chevron-right"></i></a></li>
						<li><a href="/com/detail?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${paging.totalPages}"><i class="fas fa-step-forward"></i></a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- 활동 작성 모달 -->
			<div class="container">
				<div class="modal fade" id="myModal">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<form id="frm" method="post" action="/com/activeinsert">
								<input type="hidden" name="cmmntyNo" value="${commuVo.cmmntyNo}">				  			
								<input type="hidden" name="wrterEmpno" value="${empVo.empno}">				  			
							<!-- Modal Header -->
							<div class="modal-header2">
							  	<div>
								  	<button type="button" class="close" data-dismiss="modal">&times;</button>
							  	</div>
							</div>
							<div class="modal-header2">
							  	<input type='text' id='sj' name='sj' placeholder="제목을 입력해주세요." style="border: none;">
							</div>
							
							<!-- Modal body -->
							<!-- 파일 -->
							<label for="uploadfile">
								<div class="modal-body fileImage">
									<i class="fas fa-plus fa-5x addImage"></i>
								</div>
							</label>
							<input type='file' id='uploadfile' name='uploadfile' style="display: none;">
							
							<div class='uploadResult' style="display: none; padding:10px;">
							
							</div>
							<div class="commuContent">
								<div style="padding: 3px 0px;">내용</div>
								<textarea id="cn" name="cn" placeholder="내용을 입력해주세요." style="border: none; width:388px; resize:none; "></textarea>
							</div>
							<!-- Modal footer -->
							<div class="modal-footer">
							  	<div class="divGoCom">
									<button id="btnGoCom" type="button" class="btn" >등록하기</button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<!--활동 조회/수정 모달 -->
			<div class="container">
				<div class="modal fade" id="activeModal">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<form id="actFrmUp" method="post" action="/com/comActUpdate">
								<input type="hidden" name="cmmntyNo" value="${commuVo.cmmntyNo}">
								<input type="hidden" name="bbscttNo" id="bbscttNo">				  			
							<!-- Modal Header -->
							<div class="modal-header2">
							  	<div>
								  	<button type="button" class="close" data-dismiss="modal">&times;</button>
							  	</div>
								<div class="communitySubject">
									<h4 class="communityTitle">
										<input class="actInput" readonly type="text" id="sjAct" name="sj">
									</h4>
									<span id="nmAct"></span>
									<span class="activeBtnUpDel" style="display:none;">
										<button type="button" class="actUp">수정</button>
										<button type="button" class="actDel">삭제</button>
									</span>
									<span class="acticeUpPlay" id="divFooter1" style="display:none;">
					                  	<button type="button" class="activeCk" id="actUpdateSub">확인</button>
					                  	<button type="button" class="activeCancel" onclick="location.href='/com/detail?cmmntyNo=${commuVo.cmmntyNo}'">취소</button>
					                </span> 	
								</div>
							</div>
							
							<!-- Modal body -->
							<!-- 파일 -->
							
							<div class='uploadResult2'>
								<div class='uploadActive'>
								</div>
							</div>
							<div class="commendHeart" style="padding: 10px 0px;min-height: 54px;">
							</div>
							<div class="commuContent">
								<textarea class="actInput" readonly id="cnAct" rows="3" cols="48" name="cn" style="padding: 5px 10px; resize: none;"></textarea>
							</div>
							<span class="activeDate" id="dtAct"style="padding: 10px;"></span>
							</form>
							<!-- Modal footer -->
						  	<div class="answerAct" style="display:none">
						  		
							</div>
				          	<form method="post" action="/com/comActDelete" id="frmActDel" name="frmActDel">
					        	<input type="hidden" name="cmmntyNo" value="${commuVo.cmmntyNo}" />
					        	<input type="hidden" name="bbscttNo" />
					        </form>
						</div>
					</div>
				</div>
			</div>
			
			<!--공지 조회 모달 -->
			<div class="container">
				<div class="modal fade" id="noticeModal">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							
							<!-- Modal Header -->
							<div class="modal-header">
							  	<div>
								  	<button type="button" class="close" data-dismiss="modal">&times;</button>
							  	</div>
								<div class="communitySubject">
									<h4 class="communityTitle" id="sjMd"></h4>
									<span class="writeDay">작성일 </span><span class="surveyDate" id="dtMd"></span>
								</div>
							</div>
							
							<!-- Modal body -->
							<div class="modal-body">
								<textarea class="lineLess" id="cnMd" style="resize: none; height:356px; width:356px;border: 1px solid #e9ecef;"></textarea>
							</div>
							
							<!-- Modal footer -->
							<div class="modal-footer1">
								<div class="divGoCom">
					  			<div class='uploadNotice'>
								</div>
								</div>
							</div>
						  
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	</div>
</div>