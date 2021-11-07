<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.left-menu-list {position: absolute; border-right: 1px solid #dee2e6; height: 100%; width: 260px; float: left;}
	.left-menu-list-content{margin-left: 260px; padding-left: 10px; padding-right: 10px; display: flex;}
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
	
	.menu-list-ul a {font-size: 0.9rem;}
	
	.table {text-align: center; font-size: 0.9rem;}
	.table thead th {border-top: none; border-bottom: none; padding: 5px;}
	.table thead tr {border-top: 1px solid #dddddd;}
	.table-responsive {margin-bottom: 30px;}
	.table .mailbox-subject {text-align: left;}
	
	.table tbody tr:hover {background-color: #f4f4f4; cursor:pointer}
	
	#delBtn, #reload-mail {font-size: 0.9rem; border: 1px solid #dddddd;}
	#delBtn:hover, #reload-mail:hover {color: #888;}	
</style>
<script type="text/javascript">
	// ' > 메뉴 ' 클릭 시, 아이콘 변경 및 ul 토글
	$(function(){
		$(".toggle-menu-list").click(function(e){
			e.preventDefault();
			$(this).find("i").toggleClass("fas fa-angle-down mr-2 fas fa-angle-right mr-2");
			$(this).next().slideToggle();
		});
		
	});

//항목 읽을 시 읽음 처리
function updateCnfirmAt(){
	$("#updateCnfirmAt").attr("method", "POST");
	$("#updateCnfirmAt").attr("action", "/mail/detail");
	$("#updateCnfirmAt").submit();
}

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
		$("#forDelMailFrm").attr("action", "/mail/senddelete");				
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
    background-color: white; position: relative;"> <span>메일쓰기</span></button></a>	
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
			<div class="menu-name"><h4>보낸메일함</h4></div>
		</div>
		<div class="lefr-menu-list-content">
			<div class="mailbox-controls">
                <button type="button" class="btn" id="delBtn" onclick="delBtn();">
					<i class="fas fa-trash-alt mr-2"></i>삭제
                </button>
                
                <button type="button" class="btn" id="reload-mail" onclick="window.location.reload()">
                  <i class="fas fa-sync-alt"></i>
                </button>
			</div>
		</div>
		<div class="lefr-menu-list-content">
			<div class="table-responsive mailbox-messages">
	
				
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
					<c:forEach items="${item}" var="item">
						<tr onclick="updateCnfirmAt();" class="dataRow">
						  <td>
						    <div class="">
						      <input type="checkbox" value="" id="eachCheck">
						      <label for="check1"></label>
						    </div>
						  </td>
						  <td><i class="fas fa-envelope"></i></td>
						  <td class="mailbox-name">${item.receiverNm}</td>
						  <td class="mailbox-subject"><b>${item.sj}</b>
						  </td>
						  <td class="mailbox-date">${item.dsptchTm}</td>
						  <c:if test="${item.fileNo != -1}"><td><i class="fas fa-paperclip"></i></td></c:if>
						</tr>
					  </c:forEach>
					</tbody>
                </table>
                <!-- /.table -->
                </div>
              </div>
	</div><!-- 오른쪽 네비 -->
</div><!-- body -->
<div class="Paging">
			<ul id="page1">


				<li><a href=""><i class="fas fa-step-backward"></i></a></li>
	            <li><a href=""><i class="fas fa-chevron-left"></i></a></li>
	            
				<c:forEach var="pageNo" begin="${paging.startPage }" end="${paging.endPage }" varStatus="stat">
			        <li class="<c:if test="${pageNo == param.currentPage}">active</c:if>">
			        </li>       
	           	</c:forEach>
	           	
	            <li><a href=""><i class="fas fa-chevron-right"></i></a></li>
				<li><a href=""><i class="fas fa-step-forward"></i></a></li>
			</ul>
		</div>
		<div class="listSearch">
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
		</div>
<script>
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

$("#del").click(function() {
   
   var str = "";

   for(var i=0; i<$("#eachCheck:checked").length; i++){
         if( i == $("#eachCheck:checked").length - 1 ){ //
            str += $("#eachCheck:checked").eq(i).val();   
            console.log(">> str : " + str);
         }else{
            str += $("#eachCheck:checked").eq(i).val() + ",";
         }
         
      }
   
   $("#forDel").attr("value", str);
   
   $("#frm1").attr("action", "/address/delete");
   $("#frm1").submit();
      
});
</script>