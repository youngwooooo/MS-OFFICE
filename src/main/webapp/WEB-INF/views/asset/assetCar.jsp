<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.assetCarTitle, .carList {padding: 20px 10px 20px 10px;}
	.assetCarTitle h3 {font-size: 1.5rem;}
	.carDesc {margin-bottom: 20px; min-height: 200px; word-break:break-all; background-color: #f9f9f9; padding: 20px; border: 1px solid #dcdcdc; border-radius: 5px;}
	.carDesc p {margin: 0px;}
	
	.table td, .table th {border-color: white;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table thead td:first-child {padding-top: 12px;}
	.table thead td select {width: 15%; height: 30px; font-size: 0.8rem;}
	.table tbody {font-size: 0.9rem;}
	.carList .table tbody tr:hover {background-color: #EEF1F6;}
	.carList .table .carName a {color: black;}
	.carList .table .carAsset {padding-left: 50px;}
	.carList .table .carAsset a {font-size: 0.8rem; padding: 4px; border: 1px solid #dddddd; color: black;}
	.carList .table .carAsset a:hover {background-color: #dddddd;}
	
	/* 대여 모달  */
	#carAsset {top: 200px; left: 150px;}
	#carAsset .modal-header {padding-left: 25px;}
	#carAsset .modal-title {font-size: 1.2rem;}
	#carAsset .form-control {height: 30px;}
	#carAsset #carAssetDate {font-size: 0.9rem;}
	#carAsset #carAssetDate, #carAssetMember {background-color: white; border-color: white;}
	#carAsset .table th {padding-top: 18px;}
	#carAsset .modal-footer button {font-size: 0.9rem;}
</style>
<script type="text/javascript">
	$(function(){
		$(".carAssetModalOpen").on("click", function(){
			var now = new Date();			// 오늘날짜
			var year = now.getFullYear();	// 연
			var month = now.getMonth() + 1;	// 월 
			var date = now.getDate();		// 일
			var hour = now.getHours();		// 시
			var min = now.getMinutes();		// 분
			
			// 1~9월, 1~9일, 0~9시 앞에 0 붙여주기
			if(month < 10){
				month = "0" + month;
			}
			if(date < 10){
				date = "0" + date;
			}
			if(hour < 10){
				hour = "0" + hour;
			}
			if(min < 10){
				min = "0" + min;
			}
			
			var carAssetDate = year + "-" + month + "-" + date + " " + hour + ":" + min;
			$("#carAssetDate").val(carAssetDate);
		});
		
		
	});	// jquery End

</script>
<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h3><a href="/asset/home">예약</a></h3></div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>예약</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/asset/floor1"><span>본사 1층 회의실</span></a>
					</li>
					<li>
						<a href="/asset/floor2"><span>본사 2층 회의실</span></a>
					</li>
					<li>
						<a href="/asset/floor3"><span>본사 3층 회의실</span></a>
					</li>
					<li>
						<a href="/asset/floor4"><span>본사 4층 회의실</span></a>
					</li>
					<li>
						<a href="/asset/car"><span>차량</span></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="lefr-menu-list-content">
		<div class="assetCarTitle">
			<h3>차량 대여</h3>
		</div>
		<div class="carDesc">
			<p>차량 대여 설명</p>
		</div>
		<div class="carList">
			<table class="table">
				<colgroup>
					<col width="auto">
					<col width="auto">
				</colgroup>
				<thead>
				<tr>
					<td><span>차량</span></td>
					<td>
						<select name="" class="form-control">
							<option>전체</option>
							<option>대여 가능</option>
							<option>대여 불가</option>
							<option>반납</option>
						</select>
					</td>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td class="carName"><a href="#">1111 벤츠</a></td>
						<td class="carAsset"><a class="carAssetModalOpen" href="#carAsset" data-toggle="modal">대여</a></td>
					</tr>
					<tr>
						<td class="carName"><a href="#">1111 벤츠</a></td>
						<td class="carAsset"><a href="/asset/carDetail">반납</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="modal" id="carAsset" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<span class="modal-title">대여</span>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form>
				<!-- Modal body -->
				<div class="modal-body">
					<table class="table">
						<colgroup>
							<col width="150px">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr>
								<th>대여일</th>
								<td><input id="carAssetDate" name="" type="text" class="form-control" readonly="readonly"></td>
							</tr>
							<tr>
								<th>대여자</th>
								<td><input id="carAssetMember" name="" type="text" class="form-control" readonly="readonly"></td>
							</tr>
							<tr>
								<th>대여 목적</th>
								<td><input type="text" class="form-control"></td>
							</tr>
							<tr>
								<th>사용 기간</th>
								<td><input type="text" class="form-control"></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnCarAssetDo" type="submit" class="btn btn-primary" data-dismiss="modal">확인</button>
					<button id="btnCarAssetCancel" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>