<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.uploadDiv
{padding-top: 10px; padding-bottom: 10px;}                                              
.uploadDiv label {margin: 0px;}                                                                    
.uploadDiv span {border: 1px solid #55beff; background-color: #55beff; color: white; padding: 5px;}
.uploadDiv span:hover {border-color: #009dff; background-color: #009dff; cursor: pointer;}         
.uploadResult {border:1px dashed #dddddd; min-height: 60px;}                                        
.uploadResult p {padding: 5px 10px 5px 10px; margin-bottom: 0px;}                                   

</style>
<div id="body">
	<h1>Upload with Ajax</h1>
	<div class='uploadDiv'>
		<label for="uploadfile"><span><i class="fas fa-plus mr-2"></i>파일</span></label>
		<input type='file' id='uploadfile' name='uploadfile' style="display: none;" multiple>
	</div>
	<div class='uploadResult'>
		
	</div>
	<button id='fileBtn'> 작성 완료 </button>
</div>

<script>
$(function(){
	// <input type='file'>는 readonly이기 때문에 초기화 시켜서 또 다른 첨부파일 추가 할 수 있도록 한다.
	var cloneObj = $("uploadDiv").clone();
	
	// '+ 파일' 클릭 시, 파일 이름(파일 크기) 보이기
	
	$("#uploadfile").on('change',function(){
		var str ="";
		var files = $("input[name='uploadfile']")[0].files
		
		$(files).each(function(i, obj){
			str += '<p><span><i class="fas fa-file mr-2"></i></span>'+ obj.name +'<span>('+ fileSizePrint(obj.size) +')<span><span onclick=""><i class="fas fa-times ml-2"></i></span></p>';
		});
		$(".uploadResult").append(str);
	});
	
	// 업로드 시 이미지 보이기
	function showUploadedFile(uploadResultArr) {
		var str ="";
		$(uploadResultArr).each(function(i, obj){
			var fileCallPath = encodeURIComponect(obj.fileCours + "/")
			var fileSize = $("#uploadfile")[0].files[0].size;
			str += '<p><span><i class="fas fa-file mr-2"></i></span>'+ obj.fileOrginlNm +'<span>('+ fileSizePrint(fileSize) +')<span><span onclick="fn_delFile()"><i class="fas fa-times ml-2"></i></span></p>';
		});
		$(".uploadResult").append(str);
	}
	

	$("input[type='file']").on("click",function(e){
		// Ajax를 이용하는 파일업로드는 FormData를 이용해서 필요한 파라미터를 담아 전송 
		var formData = new FormData();
		var inputFile = $("input[name='uploadfile']");
		var files = inputFile[0].files;
		
		console.log(files);
		// 첨부파일 데이터는 formData에 추가
		for(var i=0; i<files.length; i++) {
			formData.append("uploadFile", files[i]);
		}
		console.log(formData);
		
		// Ajax를 통해서 formData자체를 전송
		$.ajax({
			url: '/notice/fileAjaxAction',
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',
			dataType: 'json',
			success : function(result){
				alert("Uploaded");
				console.log(result);
				//showUploadedFile(result);
			}
		});
	});
	
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