<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<!-- 공통 css -->
<style>
.left-menu-list {
	position: absolute;
	border-right: 1px solid #dee2e6;
	height: 100%;
	width: 260px;
	float: left;
}

.lefr-menu-list-content {
	margin-left: 260px;
	padding-left: 10px;
	padding-right: 10px;
	display: flex;
}

.left-menu-list a {
	color: black;
}

.left-menu-list a:hover {
	color: black;
}

.menu-name {
	padding: 20px 20px 10px 20px;
}

.menu-create {
	padding: 0px 20px 20px 20px;
}

.menu-list {
	padding: 0px 20px 20px 20px;
}

#btCreateBoard {
	width: 100%;
	height: 60px;
	border-color: black;
	background-color: white;
}

#btCreateBoard:hover {
	box-shadow: 0px 5px 15px #dddddd;
}

#btCreateBoard>span {
	font-size: 1rem;
}

.menu-list .menu-list-ul {
	list-style: none;
	padding-left: 0px;
	margin-bottom: 0px;
}

.menu-list li {
	padding-left: 40px;
	margin-top: 3px;
}

.menu-list .pad0 {
	padding-left: 10px;
}

.menu-list li:hover {
	background-color: #f7f8f9;
}

.menu-list span {
	font-size: 0.9rem;
}

#btnsm {
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	letter-spacing: -0.5px;
	word-break: break-all;
	cursor: pointer;
	display: inline-block;
	padding: 0 8px;
	background: #ddd;
	border: 1px solid #ddd;
	font-size: 13px;
	vertical-align: top;
	height: 29px;
	width: 33px;
}

.form-control {
	font-family: 'Noto Sans KR', 맑은 고딕, 돋움, malgun gothic, dotum,
		AppleGothic, Helvetica, sans-serif;
	color: #333;
	white-space: normal;
	word-break: break-all;
	letter-spacing: -0.5px;
	font-size: 13px;
	margin: 0;
	border: 1px solid #ddd;
	padding: 0 4px;
	height: 26px;
	box-sizing: border-box;
	font-weight: normal;
	display: inline-block;
	vertical-align: middle;
	margin-right: 0.2% !important;
	width: 170px;
}

#DDVV div {
	display: inline-block;
}

.send-mail {font-size: 0.9rem; border: 1px soild #55beff; background-color: #55beff; color: white;}
.send-mail:hover {border-color: #009dff; background-color: #009dff; color: white;}

.table {font-size: 0.9rem;}
.table thead {text-align: center;}
.table thead th {border-bottom: none; padding: 5px;}
.table tbody tr:hover {background-color: #f4f4f4;}
</style>

<div id="body">
	<form id="frm1">
		<input type="hidden" id="forDel" name="forDel">
	</form>
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name">
				<h4>
					<a href="#">주소록</a>
				</h4>
			</div>
			<div class="menu-create">
				<a href="insert"><button id="btCreateBoard" type="button" class="btn btn-default">
						<span>연락처 추가</span>
					</button></a>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>공유 주소록</strong></a>
				<ul class="menu-list-ul">
					<li><a href="/address/alladdress"><span>공용 주소록</span></a></li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>개인 주소록</strong></a>
				<ul class="menu-list-ul">
					<li><a href="/address/address"><span>개인 주소록</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 왼쪽네비 -->

	<div class="right-menu">
		<div class="lefr-menu-list-content">
			<div class="menu-name" style="padding-bottom: 30px;">
				<h4>공용 주소록</h4>
			</div>
		</div>
		<div class="lefr-menu-list-content">
			<div class="mailbox-controls">
				<!-- 체크박스 -->
				<a href="/mail/mailSend"><button type="button" class="btn send-mail">
						<i class="fas fa-envelope mr-2"></i> 메일발송
					</button></a>
			</div>
		</div>
		<div class="lefr-menu-list-content">
			<div class="table-responsive mailbox-messages">
				<table class="table">
					<thead>
						<tr>
							<th>
								<input type="checkbox" value="" id="totalCheck" name="totalCheck"> <label for="totalCheck"></label>
							</th>
							<th>이름</th>
							<th>휴대폰</th>
							<th>이메일</th>
							<th>주소</th>
							<th>회사</th>
							<th>직위</th>
							<th>회사전화</th>
							<th>회사주소</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">
						<c:forEach var="aa" items="${aa}" varStatus="status">
							<tr>
								<td>
									<div>
										<input type="checkbox" value="" id="check2"> <label for="check2"></label>
									</div>
								</td>
								<td>${aa.nm}</td>
								<td>${aa.telno}</td>
								<td>${aa.email}</td>
								<td>${aa.adres}</td>
								<td>${aa.cmpny}</td>
								<td>${aa.ofcps}</td>
								<td>${aa.cmpnyTelno}</td>
								<td>${aa.cmpnyAdres}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- /.table -->
			</div>
		</div>
	</div>
	<!-- 오른쪽 네비 -->
</div>
<!-- body -->
<script>

$(document).ready(function(){
	//checkbox를 shift + left mouseKey로 한번에 선택하는 기능
	var $chkboxes = $(".eachCheck");
	var lastChecked = null;
	
	$chkboxes.click(function(e){
	   if(!lastChecked){
	      lastChecked = this;
	      return;
	   }
	   
	   if(e.shiftKey){
	      var start = $chkboxes.index(this);
	      var end = $chkboxes.index(lastChecked);
	      
	      $chkboxes.slice(Math.min(start, end), Math.max(start,end)+1).prop("checked", lastChecked.checked);
	   }
	   
	   lastChecked = this;
	});
	
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
	
	$("#fastadd").click(function() {
		$("#fi").slideToggle();
	});
});
</script>








