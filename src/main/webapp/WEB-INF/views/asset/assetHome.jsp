<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.assetHomeTitle, .calender, .myAssetList {padding: 20px 10px 20px 10px;}
	.assetHomeTitle h3 {font-size: 1.5rem;}
	.calender {border: 1px solid #dddddd; min-height: 500px;}
	
	.table td {border-color: white;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table .assetType {padding-left: 20px;}
	.table .assetName a {color: black;}
	.table .assetTime {font-size: 1rem; padding-top: 9px;}
	.table .assetCancel {padding-left: 20px;}
	.table .assetCancel a {font-size: 0.8rem; padding: 4px; border: 1px solid #dddddd; color: black;}
	.table .assetCancel a:hover {background-color: #dddddd;}
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
		<div class="assetHomeTitle">
			<h3>나의 예약/대여 현황</h3>
		</div>
		<div id="calender" class="calender">
		
		</div>
		<div class="myAssetList">
			<table class="table">
				<colgroup>
					<col width="300px">
					<col width="300px">
					<col width="auto">
					<col width="150px">
				</colgroup>
				<thead>
				<tr>
					<td><span>예약/대여</span></td>
					<td><span>이름</span></td>
					<td><span>예약시간(대여 시작 시간)</span></td>
					<td><span>취소/반납</span></td>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td class="assetType"><span>차량</span></td>
						<td class="assetName"><a href="#">4441 아반테</a></td>
						<td class="assetTime"><span>2021-09-09 16:14 ~ 2021-09-10 14:00</span></td>
						<td class="assetCancel"><a href="#">반납</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>