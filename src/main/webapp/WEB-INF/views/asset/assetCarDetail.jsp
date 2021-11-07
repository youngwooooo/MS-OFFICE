<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.assetCarDetailName, .assetCarDetailInfo, .divAssetCarRD {padding: 20px 10px 20px 10px;}
	.assetCarDetailName h3 {font-size: 1.5rem;}
	.assetCarDetailInfo {border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.assetCarDetailInfo .form-control {background-color: white; border-color: white; font-size: 0.9rem;}
	.assetCarDetailInfo #carAssetDate {font-size: 1rem;}
	
	.table td, .table th {border-color: white;}
	.table th {padding-top: 20px;}
	.table tbody {font-size: 0.9rem;}
	
	.divAssetCarRD {text-align: center;}
	.divAssetCarRD button {font-size: 0.9rem; border: 1px solid #dddddd;}
	.divAssetCarRD #btnAssetCarDelete {background-color: #55beff; color: white; border-color: #55beff;}
	.divAssetCarRD #btnAssetCarDelete:hover {background-color: #009dff; border-color: #009dff;}
	.divAssetCarRD #btnAssetCarList:hover {background-color: #dddddd;}
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
		<div class="assetCarDetailName">
			<h3>1111 벤츠</h3>
		</div>
		<form>
			<div class="assetCarDetailInfo">
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
						<td><input id="" name="" type="text" class="form-control" readonly="readonly"></td>
					</tr>
					<tr>
						<th>대여 목적</th>
						<td><input type="text" class="form-control" name="" readonly="readonly"></td>
					</tr>
					<tr>
						<th>사용 기간</th>
						<td><input type="text" class="form-control" name="" readonly="readonly"></td>
					</tr>
				</tbody>
			</table>
			</div>
			<div class="divAssetCarRD">
				<button id="btnAssetCarDelete" type="button" class="btn">반납하기</button>
				<button id="btnAssetCarList" type="button" class="btn" onclick="javascript:location.href='/asset/car'">목록</button>
			</div>
		</form>
	</div>
</div>