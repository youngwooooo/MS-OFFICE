<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.noticeTitle {padding: 20px 20px 20px 10px;}
	.noticeList { padding-bottom: 20px;}
	
	.table td {border-color: white;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody a {color: black;}
	
</style>
<div id="body">
	<!-- 공지 왼쪽 네비 -->
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h2><a href="/notice/list">전체 자료실</a></h2></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/notice/insert'"><span>공지 작성</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>자료실</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="#">
							<i class="far fa-folder-open"></i> 전체 자료실
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fas fa-share-alt"></i>&nbsp&nbsp공유 자료실
						</a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<ul class="menu-list-ul">
					<li class="pad0">
						<a href="#">
							<i class="fas fa-lock"></i> 개인 자료실
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 공지 목록 본문 -->
	<div class="lefr-menu-list-content">
		<div class="noticeTitle">
			<h2>전체 자료실</h2>
		</div>
		<div class="noticeList">
			<table class="table">
				<colgroup>
					<col width="100px">
					<col width="100px">
					<col width="auto">
					<col width="250px">
					<col width="250px">
				</colgroup>
				<thead>
					<tr>
						<td>번호</td>
						<td>파일</td>
						<td>공지 제목</td>
						<td>작성자</td>
						<td>작성일자</td>
					</tr>
				</thead>
				<tbody>
				<!-- 리스트 만큼 반복 -->
					<tr>
						<td>번호</td>
						<td>파일</td>
						<td>공지 제목</td>
						<td>작성자</td>
						<td>작성일자</td>
					</tr>	
				</tbody>
			</table>
		</div>
		<div class="Paging">
			<ul>
				<li><a href=""><i class="fas fa-step-backward"></i></a></li>
				<li><a href=""><i class="fas fa-chevron-left"></i></a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href=""><i class="fas fa-chevron-right"></i></a></li>
				<li><a href=""><i class="fas fa-step-forward"></i></a></li>
			</ul>
		</div>
		<div class="listSearch">
			<div class="input-group searchSelect">
				<select name="" class="form-control">
					<option>공지 제목</option>
					<option>작성자</option>
				</select>
			</div>
			<div class="input-group searchKeyword">
        		<input type="search" class="form-control" placeholder="검색">
        		<div class="input-group-append">
		            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
        		</div>
       		</div>
		</div>
	</div>
</div>