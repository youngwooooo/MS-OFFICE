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
  });
	  // 회원 삭제
	function fn_delete(sbscrberEmpno,cmmntyNo,obj){
	// 	alert(sbscrberEmpno);
		console.log(obj);
		var input = confirm("삭제하시겠습니까?");
		if(input){
			
			$.ajax({
				url : "/com/memDelete"
				, type : "post"
				, data : {"cmmntyNo" : cmmntyNo, "sbscrberEmpno" : sbscrberEmpno}
				, success : function(result){
					if(result == 1){
						$(obj).parents(".memList").remove();			
					}				
				}
			});
		}else{
			return;
		}
	}
    
 // 커뮤니티 수정아이콘 누르면
    function fn_comUpdateBtn(obj){
    	$(obj).parents(".lefr-menu-list-content").find(".comDetailTop").css("display", "none");
    	$(obj).parents(".lefr-menu-list-content").find(".comDetailEdit").css("display", "block");
    }

    // 커뮤니티 수정
    function fn_comUpdate(cmmntyNo){
    	var sj = $(".comDetailEdit input[name='sj']");
    	var cn = $(".comDetailEdit input[name='cn']");
    	var rcritAt = $(".comDetailEdit input[name='rcritAt']:checked");
    	
    	console.log(sj.val());
    	console.log(cn.val());
    	console.log(rcritAt.val());
    	$(".comDetailTop .a div").html("");
    	$.ajax({
    		url : "/com/comUpdate"
    		, type : "post"
    		, data : {"sj" : sj.val(), "cn" : cn.val(), "rcritAt" : rcritAt.val(), "cmmntyNo" : cmmntyNo}
    		, success : function(result){
    			console.log(result);
    			if(result != null){
    				console.log()
    				$.ajax({
    		               url : "/com/comSelect"
    		               	, type : "post"
    		               	, data : {"cmmntyNo": cmmntyNo}
    		               	, success : function(editedCommu){
    		                  	console.log(editedCommu);
    		                   	$(".comDetailTop .comTitleH2").text(editedCommu.sj);
    		                   	if(editedCommu.rcritAt=='Y'){
    		                   		var rcritAt = "<span class='status' style='display: inline;'>모집 중</span>";
    	                   	}else{
    		                   		var rcritAt = "<span class='statusEnd' style='display: inline;'>모집 완료</span>";
    		                   	}
    		                   	$(".comDetailTop .a div").append(rcritAt);
    		                   	$(".comDetailTop p").text(editedCommu.cn);
    		                   	$(".comDetailTop").css("display", "block");
    		               		$(".comDetailEdit").css("display", "none");
    		               }
    		            });
    			}
    		}
    	});
    }


</script>
<style>
	.comDetailEdit{
			display:none;
		}
	.status {border: 1px solid #ff616b; background-color: #ff616b; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.statusEnd {border: 1px solid #787878; background-color: #787878; color: white; font-size: 0.7rem; padding: 3px; font-weight: bold; border-radius: 3px;}
	.editIcon {opacity:50%;}
	.editIcon:hover {opacity:100%;}
	
	.comDetailTitle {padding: 20px 20px 10px 20px; text-align: center;}
	.comDetailLately  { padding: 0px 4rem; text-align: center;}
	.row {padding: 30px;}
	.row .divProfile, .divMem, .divActive, .divNotice {
			background-color: white; border: 1px solid #ddd; border-radius: 10px; padding: 20px 20px 20px 20px; margin-bottom: 20px;
	}
	.row .title {font-weight: bold; font-size: 0.9rem;}
	.row .divMemTitle, .activeTitle, .noticeTitle {font-weight: bold; font-size: 0.9rem; border-color: white; color: black; margin-bottom: 20px; }
	.row .table a {color: black;}
	.noticeTitle{margin-bottom: 20px;}
	.row .memTable {border:none; padding:5px; font-size: 0.9rem;}
	
	.row .divProfile img {width: 50%;  max-width: 80px; min-height: 70px; margin: 0px 0px 10px 0px; border-radius: 50%;}
	.row .divProfile p {margin-bottom: 0px;}
	.row .divProfile p > span {font-weight: bold; font-size: 0.9rem; padding-left: 5px; color: black;}
	.row .divProfile span {font-size: 0.8rem; color: #919191;}
	
	.row .InBtn {
    	float: right;
    	border-color: #55beff; background-color: #55beff; color: white;
   	    border-radius: 10px;
 	    margin-right: 10px;
	    width: 60px;
	    height: 30px;
	    
	}
	.row .InBtn:hover {background-color: #009dff; border-color: #009dff;}
	
	.row .upBtn {
    	border: .5px solid #55beff; font-size: 0.7rem; color: black; border-radius: 10px; width: 40px; height: 25px; background-color: white;
	}
	.row .upBtn:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.actUp {
    	border: .5px solid #55beff; font-size: 0.7rem;
    	background-color: #55beff; color: white;
    	border-radius: 10px; width: 40px; height: 25px;
	}
	.actUp:hover {background-color: #009dff; border-color: #009dff; font-weight: bold;}
	.actDel {
    	border: .5px solid #55beff; font-size: 0.7rem; color: black; border-radius: 10px; width: 40px; height: 25px; background-color: white;
	}
	.actDel:hover {background-color: #55beff; color: white; font-weight: bold;}
	.activeCk {
    	border: .5px solid #55beff; font-size: 0.7rem;
    	background-color: #55beff; color: white;
    	border-radius: 10px; width: 40px; height: 25px;
	}
	.activeCk:hover {background-color: #009dff; border-color: #009dff; font-weight: bold;}
	.activeCancel {
    	border: .5px solid #55beff; font-size: 0.7rem; color: black; border-radius: 10px; width: 40px; height: 25px; background-color: white;
	}
	.activeCancel:hover {background-color: #55beff; color: white; font-weight: bold;}
	
	.activeBtnUpDel{float:right;}
	.acticeUpPlay{float:right;}
	.divShortcuts .btn {
		background-color: white; 
		font-size: 0.9rem; 
		width: 46%; 
		height: 50px; 
		margin-left: 5px; 
		margin-bottom: 7px; 
		margin-top: 7px; 
		border: 1px solid white; 
		border-radius: 20px;
		border: 2px solid #55beff;
	   	font-size: 0.8rem;
	   	color: black;
	   	border-radius: 20px;
	}
	
	.row .divMem p {margin: 0px; padding-top: 10px;}
	.row .divMem .currentTime {font-size: 0.8rem; color: #888;}
	.row .divMem h2 {display: inline;}
	.row .divMem span {padding-right: 10px;}
	.row .divMem .divMemTime {padding-top: 5px;}
	.noticeList {min-height:530px;}
	
	.table {margin:0px;}
	.table td {border-color: white; vertical-align: inherit;}
	.table thead {font-size: 0.8rem; font-weight: bold;}
	.table thead td {padding-top: 5px; padding-bottom: 5px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd;}
	.table tbody {font-size: 0.9rem;}
	.table tbody tr:hover {background-color: #EEF1F6;}
	.table tbody a {color: black;}
	
	.Paging ul li{display: inline;}
</style>
<div id="body">
	<!-- 공지 왼쪽 네비 -->
	<div class="left-menu">
		<div class="left-menu-list">
			<div class="menu-name"><h2><a href="/com/list">커뮤니티</a></h2></div>
			<div class="menu-create">
				<button id="btnCreate" type="button" class="btn btn-default" onclick="javascript:location.href='/com/insert'"><span>커뮤니티 만들기</span></button>
			</div>
			<div class="menu-list">
				<a href="#" class="toggle-menu-list"><i class="fas fa-angle-down mr-2"></i><strong>전체 커뮤니티</strong></a>
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
				<i class="fas fa-angle-down mr-2"></i><strong>나의 커뮤니티</strong><a href="/com/comJoinMem" style="float: right;">  <i class="fas fa-cog" style="color:gray;"></i></a>
				<ul class="menu-list-ul">
					<c:forEach var="item" items="${myList}">
						<li class="lineless" onclick="javascript:location.href='/com/detail?cmmntyNo=${item.cmmntyNo}'">
							<a href="#"><span>${item.sj}</span></a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 공지 목록 본문 -->
	<div class="lefr-menu-list-content">
		<div class="comDetailTop">
		<div class="comDetailTitle">
			<div class="a" style="overflow: hidden">
				<h2 class="comTitleH2" onclick="javascript:location.href='/com/detail?cmmntyNo=${commuVo.cmmntyNo}'" style="display: inline;">${commuVo.sj}</h2>
					<div style="display: inline;">
						<c:if test="${commuVo.rcritAt=='Y'}"><span class="status" style="display: inline;">모집 중</span></c:if>
						<c:if test="${commuVo.rcritAt=='N'}"><span class="statusEnd" style="display: inline;">모집 완료</span></c:if>
					</div>
					<c:if test="${commuVo.estblEmpno==empVo.empno}">
						<h2 onclick="fn_comUpdateBtn(this)" style="display: inline; float: right;"><i class="fas fa-edit editIcon" style="color:gray;"></i></h2>
					</c:if>
			</div>
			<p style="margin-top: 10px; margin-right: 50px;">${commuVo.cn}</p>
		</div>
		</div>
	
		<div class="comDetailEdit">
			<div class="comDetailTitle">
				<div class="b" style="overflow: hidden">
					<h2 class="comTitle" style="display: inline;">
						<input type="text" name="sj" value="${commuVo.sj}" />
					</h2>
					<h2 onclick="fn_comUpdate(${commuVo.cmmntyNo})" style="display: inline; float: right;"><i class="fas fa-edit editIcon" style="color:gray;"></i></h2>
				</div>
				<p style="margin-top: 10px;">
					<input type="text" name="cn" value="${commuVo.cn}" />
				</p>
				<c:if test="${commuVo.rcritAt=='Y'}">
					<input type="radio" id="rcritAtY" name="rcritAt" value="Y" checked>
				  	<label for="rcritAtY">모집 중</label>
				  	<input type="radio" id="rcritAtN" name="rcritAt" value="N">
				  	<label for="rcritAtN">모집 완료</label>
				</c:if>
				<c:if test="${commuVo.rcritAt=='N'}">
					<input type="radio" id="rcritAtY" name="rcritAt" value="Y">
				  	<label for="rcritAtY">모집 중</label>
					<input type="radio" id="rcritAtN" name="rcritAt" value="N" checked>
				  	<label for="rcritAtN">모집 완료</label>
				</c:if>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-2">
				<div class="divProfile" style="width: 100%; text-align: center;">
					<img src="/reload?fileNo=${commuVo.fileNo}">
					<p><span>${commuVo.nm}</span></p>
					<span>${commuVo.deptNm}</span>
					<div class="divShortcuts">
						<button onclick="javascript:location.href='/messenger'" type="button" class="btn" style="width: 95%;"><i class="fas fa-sms fa-lg mr-2" style="color: darkorange"></i>메신저</button>
					</div>
				</div>
				<div class="divMem" style="padding-right:4px;">
				<div class="divMemTitle">가입한 맴버</div>
				<table class="memTable">
					<colgroup>
						<col width="80px">
						<col width="auto">
						<col width="10px">
					</colgroup>
					<c:forEach var="memList" items="${memList}">
		               <tr class="memList">
		                  <td><span>${memList.nm}</span>
		                  </td>
		                  <td>${memList.dept}
		                  </td>
		                  <td>
		                  <c:if test="${commuVo.estblEmpno== empVo.empno}">
		                  	<span style="padding-left:3px;" onclick="fn_delete(${memList.sbscrberEmpno},${memList.cmmntyNo},this)"><i class="fas fa-times"></i></span>
		                  </c:if>
		                  </td>
		               </tr>
	               </c:forEach>
				</table>
			</div>
			</div>
			<div class="col-sm-10">
			<div class="divNotice">
				<div class="noticeTitle">공지 사항
					<c:if test="${commuVo.estblEmpno == empVo.empno}">
					<button id="insertGo" type="button" class="InBtn" onclick="location.href='/com/noticeinsert?cmmntyNo=${commuVo.cmmntyNo}'">작성</button>
					</c:if>
				</div>
				<div class="noticeList">
					<table class="table">
						<colgroup>
							<col width="100px">
							<col width="auto">
							<col width="100px">
							<col width="100px">
							<col width="100px">
							<col width="100px">
							<col width="50px">
						</colgroup>
						<thead>
							<tr>
								<td style="text-align: center;">번호</td>
								<td style="text-align: center;">공지 제목</td>
								<td style="text-align: center;">파일</td>
								<td style="text-align: center;">작성자</td>
								<td style="text-align: center;">작성일자</td>
								<td style="text-align: center;">조회 수</td>
								<td></td>
							</tr>
						</thead>
						<tbody>
						<!-- 리스트 만큼 반복 -->
							<c:forEach var="list" items="${comNoticeVO}">
								<tr style="cursor: pointer;">
									<td style="text-align: center;">${list.rnum}</td>
									<td onclick="location.href='/com/noticeSelect?cmmntyNo=${list.cmmntyNo}&bbscttNo=${list.bbscttNo}'">${list.sj}</td>
									<td style="text-align: center;">
									<c:if test="${list.fileNo != -1}"><i class="fas fa-paperclip"></i></c:if>
									</td>
									<td style="text-align: center;">${list.nm}</td>
									<td style="text-align: center;">
									<fmt:parseDate var="parsedDate" value="${list.writngTm}" pattern="yyyy-MM-dd HH:mm:ss.0"/>
									<fmt:formatDate var="formatRegDate" value="${parsedDate}" pattern="yyyy-MM-dd"/>
									${formatRegDate} </td>
									<td style="text-align: center;">${list.rdcnt}</td>
									<td class="updateBtn" style="padding:12px 0px;">
										<c:if test="${list.wrterEmpno == empVo.empno}">
											<button class="upBtn" type="button" onclick="location.href='/com/noticeupdate?cmmntyNo=${list.cmmntyNo}&bbscttNo=${list.bbscttNo}'">수정</button>
										</c:if>
									</td>
								</tr>
							</c:forEach>	
						</tbody>
					</table>
				</div>
				<div class="Paging">
					<ul>
						<c:if test="${param.currentPage  > 5}">
						<li>
							<a href="/com/noticeListAdd?cmmntyNo=${commuVo.cmmntyNo}&currentPage=1&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-backward"></i></a>
						</li>
						<li><a href="/com/noticeListAdd?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${paging.startPage - 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-left"></i></a></li>
						</c:if>
						
						<c:forEach var="pNo" begin="${paging.startPage}" end="${paging.endPage}" varStatus="stat">
						<li class="<c:if test="${pNo == param.currentPage}">active</c:if>">
							<a href="/com/noticeListAdd?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${pNo}&selSearch=${param.selSearch}&keyword=${param.keyword}">${pNo}</a>
						</li>
						</c:forEach>
						
						<c:if test="${param.currentPage  <= paging.totalPages - paging.totalPages%5}">
						<li><a href="/com/noticeListAdd?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${paging.startPage + 5}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-chevron-right"></i></a></li>
						<li><a href="/com/noticeListAdd?cmmntyNo=${commuVo.cmmntyNo}&currentPage=${paging.totalPages}&selSearch=${param.selSearch}&keyword=${param.keyword}"><i class="fas fa-step-forward"></i></a></li>
						</c:if>
						
					</ul>
				</div>
				<div class="listSearch">
					<form method="get" action="/com/noticeListAdd" name="frmSearch" id="frmSearch">
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
							<input type="hidden" name="cmmntyNo" class="form-control"  value="${param.cmmntyNo}">
			        		<input type="text" name="keyword" class="form-control" placeholder="검색"  value="${param.keyword}">
			        		<div class="input-group-append">
					            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
			        		</div>
			       		</div>
		       		</form>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>