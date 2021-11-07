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
</style>
<script type="text/javascript">
	$(document).ready(function(){
			var formObj = $("#frm");
			$("#btnNoticeCreate").on("click", function(){
					
				var sj = $("input[name='sj']");			
					
				// 공지 제목 체크
				if(fn_isEmpty(sj.val())){
					alert("공지제목을 입력하세요.");
					sj.focus();
					return false;
				}
				formObj.submit();
				
				
			}); // submit(btnNoticeCreate)
			
	});// ready(function)
		
	
	
</script>
<div id="body">
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h2><a href="/com/list">커뮤니티</a></h2></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/com/insert'"><span>커뮤니티 만들기</span></button>
			</div>
			<div class="menu-list">
				<a href="/com/list" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>전체 커뮤니티</strong></a>
				<ul class="menu-list-ul">
					<li>
						<a href="/com/list"><span>전체 커뮤니티</span></a>
					</li>
					<li>
						<a href="/com/comMyJoin"><span>가입 현황</span></a>
					</li>
				</ul>
			</div>
			<div class="menu-list">
				<i class="fas fa-angle-down mr-2"></i><strong>나의 커뮤니티</strong><a href="/com/comJoinMem">  <i class="fas fa-cog" style="color:gray;"></i></a>
				<ul class="menu-list-ul">
					<c:forEach var="item" items="${myList}">
						<li class="lineless">
							<a href="#">${item.sj}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="lefr-menu-list-content">
		<div class="noticeInTitle">
			<h2>커뮤니티</h2>
		</div>
		<form id="frm" method="post" action="/com/insert">
		<div class="noticeIn-step1">
			<table class="table">
				<colgroup>
					<col width="150px">
					<col width="auto">
				</colgroup>
				<tbody>
					<tr>
						<th class="th"><span>커뮤니티 명</span></th>
						<td><input type="text" class="form-control" id="sj" name="sj"></td>
					</tr>
					<tr>
						<th class="th"><span></span></th>
						<td><input type="hidden" class="form-control" id="estblEmpno" name="estblEmpno" value="${empVo.empno}"></td>
					</tr>
					<tr>
						<th><span>모집 여부</span></th>
						<td>
							<label><input type="radio" name="rcritAt" value='Y' checked> Y</label>
							<label><input type="radio" name="rcritAt" value='N'> N</label>
						</td>
					</tr>
					
					<tr>
						<th class="th"><span>커뮤니티 소개</span></th>
						<td>
							<textarea rows="10" id="cn" name="cn"></textarea>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class = 'bigPictureWrapper'>
			<div class='bigPicture'>
			
			</div>
		</div>
		
		<div class="divNoticeBtn">
			<button id="btnNoticeCreate" type="button" class="btn">만들기</button>
			<button id="btnNoticePrev" type="button" class="btn">이전</button>
		</div>
		</form>
	</div>
</div>