<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	.card {
		margin: 30px;
		border: 1px solid #dee2e6;
	}
	.EA-document {
		height: auto;
		/* line-height: 100px;
		text-align: center; */
		border-bottom: 1px solid #dee2e6;
	}
	.type_normal {
		display: table;
	    border-collapse: collapse;
	    box-sizing: border-box;
	    text-indent: initial;
	    border-spacing: 2px;
	    border-color: grey;
	    width: 100%;
    	table-layout: auto;
    	font-size: 0.9rem;
	}
	.type_normal thead {
		border-bottom: 1px solid #dee2e6;
		text-align: left;
	}
	.lefr-menu-list-content {
		padding: 0px;
	}
	.type_normal td {
		padding: 12px
	}
	.type_normal th {
		padding: 5px 12px 5px 12px;
	}
	.type_normal .division {text-align: center;}
	.type_normal .subject a:hover {cursor: pointer;}
	.type_normal tbody tr:hover {background-color: #EEF1F6;}
	
	.menu2 {
		padding: 20px 20px 20px 20px;
	    font-weight: bold;
	    font-size: 18px !important;
	    letter-spacing: -1px;
	    border-bottom: 1px solid #dee2e6;
	}
	.EA-Proceeding, .EA-complete{
	    border-bottom: 1px solid #dee2e6;
	}
	.modal-header {
		padding: 20px;
	}
	.modal-content {
		width: 700px;
	}
	.modal-dialog {
		margin-top: 200px;
		width: 700px;
	}
	.drft-list {
		padding-left: 40px;
	}
	.drft-div {
		border: solid black 1px;
		padding: 10px;
		margin-top: 40px;
		margin-bottom: 40px;
	}
		.green-span {
		border: 1px solid #a6c76c;
	    background-color: #a6c76c;
	    color: white;
	    font-weight: bold;
	    border-radius: 3px;
	    font-size: 12px;
	    padding: 4px 15px 4px 15px;
	    display: inline-block;
	    width: 80px;
	}
	.blue-span {
		border: 1px solid #55beff;
	    background-color: #55beff;
	    color: white;
	    font-weight: bold;
	    border-radius: 3px;
	    font-size: 12px;
	    padding: 4px 15px 4px 15px;
	    display: inline-block;
	    width: 80px;
	}
	.grey-span {
		border: 1px solid #888;
	    background-color: #888;
	    color: white;
	    font-weight: bold;
	    border-radius: 3px;
	    font-size: 12px;
	    padding: 4px 15px 4px 15px;
	    display: inline-block;
	    width: 80px;
	}
	th {
		text-align: center !important;
	}
	.state_wrap, .writer, .attach, .date {
		text-align: center !important;
	}
	
	.menu-name h3 {font-size: 1.5rem;}
</style>
<script>
	function fn_move2(){
		location.href = window.location.origin + "/EA/insert";
		/* console.log(window.location.origin + "/EA/insert"); */
	}
</script>
<div id="aside">
		<div class="left-menu-list">
			<div class="menu-name">
				<h3>
					<a href="/EA/home">전자결재</a>
				</h3>
			</div>
			<div class="menu-create">
				<!-- <button id="btnCreate" type="button" class="btn btn-default" data-toggle="modal" data-target=".bd-example-modal-sm"><span>새 결재 진행</span></button> -->
				<button onclick="fn_move2()" id="btnCreate" type="button" class="btn btn-default"><span>새 결재 진행</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>자주 쓰는 양식</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/EA/insertVacation"><span>휴가신청서</span></a>
					</li>
					<li>
						<a href="/EA/insert"><span>업무기안</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>결재하기</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/EA/documentWait?drftProgrsNm=&currentPage=1&selSearch=&keyword="><span>결재 대기 문서</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>개인 문서함</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/EA/document?drftProgrsNm=&currentPage=1&selSearch=&keyword="><span>결재 문서함</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>부서 문서함</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/EA/documentDept?drftProgrsNm=&currentPage=1&selSearch=&keyword="><span>부서 수신함</span></a>
					</li>
				</ul>
			</div>
			<!-- <div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>전자결재 문서관리</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="#"><span>양식별 문서 조회</span></a>
					</li>
					<li>
						<a href="#"><span>전사 공문 발송함</span></a>
					</li>
					<li>
						<a href="#"><span>관리자 작업기록</span></a>
					</li>
				</ul>
			</div> -->
		</div>
	</div>
