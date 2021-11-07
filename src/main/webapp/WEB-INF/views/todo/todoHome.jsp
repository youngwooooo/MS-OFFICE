d<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 공통 css -->
<link href="/resources/css/common/common.css" rel="stylesheet">
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	/* ToDO+ CSS */
	.lefr-menu-list-content {margin: 0px;}
	.menu-name a {color: black;}
	.menu-create #btnCreate {width: 250px;}
	
	.col-sm-3 {margin-top: 20px;}
	#myLikeBoardList, #myBoardList {padding: 20px;}
	#myLikeBoardList .col-sm-12 {padding-bottom : 20px;}
	#myLikeBoardList span, #myBoardList span {color: #888;}
	.myBoard {width: 100%; height: 100%; min-height: 140px; border: 1px solid #ddd; border-radius: 20px; text-align: center; padding: 15px;}
	.myBoard .boardNm {overflow: hidden;}
	.myBoard .boardNm span {float: left;}
	.myBoard .boardNm a {color: black;}
	.myBoard .boardNm a:hover {cursor: pointer;}
	.myBoard .boardNm .bkmkYN {float: right;}
	.myBoard .sharedEmpInfo {clear: both; overflow: hidden; padding-top: 40px;}
	.myBoard .sharedEmpInfo img {width: 30px; height: 30px; border-radius: 50%; margin-top: 10px; margin-right: 5px; float: left;}
	
	
	#createBoard {left: -430px; font-size: 0.9rem; top: 165px;}
	#createBoard .modal-content {width: 530px;}
	#createBoard table td {padding-bottom: 10px;}
	#createBoard input {height: 30px; font-size: 0.9rem;}
	#createBoard .row {text-align: center;}
	#createBoard #memberList span {width:100px; margin-right: 1px; margin-bottom: 5px; border: 1px dashed #dddddd; float: left; font-size: 0.8rem; border-radius: 10px; height: 25px; padding-top: 2px;}
	#createBoard #memberList .deleteMember {float: left; color: #888;}
	#createBoard .sharedEmpAdd:hover {cursor: pointer;}
	#createBoard button {font-size: 0.9rem;}
	
	.myBoard:hover {cursor: pointer; box-shadow: 0px 5px 10px #dddddd;}
	
</style>
<script type="text/javascript">
	
	$(function(){
		// 모달 닫을 때 
		$('#createBoard').on('hidden.bs.modal', function (e) {
		    console.log('modal close');
		  $(this).find('form')[0].reset()	// form 비우기
 		  $(this).find('#memberList').empty();	// 보드 공유자 비우기
		});
		
		// 별표 클릭 시
		$(".bkmkYN").click(function(){
			var star = $(this).find("i");
			var bkmkStatus = $(this).find("input[name='bkmk']");
			console.log(bkmkStatus);
			var idx = $(this).find("input[name='boardNo']").val();
			var formId = "#" + $(this).closest("form").attr("id");
			
			// 즐겨찾기 여부 Y로 업데이트
			if(bkmkStatus.val() == "N"){
				$.ajax({
					url : "/todo/updateBkmk"
					, type : "post"
					, data : $(""+formId+"").serialize()
					, success : function(data){
						console.log(data);
						bkmkStatus.val(data[1]);
						if(data[0] == idx || data[1] == "Y"){
							star.css("color", "gold");
							$("#board"+ data[0] +"").clone().appendTo($("#myLikeBoardList"));
						}
					}
				});
			
			// 즐겨찾기 여부 N으로 업데이트
			}else if(bkmkStatus.val() == "Y"){
				$.ajax({
					url : "/todo/updateBkmk"
					, type : "post"
					, data : $(""+formId+"").serialize()
					, success : function(data){
						console.log(data);
						bkmkStatus.val(data[1]);
						if(data[0] == idx || data[1] == "N"){
							star.css("color", "#ddd");
							$("#myLikeBoardList").find($("#board"+ data[0] +"")).remove();
							
						}
					}
				});
			}
			
		});
		
		
	}); // end jquery
	
	// 보드 공유자 삭제
	function fn_deleteMember(obj){
		$(obj).parent().remove();
	}
	
	// 보드 만들기
	function fn_createBoard(){
		var boardNm = $("#createBoard input[name='boardNm']");
		
		if( fn_isEmpty(boardNm.val()) ){
			alert("보드 이름을 입력하세요.");
			boardNm.focus();
			return false;
		}
		
		$("#createBoardFrm").attr("method", "post");
		$("#createBoardFrm").attr("action", "/todo/createBoard");
		$("#createBoardFrm").submit();
		
	}
	
</script>
<div id="body">
	<div class="lefr-menu-list-content">
		<div class="menu-name"><h3><a href="/todo/home">ToDO+</a></h3></div>
		<div class="menu-create">
			<button id="btnCreate" type="button" class="btn btn-default" data-toggle="modal" data-target="#createBoard"><span>보드 만들기</span></button>
		</div>
		
		<div id="myLikeBoardList" class="row">
			<div class="col-sm-12">
				<i class="fas fa-star mr-2" style="color: gold;"></i><span>즐겨찾는 보드</span>
			</div>
			<!-- 즐겨찾기 보드 목록 출력 시작 -->
				<c:if test="${boardAllList.size() > 0}">
				<c:forEach var="board" items="${boardAllList}">
					<c:if test="${board.bkmk == 'Y'}">
					<div id="board${board.boardNo}" class="col-sm-3">
						<div class="myBoard">
							<div class="boardNm">
								<span><a href="todo/board/${board.boardNo}">${board.boardNm}</a></span>
								<form id="bkmkFrm${board.boardNo}">
									<a class="bkmkYN">
										<c:if test="${board.bkmk eq 'N'}">
										<i class="fas fa-star" style="color: #ddd"></i>
										</c:if>
										<c:if test="${board.bkmk eq 'Y'}">
										<i class="fas fa-star" style="color: gold"></i>
										</c:if>
										<input type="hidden" name="bkmk" value="${board.bkmk}">
										<input type="hidden" name="boardNo" value="${board.boardNo}">
									</a>
								</form>
							</div>
							<div class="sharedEmpInfo" onclick="javascript:location.href='/todo/board/${board.boardNo}'">
							<c:forEach var="boardCocnr" items="${boardCocnrAllList}">
							<c:if test="${board.boardNo == boardCocnr.boardNo}">
								<img src="/reload?fileNo=${boardCocnr.fileNo}">
							</c:if>
							</c:forEach>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
				</c:if>
			<!-- 즐겨찾기 보드 목록 끝 -->
		</div>
		
		<div id="myBoardList" class="row" style="padding: 20px;">
			<div class="col-sm-12">
				<i class="fas fa-star mr-2" style="color: #ddd;"></i><span>내 보드</span>
			</div>
			<!-- 내 보드 목록 출력 시작 -->
			<c:if test="${boardAllList.size() > 0}">
			<c:forEach var="board" items="${boardAllList}">
				<div id="board${board.boardNo}" class="col-sm-3">
					<div class="myBoard">
						<div class="boardNm">
							<span><a href="/todo/board/${board.boardNo}">${board.boardNm}</a></span>
							<form id="bkmkFrm${board.boardNo}">
								<a class="bkmkYN">
									<c:if test="${board.bkmk eq 'N'}">
									<i class="fas fa-star" style="color: #ddd"></i>
									</c:if>
									<c:if test="${board.bkmk eq 'Y'}">
									<i class="fas fa-star" style="color: gold"></i>
									</c:if>
									<input type="hidden" name="bkmk" value="${board.bkmk}">
									<input type="hidden" name="boardNo" value="${board.boardNo}">
								</a>
							</form>
						</div>
						<div class="sharedEmpInfo" onclick="javascript:location.href='/todo/board/${board.boardNo}'">
						<c:forEach var="boardCocnr" items="${boardCocnrAllList}">
						<c:if test="${board.boardNo == boardCocnr.boardNo}">
							<img src="/reload?fileNo=${boardCocnr.fileNo}">
						</c:if>
						</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
			</c:if>
			<!-- 내 보드 목록 끝 -->
		</div>
	</div>
	<div class="modal" id="createBoard" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h6 class="modal-title">보드 만들기</h6>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
	
				<!-- Modal body -->
				<div class="modal-body">
					<form id="createBoardFrm">
						<table>
							<colgroup>
								<col width="100px">
								<col width="400px">
							</colgroup>
							<tr>
								<td>보드 이름</td>
								<td>
									<input type="text" class="form-control" id="boardNm" name="boardNm">
									<input type="hidden" name="esterEmpno" value="${sessionScope.empVo.empno}">
								</td>
							</tr>
							<tr>
								<td>공유자
									<a class="sharedEmpAdd"><i class="fas fa-plus-circle ml-2"></i></a>
								</td>
								<td>
									<div class="row" id="memberList">
										<div class="col-sm-4" style="display: none;">
											<input type="hidden" class="empno" name="cocnrEmpnoArr" value="${sessionScope.empVo.empno}">
										</div>
									</div>
								</td>
							</tr>
						</table>
					</form>
				</div>
	
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnCreateBoard" type="button" class="btn btn-primary" onclick="fn_createBoard()">등록</button>
					<button id="btnCancel" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
</div>