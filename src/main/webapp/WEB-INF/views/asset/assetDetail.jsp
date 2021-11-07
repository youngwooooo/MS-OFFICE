<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.assetDetailName, .assetDetailInfo, .divAssetRD {padding: 20px 10px 20px 10px;}
	.assetDetailName h3 {font-size: 1.5rem;}
	.assetDetailInfo {border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.assetDetailInfo .form-control {font-size: 0.9rem; height: 30px;}
	.assetDetailInfo #stDate, #endDate {font-size: 0.9rem; width: 155px; height: 30px; margin-right: 5px;}
	.assetDetailInfo .assetDate {display: flex;}
	.assetDetailInfo .assetDate span {margin-left: 5px; margin-right: 10px; padding-top: 5px;}
 	.assetDetailInfo #stTime, #endTime {width: 70px;}
	
	.table td, .table th {border-color: white;}
	.table th {padding-top: 20px;}
	.table tbody {font-size: 0.9rem;}
	
	.divAssetRD {text-align: center;}
	.divAssetRD button {font-size: 0.9rem; border: 1px solid #dddddd;}
	.divAssetRD #btnAssetUpdate {background-color: #55beff; color: white; border-color: #55beff;}
	.divAssetRD #btnAssetUpdate:hover {background-color: #009dff; border-color: #009dff;}
	.divAssetRD #btnAssetList:hover {background-color: #dddddd;}
</style>
<script type="text/javascript">


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
		<div class="assetDetailName">
			<h3>1층 회의실1</h3>
		</div>
		<form>
			<div class="assetDetailInfo">
			<table class="table">
				<colgroup>
					<col width="150px">
					<col width="auto">
				</colgroup>
				<tbody>
					<tr>
						<th>예약일</th>
						<td class="assetDate">
							<input type="date" id="stDate" name="" class="form-control"><input type="text" id="stTime" name="" class="form-control">
							<span>~</span>
							<input type="date" id="endDate" name="" class="form-control"><input type="text" id="endTime" name="" class="form-control">
						</td>
					</tr>
					<tr>
						<th>예약자</th>
						<td><input type="text" class="form-control" id="" name=""></td>
					</tr>
					<tr>
						<th>목적</th>
						<td><input type="text" class="form-control" id="" name=""></td>
					</tr>
				</tbody>
			</table>
			</div>
			<div class="divAssetRD">
				<button id="btnAssetUpdate" type="button" class="btn">예약 수정</button>
				<button id="btnAssetDelete" type="button" class="btn btn-danger">예약 취소</button>
				<button id="btnAssetList" type="button" class="btn" onclick="javascript:location.href=''">목록</button>
			</div>
		</form>
	</div>
</div>