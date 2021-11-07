<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.assetFloorTitle, .calender, .floorList {padding: 20px 10px 20px 10px;}
	.assetHomeTitle h3 {font-size: 1.5rem;}
	.calender {border: 1px solid #dddddd; min-height: 400px;}
	.floorDesc {margin-bottom: 20px; min-height: 200px; word-break:break-all; background-color: #f9f9f9; padding: 20px; border: 1px solid #dcdcdc; border-radius: 5px;}
	.floorDesc p {margin: 0px;}
	
	.table td {border-color: white;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table .floorName a {color: black;}
	.table .floorAsset a {font-size: 0.8rem; padding: 4px; border: 1px solid #dddddd; color: black;}
	.table .floorAsset a:hover {background-color: #dddddd;}
</style>
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
		<div class="assetFloorTitle">
			<h3>본사 3층 회의실</h3>
		</div>
		<div class="floorDesc">
			<p>회의실 설명</p>
		</div>
		<div id="calender" class="calender">
		
		</div>
		<div class="floorList">
			<table class="table">
				<colgroup>
					<col width="auto">
					<col width="auto">
				</colgroup>
				<thead>
				<tr>
					<td><span>항목</span></td>
					<td><span>예약</span></td>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td class="floorName"><a href="/asset/assetCalenderSelect">3층 회의실1</a></td>
						<td class="floorAsset"><a href="/asset/assetCalenderSelect">예약</a></td>
					</tr>
					<tr>
						<td class="floorName"><a href="/asset/assetCalenderSelect">3층 회의실2</a></td>
						<td class="floorAsset"><a href="/asset/assetCalenderSelect">예약</a></td>
					</tr>
					<tr>
						<td class="floorName"><a href="/asset/assetCalenderSelect">3층 회의실3</a></td>
						<td class="floorAsset"><a href="/asset/assetCalenderSelect">예약</a></td>
					</tr>
					<tr>
						<td class="floorName"><a href="/asset/assetCalenderSelect">3층 회의실4</a></td>
						<td class="floorAsset"><a href="/asset/assetCalenderSelect">예약</a></td>
					</tr>
					<tr>
						<td class="floorName"><a href="/asset/assetCalenderSelect">3층 회의실5</a></td>
						<td class="floorAsset"><a href="/asset/assetCalenderSelect">예약</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>