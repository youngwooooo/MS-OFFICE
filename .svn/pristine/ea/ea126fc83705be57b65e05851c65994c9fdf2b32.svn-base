<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	.divNoticeBtn #btnNoticeCreate {border-color: #55beff; background-color: #55beff; color: white;}
	.divNoticeBtn #btnNoticeCreate:hover {background-color: #009dff; border-color: #009dff;}
	.divNoticeBtn #btnNoticePrev:hover, #btnNoticeSave:hover {background-color: #dddddd;}
	
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
.form-control{
	width: 50%;
}

.th{
    text-align: right;
    padding-right: 30px;
	}
</style>
<script type="text/javascript">
$(document).ready(function(){
	//등록 버튼
	$("#btnNoticeCreate").click(function(){
		$("#frm").attr("action", "/address/insertCheck");
		$("#frm").attr("method", "POST");
		$("#frm").submit();	
	});
	
});
</script>
<div id="body">
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
	<div class="lefr-menu-list-content">
		<div class="noticeInTitle">
			<h4>연락처 추가</h4>
		</div>
		<form id="frm">
		<div class="noticeIn-step1" style="padding-left: 200px;">
			<table class="table">
				<colgroup>
					<col width="150px">
					<col width="auto">
				</colgroup>
				<tbody>
					<tr>
						<th class="th"><span>이름</span></th>
						<td><input type="text" class="form-control" id="nm" name="nm"></td>
					</tr>
					<tr>                                                                                                                
						<th class="th"><span>휴대폰</span></th>                                                                           
						<td><input type="text" class="form-control" id="telno" name="telno"></td>                                             
					</tr>                                                                                                               
					<tr>                                                                                                                
						<th class="th"><span>이메일</span></th>                                                                           
						<td><input type="text" class="form-control" id="email" name="email"></td>                                             
					</tr>                                                                                                               
					<tr>                                                                                                                
						<th class="th"><span>주소</span></th>
						<td><input type="text" class="form-control" id="adres" name="adres"></td>
					</tr>
					<tr>
						<th class="th"><span>상세 주소</span></th>
						<td><input type="text" class="form-control" id="adresDetail" name="adresDetail"></td>
					</tr>
					<tr>
						<th class="th"><span>회사</span></th>
						<td><input type="text" class="form-control" id="cmpny" name="cmpny"></td>
					</tr>
					<tr>
						<th class="th"><span>직위</span></th>
						<td><input type="text" class="form-control" id="ofcps" name="ofcps"></td>
					</tr>
					<tr>
						<th class="th"><span>회사전화</span></th>
						<td><input type="text" class="form-control" id="cmpnyTelno" name="cmpnyTelno"></td>
					</tr>
					<tr>
						<th class="th"><span>회사주소</span></th>
						<td><input type="text" class="form-control" id="cmpnyAdres" name="cmpnyAdres"></td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class = 'bigPictureWrapper'>
			<div class='bigPicture'>
			
			</div>
		</div>
		
		<div class="divNoticeBtn">
			<button id="btnNoticeCreate" type="button" class="btn">등록</button>
			<button id="btnNoticePrev" type="button" class="btn" onclick="window.history.back()" >이전</button>
		</div>
		</form>
	</div>
</div>
</body>
</html>