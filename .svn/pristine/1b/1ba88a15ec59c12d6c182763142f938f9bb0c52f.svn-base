<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<script type="text/javascript">
$(function () {
    //Enable check and uncheck all functionality
    $('.checkbox-toggle').click(function () {
      var clicks = $(this).data('clicks')
      if (clicks) {
        //Uncheck all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', false)
        $('.checkbox-toggle .far.fa-check-square').removeClass('fa-check-square').addClass('fa-square')
      } else {
        //Check all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', true)
        $('.checkbox-toggle .far.fa-square').removeClass('fa-square').addClass('fa-check-square')
      }
      $(this).data('clicks', !clicks)
    })

    //Handle starring for font awesome
    $('.mailbox-star').click(function (e) {
      e.preventDefault()
      //detect type
      var $this = $(this).find('a > i')
      var fa    = $this.hasClass('fa')

      //Switch states
      if (fa) {
        $this.toggleClass('fa-star')
        $this.toggleClass('fa-star-o')
      }
    })
  })
</script>
<style>
	.noticeTitle {padding: 20px 20px 20px 10px;}
	.noticeList { padding-bottom: 20px;}
	
	.table td {border-color: white; vertical-align: inherit;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody a {color: black;}
	
	.Paging ul li{display: inline;}
	
	.menu-list-ul a {font-size: 0.9rem;}
</style>
<div id="body">
	<!-- 공지 왼쪽 네비 -->
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h4><a href="/notice/list">공지사항</a></h4></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/notice/insert'"><span>공지 작성</span></button>
			</div>
			<div class="menu-list">
				<ul class="menu-list-ul">
					<li>
						<a href="/notice/list">
							전체공지
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 공지 목록 본문 -->
	<div class="lefr-menu-list-content">
		<div class="noticeTitle">
			<h4>공지사항</h4>
		</div>
<!-- 		<div class="mailbox-controls"> -->
<!-- 			<button type="button" class="btn btn-default btn-sm checkbox-toggle"> -->
<!-- 				<i class="far fa-square"></i> -->
<!--             </button>체크박스 -->
<!--             <button type="button" class="btn btn-default btn-sm"> -->
<!--             	상세보기 -->
<!--             </button> -->
<!--             <button type="button" class="btn btn-default btn-sm"> -->
<!-- 				수정 -->
<!--             </button> -->
<!--             <button type="button" class="btn btn-default btn-sm"> -->
<!-- 				삭제 -->
<!--             </button> -->
            
<!--             <button type="button" class="btn btn-default btn-sm"> -->
<!--               <i class="fas fa-sync-alt"></i> -->
<!--             </button> -->
<!-- 		</div> -->
	</div>
	<div class="lefr-menu-list-content">
		<div class="noticeList">
			<table class="table">
				<colgroup>
					<col width="100px">
					<col width="auto">
					<col width="100px">
					<col width="250px">
					<col width="250px">
				</colgroup>
				<thead>
					<tr>
						<td style="text-align: center;">번호</td>
						<td style="text-align: center;">공지 제목</td>
						<td style="text-align: center;">파일</td>
						<td style="text-align: center;">작성자</td>
						<td style="text-align: center;">작성일자</td>
					</tr>
				</thead>
				<tbody>
				<!-- 리스트 만큼 반복 -->
					<c:forEach var="list" items="${list}">
						<tr style="cursor: pointer;" onclick="javascript:location.href='/notice/detail?noticeNo=${list.noticeNo}'">
							<td style="text-align: center;">${list.rnum}</td>
							<td>${list.sj}</td>
							<td style="text-align: center;">
							<c:if test="${list.fileNo != -1}"><i class="fas fa-paperclip"></i></c:if>
							</td>
							<td style="text-align: center;">${list.nm}</td>
							<td style="text-align: center;">
							<fmt:formatDate pattern="yyyy-MM-dd" value='${list.writngTm}' /></td>
						</tr>
					</c:forEach>	
				</tbody>
			</table>
		</div>
		<div class="Paging">
			<ul>
				<c:if test="${param.currentPage  > 5}">
				<li>
					<a href="/notice/list?currentPage=1&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-backward"></i></a>
				</li>
				<li><a href="/notice/list?currentPage=${paging.startPage - 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-left"></i></a></li>
				</c:if>
				
				<c:forEach var="pNo" begin="${paging.startPage}" end="${paging.endPage}" varStatus="stat">
				<li class="<c:if test="${pNo == param.currentPage}">active</c:if>">
					<a href="/notice/list?currentPage=${pNo}&selSearch=${param.selSearch}&keyword=${param.keyword}">${pNo}</a>
				</li>
				</c:forEach>
				
				<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
				<li><a href="/notice/list?currentPage=${paging.startPage + 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-right"></i></a></li>
				<li><a href="/notice/list?currentPage=${paging.totalPages}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-forward"></i></a></li>
				</c:if>
				
			</ul>
		</div>
		
		
		<div class="listSearch">
			<form method="get" action="/notice/list" name="frmSearch" id="frmSearch">
   			<input type="hidden" name="currentPage" value="1" />
				<div class="input-group searchSelect">
					<select name="selSearch" class="form-control">
						<option value="">전체</option>
						<option value="nm" 
			      			<c:if test="${param.selSearch=='nm'}">selected</c:if>
			      		>작성자</option>
			      		<option value="sj"
			      			<c:if test="${param.selSearch=='sj'}">selected</c:if>
			      		>제목</option>
			      		<option value="cn"
			      			<c:if test="${param.selSearch=='cn'}">selected</c:if>
			      		>내용
			      		</option>
					</select>
				</div>
				<div class="input-group searchKeyword">
	        		<input type="text" name="keyword" class="form-control" placeholder="검색"  value="${param.keyword}">
	        		<div class="input-group-append">
			            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
	        		</div>
	       		</div>
       		</form>
		</div>
	</div>
</div>