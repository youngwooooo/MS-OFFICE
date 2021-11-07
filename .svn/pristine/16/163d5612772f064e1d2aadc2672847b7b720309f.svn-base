<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 공통 js -->
<script src="/resources/js/common/common.js"></script>
<style>
	/* todoDetail css */
	h3 {font-size: 1.5rem;}
	.lefr-menu-list-content {padding-left: 30px;}
	
	.boardTitle .bkmkYN {margin-left: 15px; padding-top: 2px; cursor: pointer;}
	.boardTitle .btnBoardOption {border: 1px solid #888; color: #888; height: 28px; padding: 2px 10px 0px 10px; margin-right: 15px;}
	.boardTitle .dropdown-item {font-size: 0.8rem; cursor: pointer;}
 	.boardTitle .dropdown-menu.show {min-width: 100px;}
 	.boardTitle h3:hover {background-color: #dddddd; cursor: pointer;}
 	.boardTitle .eidtBoardNm {font-size: 0.8rem; display: none;}
 	.boardTitle .eidtBoardNm input {height: 30px;}
 	.boardTitle .eidtBoardNm button {padding: 3px 10px 3px 10px; margin-top: 5px;}
	.row {padding-left: 10px;}
	.row .cardMenuNo {display: none;}
	.data {margin-top: 50px;}
	
	
	
	#createCardMenu {border: 1px solid #f1f1f1; min-height: 60px; height:100%; color: #888; background-color: #f1f1f1; text-align: center; cursor: pointer; margin-right: 10px; margin-bottom: 10px;}
	.createCardMenuList {padding: 10px; display: none;}
	.createCardList {padding: 0px; display: none;}
	#createCardMenu input, .cardMenu input {width: 100%; border: 1px solid #dddddd; height: 30px; font-size: 0.9rem; padding: 0px 10px 0px 10px;}
	.btnCard, .btnCreateInfoContent {margin-top: 5px; overflow: hidden; margin-left: 2px;}
	#createCardMenu button, .cardMenu button {float: left; margin-right: 5px; font-size: 0.8rem; padding: 3px 10px 3px 10px;}
	#btnCreateCardMenu, #btnCreateCard {border: 1px solid #55beff; background-color: #55beff; color: white;}
	#btnCancelCardMenu, #btnCancelCard {border: 1px solid white; background-color: white; color: black;}
	
	.cardMenu {border: 1px solid #f1f1f1; min-height: 60px; height:100%; background-color: #f1f1f1; margin-right: 10px; margin-bottom: 10px;}
	.cardMenu a:hover {cursor: pointer;}
	
	.createCard {border: 1px dashed #888; color: #888; text-align: center; padding-top: 5px; padding-bottom: 5px;}
	.createCard:hover {background-color: #e5e5e5; cursor: pointer;}
	
	.cardMenu {padding: 10px;}
	.cardMenuTitle {overflow: hidden; margin-top: 10px; margin-bottom: 20px;}
	.cardMenuTitle span:nth-of-type(1) {float: left; font-weight: bold;}
	.cardMenuTitle span:nth-of-type(2) {color: #888; float: right; cursor: pointer;}
	.cards {background-color: white; border: 1px solid white; padding: 5px; margin-bottom: 10px; display: flex;}
	.cards:hover {background-color: #e5e5e5; border-color: #e5e5e5; cursor: pointer;}
	.cards .cardTitle {width: 95%;} 
	.cards .cardTitle span:nth-of-type(1) {font-size: 0.9rem;}
	
	.cardMenuTitle .editCardMenuNm, .cards .editCardNm {width: 100%; display: none;}
 	.cardMenuTitle .btnEditCardMenu, .cards .btnEditCard {margin-top: 5px;}
 	.cardMenuTitle .btnEditCardMenuNm, .cards .btnEditCardNm, .boardTitle .btnEditBoardNm {border: 1px solid #55beff; background-color: #55beff; color: white;}
 	.cardMenuTitle .btnCancelCardMenuNm, .cards .btnCancelCardNm, .boardTitle .btnCancelBoardNm {border: 1px solid #dddddd; background-color: white; color: black;}
 	.cardMenu .cardOption {color: #888; float: right;}
 	.cardMenu .dropdown-item {font-size: 0.8rem;}
 	.cardMenu .dropdown-menu.show {min-width: 100px;}
 	
	
	/* 카드 상세 모달창 */
	.detailCard {top: 10px; left: 0px;}
	.detailCard .close {padding-top: 20px;}
	.modal-title, .cardFileTitle, .sharedMemberTitle, .cardDateTitle {font-weight: bold;}
	.detailCard .cardInfo .InfoContent {margin-top: 10px; word-break:break-all; overflow: hidden; display: none;}
	.detailCard .cardInfo .InfoContent p {margin-bottom: 0px; font-size: 0.9rem;}
 	.detailCard .cardInfo .InfoContent p:hover {cursor: pointer; background-color: #dddddd;}
 	.detailCard .cardInfo .cardInfoContent {padding-bottom: 20px;}
	.detailCard .cardInfo .cardInfoContent {display: none;}
	.detailCard .cardInfo .cardInfoContent textarea {font-size: 0.9rem;}
	.detailCard .cardInfo .cardInfoContent .btnCard, .btnCreateInfoContent {float: right; font-size: 0.8rem; display: none;}
	.detailCard .cardInfo .cardInfoContent .btnCreateInfoContent {float: right; font-size: 0.8rem;}
	.detailCard .cardInfo .cardInfoContent .btnCard button, .btnCreateInfoContent button {padding: 3px 10px 3px 10px;}
	.detailCard .cardInfo .cardInfoContent .btnCreateInfoContent .btnCreateCardInfo {border: 1px solid #55beff; background-color: #55beff; color: white;}
	.detailCard .cardInfo .cardInfoContent .btnCreateInfoContent .btnCreateCardInfo:hover {background-color: #009dff; border-color: #009dff;}
	.detailCard .cardInfo .cardInfoContent .btnCreateInfoContent .btnCancelCardInfo {border: 1px solid #dddddd; background-color: white;}
	.detailCard .cardInfo .cardInfoContent .btnCreateInfoContent .btnCancelCardInfo:hover {background-color: #dddddd;}
	.detailCard .cardInfo .cardInfoContent .btnCard .btnEditCardInfoContent {border: 1px solid #55beff; background-color: #55beff; color: white;}
	.detailCard .cardInfo .cardInfoContent .btnCard .btnEditCardInfoContent:hover {background-color: #009dff; border-color: #009dff;}
	.detailCard .cardInfo .cardInfoContent .btnCard .btnDeleteCardInfoContent {border: 1px solid #dc3545; background-color: #dc3545; color: white;}
	.detailCard .cardInfo .cardInfoContent .btnCard .btnDeleteCardInfoContent:hover {border-color: #ce0014; background-color: #ce0014;}
	.detailCard .cardInfo .cardInfoContent .btnCard .btnCancelCardInfoContent {border: 1px solid #dddddd; background-color: white;}
	.detailCard .cardInfo .cardInfoContent .btnCard .btnCancelCardInfoContent:hover {background-color: #dddddd;}
	.detailCard .cardInfo span, .cardAttchFile span, .sharedMemberAdd span, .cardDateAdd span {border: 1px solid #55beff; padding: 5px; background-color: #55beff; color: white; font-size: 0.8rem; font-weight: normal;}
	.detailCard .cardInfo span:hover, .cardAttchFile span:hover, .sharedMemberAdd span:hover, .cardDateAdd span:hover {background-color: #009dff; border-color: #009dff; cursor: pointer;}
	
	.detailCard .cardFile, .cardComment, .cardDate {border-top: 1px dashed #dddddd; margin-top: 20px;}
	.detailCard .cardFile .cardFileTitle, .cardDateTitle {padding-top: 20px; padding-bottom: 20px;}
	.detailCard .cardFile input.file-upload-button {border: 1px solid #55beff; background-color: #55beff; color: white;}
	.detailCard .cardFile .cardAttachedFile .deleteAttachedFile:hover {cursor: pointer;}
	.detailCard .cardAttachedFile {border: 2px dashed #dddddd; margin-top: 5px; padding: 10px;}
	.detailCard .cardAttachedFile p {margin-bottom: 0px; font-size: 0.9rem; padding: 3px;}
	.detailCard .cardAttachedFile .downloadFile {float: right;}
	.detailCard .cardAttachedFile .downloadFile:hover {float: right; cursor: pointer;}
	.detailCard .previewImg {padding: 10px;}
	.detailCard .previewImg img {width: 100%;}
	
	.detailCard .cardDate {overflow: hidden;}
	.detailCard .cardDate input {font-size: 0.9rem;}
	.detailCard .cardDate .updateCardDate {display: none;}
	.detailCard .cardDate .updateCardDate button {padding: 3px 10px 3px 10px;}
	.detailCard .cardDate .updateCardDate {padding-top: 10px; float: right; font-size: 0.8rem;}
	.detailCard .cardDate .updateCardDate .btnUpdateCardDate {border: 1px solid #55beff; background-color: #55beff; color: white;}
	.detailCard .cardDate .updateCardDate .btnUpdateCardDate:hover {background-color: #009dff; border-color: #009dff;}
	.detailCard .cardDate .updateCardDate .btnCancelCardDate {border: 1px solid #dddddd; background-color: white;}
	.detailCard .cardDate .updateCardDate .btnCancelCardDate:hover {background-color: #dddddd;}
	
	.detailCard .commentTitle {padding-top: 20px; padding-bottom: 7px; font-size: 0.8rem; font-weight: bold; border-bottom: 1px solid #dddddd;}
	.detailCard .commentAdd .myComment {display: flex; margin-top: 10px;}
	.detailCard .cardComment img {width: 30px; height: 30px; border-radius: 50%;}
	.detailCard .commentAdd .myComment input {width: 100%; height: 30px; margin-left: 5px;}
	.detailCard .commentAdd .myComment .btnComment {margin-left: 5px; font-size: 0.8rem;}
	.detailCard .commentAdd .myComment .btnComment .btnAddComment {width:50px; height: 30px; border: 1px solid #55beff; background-color: #55beff; color: white;}
	.detailCard .commentAdd .myComment .btnComment .btnAddComment:hover {background-color: #009dff; border-color: #009dff;}
	.detailCard .commentList {height: 100%; min-height: 60px; margin-top: 10px; overflow-y: auto; max-height: 500px;}
	.detailCard .commentList::-webkit-scrollbar {width: 5px; height: 10px;}
	.detailCard .commentList::-webkit-scrollbar-thumb {background-color: #888;}
	.detailCard .commentList::-webkit-scrollbar-track {background-color: #dddddd;}
	.detailCard .commentList .memberImg {float: left;}
	.detailCard .commentList .comments {margin-left: 30px; overflow: hidden;}
	.detailCard .commentList .comments p {margin: 0px 0px 0px 5px; padding-top: 5px; font-size: 0.9rem;}
	.detailCard .commentList .comments span{font-size: 0.8rem; color: #888; margin-left: 5px;}
	.detailCard .commentList .comments .divEditAnswer {float: right;}
	.detailCard .commentList .comments .divEditAnswer button {color: #888;}
	.detailCard .commentList .comments .divEditAnswer button:hover {background: #f7f7f7;}
	
	.detailCard .commentAdd .resultComment {margin-top: 15px;}
	.detailCard .commentAdd .editComment {display: none; margin-top: 10px; margin-bottom: 10px;}
	.detailCard .commentAdd .editComment input {width: 100%; height: 30px; margin-left: 5px; font-size: 0.9rem;}
	.detailCard .commentAdd .editComment .btnComment {margin-left: 5px; font-size: 0.8rem; display: flex;}
	.detailCard .commentAdd .editComment .btnComment .btnEditComment {width:50px; height: 30px; border: 1px solid #55beff; background-color: #55beff; color: white; margin-right: 5px;}
	.detailCard .commentAdd .editComment .btnComment .btnEditComment:hover {background-color: #009dff; border-color: #009dff;}
	.detailCard .commentAdd .editComment .btnComment .btnCancelComment {width:50px; height: 30px; border: 1px solid #dddddd; color: black;}
	.detailCard .commentAdd .editComment .btnComment .btnCancelComment:hover {background-color: #dddddd;}
	
	#editCocnr .modal-content {top: 80px; left: -420px; width: 530px;}
	#editCocnr table td {padding-bottom: 10px;}
	#editCocnr .row {text-align: center;}
	#editCocnr #memberList span {width:100px; margin-right: 1px; margin-bottom: 5px; border: 1px dashed #dddddd; float: left; font-size: 0.8rem; border-radius: 10px; height: 25px; padding-top: 2px;}
	#editCocnr #memberList .deleteMember {float: left; color: #888;}
	#editCocnr .sharedEmpAdd:hover {cursor: pointer;}
</style>
<script type="text/javascript">
	$(function(){
		// '카드 메뉴 생성 div([ + ])' 클릭 시, 카드 메뉴 생성 div 숨기고 input 태그 보이기
		$(".plusIcon").on("click", function(){
			$(this).css("display", "none");
			$("#createCardMenu").find(".createCardMenuList").css("display", "block");
			$("input[name='cardSj']").focus();
			$("#createCardMenu").css("cursor", "auto");
		});
		
		// '카드 메뉴 생성 div([ + ])' > '취소' 클릭 시, input 태그 숨기고 카드 생성 div 보이기
		$("#btnCancelCardMenu").on("click", function(){
			$(".createCardMenuList").css("display", "none");
			$(".plusIcon").css("display", "block");
			$("#createCardMenu").css("cursor", "pointer");
		});
		
		<c:set var="fileCours" value="${fn:replace(sessionScope.empVo.fileCours,'\\\\','/')}" />
		
		// 전체 카드 메뉴 조회
		$.ajax({
			url : "/todo/board/cardMenuList"
			, type : "get"
			, async : false
			, success : function(cardMenu){
 				console.log(cardMenu)
				if(cardMenu.length > 0){
					for(var i=0; i<cardMenu.length; i++){
						if(cardMenu[i].boardNo == ${detailBoard.boardNo}){
							var str = '<div class="col-sm-2 cardMenu" id="cardMenu'+ cardMenu[i].cardMenuNo +'">'
							+ '<input type="hidden" name="boardNo" value="'+ cardMenu[i].boardNo +'">'
							+ '<div class="cardMenuTitle">'
							+	'<div class="cardMenuHeader">'
							+		'<span>'+ cardMenu[i].cardSj +'</span>'
							+		'<span class="cardMenuOption" data-toggle="dropdown"><i class="fas fa-align-justify"></i></span>'
							+ 		'<div class="dropdown-menu">'
						    + 			'<a class="dropdown-item" onclick="fn_openEditCardMenuNm('+ cardMenu[i].cardMenuNo +')">카드메뉴 이름 수정</a>'
						    + 			'<a class="dropdown-item" onclick="fn_deleteCardMenu('+ cardMenu[i].cardMenuNo +')">카드메뉴 삭제</a>'
						  	+		'</div>'
						  	+	'</div>'
						  	+	'<div class="editCardMenuNm">'
							+		'<input type="text" class="form-control" name="cardSj" value="'+ cardMenu[i].cardSj +'">'
							+		'<div class="btnEditCardMenu">'
							+			'<button type="button" class="btnEditCardMenuNm" onclick="fn_editCardMenuNm('+ cardMenu[i].cardMenuNo +')">수정</button>'
							+			'<button type="button" class="btnCancelCardMenuNm" onclick="fn_cancelCardMenuNm('+ cardMenu[i].cardMenuNo +')">취소</button>'
							+		'</div>'
							+	'</div>'
							+ '</div>'
							+ '<div class="createCard" onclick="fn_blockCardList(this)">'
							+	'<i class="fas fa-plus"></i>'
							+ '</div>'
							+	'<div class="createCardList">'
							+		'<form id="cardFrm'+ cardMenu[i].cardMenuNo +'">'
							+			'<input type="text" class="form-control" name="cardNm" >'
							+			'<input type="hidden" class="form-control" name="cardMenuNo" value="'+ cardMenu[i].cardMenuNo +'">'
							+			'<input type="hidden" class="form-control" name="boardNo" value="'+ cardMenu[i].boardNo +'">'
							+			'<input type="hidden" class="form-control" name="wrterEmpno" value="'+ ${sessionScope.empVo.empno} +'">'
							+		'</form>'
							+			'<div class="btnCard">'
							+				'<button id="btnCreateCard" type="button" onclick="fn_createCard('+ cardMenu[i].cardMenuNo + ')">저장</button>'
							+				'<button id="btnCancelCard" type="button" onclick="fn_cancelCard(this)">취소</button>'
							+			'</div>'
							+	'</div>'
						    +'</div>';
						    
							$("#createCardMenu").before(str);	
						}
							
					}
					
					// 카드 조회
					$.ajax({
						url : "/todo/board/cardList"
						, type : "get"
						, async : false
						, success : function(card){
 							console.log(card);
							if(card.length > 0){
								for(var i=0; i<card.length; i++){
									var str = '<div class="cards" id="card'+ card[i].cardNo +'">'
										+	'<input type="hidden" name="boardNo" value="'+ card[i].boardNo +'">'
										+	'<input type="hidden" name="cardMenuNo" value="'+ card[i].cardMenuNo +'">'
										+ 	'<div class="cardTitle" onclick="fn_updateCard('+ card[i].cardNo +')">'
										+		'<span>'+ card[i].cardNm +'</span>'
										+	'</div>'
										+	'<div class="editCardNm">'
										+		'<input type="text" class="form-control" name="cardNm" value="'+ card[i].cardNm +'">'
										+		'<div class="btnEditCard">'
										+			'<button type="button" class="btnEditCardNm" onclick="fn_editCardNm('+ card[i].cardNo +')">수정</button>'
										+			'<button type="button" class="btnCancelCardNm" onclick="fn_cancelCardNm('+ card[i].cardNo +')">취소</button>'
										+		'</div>'
										+	'</div>'
										+	'<div class="option">'
										+ 		'<span class="cardOption" data-toggle="dropdown"><i class="fas fa-bars fa-xs"></i></span>'
										+ 		'<div class="dropdown-menu">'
									    + 			'<a class="dropdown-item" onclick="fn_openEditCardNm('+ card[i].cardNo +')">카드 이름 수정</a>'
									    + 			'<a class="dropdown-item" onclick="fn_deleteCard('+ card[i].cardNo +')">카드 삭제</a>'
									  	+		'</div>'
									  	+	'</div>'
										+	'<div class="cardContent">'
										+	'</div>'
										+	'<div class="shareMember">'
										+	'</div>'
										+ '</div>';
										
									
									var cardMenuId = "#cardMenu" + card[i].cardMenuNo +"";
									$(""+ cardMenuId +" .createCard").before(str);					// '카드 생성 div[ + ]' 앞에 생성하기
									
									if(card[i].cardCn == null){
										card[i].cardCn = "";
									}
									
									var cardModal = '<div class="modal detailCard" id="detailCard'+  card[i].cardNo +'" data-backdrop="static">'
												+	'<div class="modal-dialog">'
												+		'<div class="modal-content">'
												+			'<div class="modal-header">'
												+				'<span class="modal-title"><i class="fas fa-poll-h mr-2"></i>'+ card[i].cardNm +'</span>'
												+				'<button type="button" class="close" data-dismiss="modal"><i class="fas fa-times"></i></button>'
												+			'</div>'
												+			'<div class="modal-body">'
												+				'<input type="hidden" name="updtEmpno" value="'+${sessionScope.empVo.empno}+'">'
												+				'<input type="hidden" id="boardNo'+ card[i].cardNo +'" name="boardNo" value="'+ card[i].boardNo +'">'
												+				'<input type="hidden" id="cardMenuNo'+ card[i].cardNo +'" name="cardMenuNo" value="'+ card[i].cardMenuNo +'">'
												+				'<input type="hidden" id="cardNo'+ card[i].cardNo +'" name="cardNo" value="'+ card[i].cardNo +'">'
												+					'<div class="cardInfo">'
												+						'<span class="addCardInfo" onclick="fn_addCardInfo('+  card[i].cardNo +', this)"><i class="fas fa-plus mr-2"></i>설명</span>'
												+						'<div class="InfoContent" onclick="fn_detailCardInfoContent('+  card[i].cardNo +', this)">'
												+							'<p>'+ card[i].cardCn +'</p>'
												+						'</div>'
												+						'<div class="cardInfoContent">'
												+							'<textarea rows="5" class="form-control" id="cardCn'+ card[i].cardNo +'" name="cardCn"></textarea>'
												+							'<div class="btnCreateInfoContent">'
												+								'<button id="btnCreateCardInfo" class="btnCreateCardInfo" type="button" onclick="fn_createCardInfo('+  card[i].cardNo +')">저장</button>'
												+								'<button id="btnCancelCardInfo" class="btnCancelCardInfo" type="button" onclick="fn_cancelCardInfo('+  card[i].cardNo +')">취소</button>'
												+							'</div>'
												+							'<div class="btnCard">'
												+								'<button id="btnEditCardInfoContent" class="btnEditCardInfoContent" type="button" onclick="fn_editCardInfoContent('+ card[i].cardNo +')">수정</button>'
												+								'<button id="btnDeleteCardInfoContent" class="btnDeleteCardInfoContent" type="button" onclick="fn_deleteCardInfoContent('+  card[i].cardNo +')">삭제</button>'
												+								'<button id="btnCancelCardInfoContent" class="btnCancelCardInfoContent" type="button" onclick="fn_cancelCardInfoContent('+  card[i].cardNo +')">취소</button>'
												+							'</div>'
												+						'</div>'
												+					'</div>'
												+					'<div class="cardFile">'
												+						'<div class="cardFileTitle"><i class="fas fa-paperclip mr-2"></i><span>파일첨부</span></div>'
												+						'<div class="cardAttchFile">'
												+							'<label for="file'+ card[i].cardNo +'"><span><i class="fas fa-plus mr-2"></i>파일</span></label>'
												+							'<input id="file'+ card[i].cardNo +'" class="file" type="file" style="display: none;" onchange="fn_attachFile('+ card[i].cardNo +')">'
												+						'</div>' 
												+						'<div class="cardAttachedFile">'
												+						'</div>'
												+						'<div class="row previewImg">'
												+						'</div>'
												+					'</div>'
												+					'<div class="cardDate">'
												+						'<div class="cardDateTitle"><i class="fas fa-calendar-alt mr-2"></i><span>기한일</span></div>'
												+						'<div class="cardDateAdd">'
												+							'<input id="cardEndDt'+ card[i].cardNo +'" name="cardEndDt" type="date" value="'+ card[i].cardEndDt +'" class="form-control" onchange="fn_changeCardDate('+  card[i].cardNo +')">'
												+						'</div>'
												+					'</div>'
												+				'<div class="cardComment">'
												+					'<div class="commentTitle"><span>댓글</span>(<span id="answerCount'+ card[i].cardNo +'"></span>)</div>'
												+					'<div class="commentAdd">'
												+						'<div class="myComment">'
												+							'<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">'
												+							'<input type="text" class="form-control" name="answerCn">'
												+							'<div class="btnComment">'
												+								'<button id="btnAddComment" class="btnAddComment" type="button" onclick="fn_createComment('+ card[i].cardNo +')">등록</button>'
												+							'</div>'
												+						'</div>'
												+						'<div id="commentList'+ card[i].cardNo +'" class="commentList">'
												+						'</div>'
												+					'</div>'
												+				'</div>'
												+			'</div>'
												+		'</div>'
												+	'</div>'
												+'</div>';
										
										var cardId = "#card" +  card[i].cardNo;
										$(""+ cardId +"").after(cardModal);
								}
								
								// 카드 댓글 전체 조회
								$.ajax({
									url : "/todo/card/countAnswerList"
									, type : "get"
									, success : function(answerList){
										console.log(answerList);
										for(var i=0; i<card.length; i++){
											for(var j=0; j<answerList.length; j++){
												if(card[i].cardNo == answerList[j].cardNo){
													if(answerList[j].answerCn == null){
														answerList[j].answerCn = "&nbsp";
													}
													var str = '<div id="resultComment'+ answerList[j].answerNo +'" class="resultComment">' 	
														+ '<div class="addComment">'
														+ '<input type="hidden" id="answerNo'+ answerList[j].answerNo +'" name="answerNo" value="'+ answerList[j].answerNo +'">'
														+	'<span class="memberImg"><img src="/reload?fileNo='+ answerList[j].photoNo +'"></span>'
														+	'<div class="comments">'
														+		'<p>'+ answerList[j].answerCn +'</p>'
												 		+		'<span>'+ answerList[j].updtTm +'</span>'
														+	'</div>'
														+ '</div>'
														+ '<div class="editComment">'
														+	'<img src="/reload?fileNo='+ answerList[j].photoNo +'">'
														+	'<input type="text" class="form-control" name="answerCn">'
														+	'<div class="btnComment">'
														+		'<button id="btnEditComment" class="btnEditComment" type="button" onclick="fn_editComment('+ card[i].cardNo +','+ answerList[j].answerNo +')">수정</button>'
														+		'<button id="btnCancelComment" class="btnCancelComment" type="button" onclick="fn_cancelComment(this)">취소</button>'
														+	'</div>'
														+ '</div>'
													    + '</div>';
														
														
													$("#commentList"+ card[i].cardNo +"").append(str);
													if(answerList[j].wrterEmpno == ${sessionScope.empVo.empno}){
														var edit = '<div class="divEditAnswer">'
																+		'<button type="button" class="btn" onclick="fn_openEditComment(this)"><i class="far fa-edit"></i></button>'
																+		'<button type="button" class="btn" onclick="fn_deleteComment('+ card[i].cardNo +','+ answerList[j].answerNo +',this)"><i class="fas fa-times"></i></button>'
																+	'</div>'
														$("#resultComment"+ answerList[j].answerNo +" .comments").append(edit);
													}
														
												}
											}
										
											// 댓글 개수 보이기
											var answerCount = $("#commentList"+ card[i].cardNo +"").find(".comments").length;
											$("#answerCount"+ card[i].cardNo +"").text(answerCount);
										}
									}										
								});
								
								// 해당 카드의 파일 조회
								for(var i=0; i<card.length; i++){
									// 파일이 존재하면..
									if(card[i].fileNo != null){
										// 해당 카드에 대한 파일 조회
										$.ajax({
											url : "/todo/card/cardFileList"
											, type: "post"
											, data : {"fileNo" : card[i].fileNo, "cardNo" : card[i].cardNo}
											, success : function(fileList){
												console.log(fileList);
												for(var i=0; i<card.length; i++){	
													for(var j=0; j<fileList.length; j++){
														if(card[i].fileNo == fileList[j].fileNo){
															var fileInfo = '<p>'
																+ 	'<span><i class="fas fa-paperclip mr-2"></i></span>'+ fileList[j].fileOrginlNm +'<span>('+ fileSizePrint(fileList[j].fileSize) +')</span>'
																+ 	'<span class="deleteAttachedFile" onclick="fn_deleteFile('+ fileList[j].fileNo +','+ fileList[j].fileOrdr +',this)"><i class="fas fa-times ml-2"></i></span>'
																+ 	'<span class="fileNo" style="display: none;">'+ fileList[j].fileNo +'</span>'
																+ 	'<span class="fileOrdr" style="display : none;">' + fileList[j].fileOrdr +'</span>'
																+	'<span class="downloadFile" onclick="fn_downloadFile('+ fileList[j].fileNo +', '+ fileList[j].fileOrdr +')"><i class="fas fa-download"></i></span>'
																+ '</p>';
																
															$("#detailCard"+ card[i].cardNo +" .cardAttachedFile").append(fileInfo);
															
															// 추가한 파일이 이미지 파일일 때, 이미지 보이기
															var fileCours = fileList[j].fileCours.replace(/\\/ig,"/");	// "\"를 "/"로 치환
															var fileRoot = "/reload2?fileNo=" + fileList[j].fileNo + "&fileOrdr=" + fileList[j].fileOrdr +"";	// 파일 업로드 폴더 루트
															
															var reg = /(.*?)\/(jpg|jpeg|png|bmp|jfif)$/;	// 이미지를 구분하기 위한 정규표현식
															var extsn = fileList[j].extsn.toLowerCase();	// 대문자 확장자를 소문자로 바꿔준다.
															if(extsn == "jpg" || extsn == "jpeg" || extsn == "png" || extsn == "bmp" || extsn == "jfif"){	// 이미지 확장자 파일 일 때..
																extsn = "image/" + extsn;
															}
															
															if(extsn.match(reg)){
																var imgObj = '<div class="col-sm-6"><img id="img'+ fileList[j].fileNo + fileList[j].fileOrdr +'" src="'+ fileRoot +'" alt="'+ fileList[j].fileOrginlNm +'"></div>';
																$("#detailCard"+ card[i].cardNo +" .previewImg").append(imgObj);
															}
														}
													}
												}
											}
										});	// 파일 조회 ajax
										
									}
								}
							}
						}
					});
				}
			}
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
							
						}
					}
				});
			}
			
		});
		
	}); // end jquery
	
	// 보드 이름 클릭 시
	function fn_openEditBoardNm(){
		$(".boardTitle h3").css("display", "none");
		$(".boardTitle .eidtBoardNm").css("display", "block");
	}
	
	
	// 보드 이름 - [수정] 클릭 시
	function fn_editBoardNm(boardNo){
		var boardNm = $(".eidtBoardNm input[name='boardNm']");
		
		if( fn_isEmpty(boardNm.val()) || $.trim(boardNm.val()) == ""){
			alert("보드 이름을 입력하세요");
			boardNm.focus();
			return false;
		}
		
		var data = {"boardNo" : boardNo, "boardNm" : boardNm.val()};
		
		$.ajax({
			url : "/todo/board/editBoardNm"
			, type : "post"
			, data : data
			, success : function(result){
				if(result == 1){
					$(".boardTitle h3").text(boardNm.val());
					$(".boardTitle h3").css("display", "block");
					$(".boardTitle .eidtBoardNm").css("display", "none");
				}
			}
		});
	}
	
	// 보드 이름 - [취소] 클릭 시
	function fn_cancelBoardNm(){
		$(".boardTitle h3").css("display", "block");
		$(".boardTitle .eidtBoardNm").css("display", "none");
	}
	
	// 공유자 설정 - [수정] 클릭 시
	function fn_editBoardCocnr(){
		$("#editBoardCocnrFrm").attr("method", "post");
		$("#editBoardCocnrFrm").attr("action", "/todo/board/editBoardCocnr");
		$("#editBoardCocnrFrm").submit();
	}
	
	// 공유자 설정 - 공유자 삭제('X' 아이콘) 클릭 시
	function fn_deleteMember(obj){
		$(obj).parent().remove();
	}
	
	// 보드 삭제 클릭 시
	function fn_deleteBoard(boardNo){
		var check = confirm("삭제한 정보는 복구할 수 없습니다. 정말 삭제하시겠습니까?");
		if(check){
			location.href="/todo/board/deleteBoard?boardNo="+ boardNo +"";	
		}
	}
	
	// 카드 메뉴 - [카드메뉴 이름 수정] 클릭 시
	function fn_openEditCardMenuNm(cardMenuNo){
		$("#cardMenu"+ cardMenuNo +"").find(".cardMenuHeader").css("display", "none");
		$("#cardMenu"+ cardMenuNo +"").find(".editCardMenuNm").css("display", "block");
	}
	
	// 카드 메뉴 - [카드메뉴 이름 수정] - [수정] 클릭 시
	function fn_editCardMenuNm(cardMenuNo){
		var boardNo = $("#cardMenu"+ cardMenuNo +"").find("input[name='boardNo']").val();
		var cardSj = $("#cardMenu"+ cardMenuNo +" .editCardMenuNm").find("input[name='cardSj']");
		
		if( fn_isEmpty(cardSj.val()) || $.trim(cardSj.val()) == ""){
			alert("카드메뉴 이름을 입력하세요");
			cardSj.focus();
			return false;
		}
		
		var data = {"boardNo" : boardNo, "cardMenuNo" : cardMenuNo, "cardSj" : cardSj.val()};
		
		$.ajax({
			url : "/todo/cardMenu/editCardMenuNm"
				, type : "post"
				, data : data
				, success : function(result){
					if(result == 1){
						$("#cardMenu"+ cardMenuNo +" .cardMenuHeader span:first").text(cardSj.val());
						
						$("#cardMenu"+ cardMenuNo +"").find(".cardMenuHeader").css("display", "block");
						$("#cardMenu"+ cardMenuNo +"").find(".editCardMenuNm").css("display", "none");	
					
					}
				}
			});
	}
	
	// 카드 메뉴 - [카드메뉴 이름 수정] - [취소] 클릭 시
	function fn_cancelCardMenuNm(cardMenuNo){
		$("#cardMenu"+ cardMenuNo +"").find(".cardMenuHeader").css("display", "block");
		$("#cardMenu"+ cardMenuNo +"").find(".editCardMenuNm").css("display", "none");
	}
	
	// 카드메뉴 - [카드메뉴 삭제] 클릭 시
	function fn_deleteCardMenu(cardMenuNo){
		var check = confirm("삭제한 정보는 복구할 수 없습니다. 정말 삭제하시겠습니까?");
		var boardNo = $("#cardMenu"+ cardMenuNo +"").find("input[name='boardNo']").val();
		
		if(check){
			$.ajax({
				url : "/todo/cardMenu/deleteCardMenu"
				, type : "post"
				, data : {"boardNo" : boardNo, "cardMenuNo" : cardMenuNo}
				, success : function(result){
					if(result == 1){
						$("#cardMenu"+ cardMenuNo +"").remove();
					}					
				}
			});
		}
	}
	
	// 카드 - [카드 이름 수정] 클릭 시
	function fn_openEditCardNm(cardNo){
		$("#card"+ cardNo +"").find(".option").css("display", "none");
		$("#card"+ cardNo +"").find(".cardTitle").css("display", "none");
		$("#card"+ cardNo +"").find(".editCardNm").css("display", "block");
		$(".cards").hover(function(){
			$(this).css("background-color", "white");
		});
	}
	
	// 카드 - [카드 이름 수정] - [수정] 클릭 시
	function fn_editCardNm(cardNo){
		var boardNo = $("#card"+ cardNo +"").find("input[name='boardNo']").val();
		var cardMenuNo = $("#card"+ cardNo +"").find("input[name='cardMenuNo']").val();
		var cardNm = $("#card"+ cardNo +"").find("input[name='cardNm']");
		
		if( fn_isEmpty(cardNm.val()) || $.trim(cardNm.val()) == ""){
			alert("카드 이름을 입력하세요");
			cardNm.focus();
			return false;
		}
		
		var data = {"boardNo" : boardNo, "cardMenuNo" : cardMenuNo, "cardNo" : cardNo, "cardNm" : cardNm.val(), "updtEmpno" : ${sessionScope.empVo.empno}};
		
		$.ajax({
			url : "/todo/card/editCardNm"
			, type : "post"
			, data : data
			, success : function(result){
				if(result == 1){
					$("#card"+ cardNo +" .cardTitle span").text(cardNm.val());
					$("#detailCard"+ cardNo +" .modal-title").html("<i class='fas fa-poll-h mr-2'></i>"+ cardNm.val() +"");
					
					$("#card"+ cardNo +"").find(".option").css("display", "block");
					$("#card"+ cardNo +"").find(".cardTitle").css("display", "block");
					$("#card"+ cardNo +"").find(".editCardNm").css("display", "none");
			 		$(".cards").hover(function(){ 
			 			$(this).css("background-color", "#cac7c7"); 
			 		}, function(){
			 			$(this).css("background-color", "white");
			 		});
				}
			}
		});
	}
	
	// 카드 - [카드 이름 수정] - [취소] 클릭 시
	function fn_cancelCardNm(cardNo){
		$("#card"+ cardNo +"").find(".option").css("display", "block");
		$("#card"+ cardNo +"").find(".cardTitle").css("display", "block");
		$("#card"+ cardNo +"").find(".editCardNm").css("display", "none");
 		$(".cards").hover(function(){ 
 			$(this).css("background-color", "#cac7c7"); 
 		}, function(){
 			$(this).css("background-color", "white");
 		});
	}
	
	
	// 카드 - [카드 삭제] 클릭 시
	function fn_deleteCard(cardNo){
		var check = confirm("삭제한 정보는 복구할 수 없습니다. 정말 삭제하시겠습니까?");
		var boardNo = $("#card"+ cardNo +"").find("input[name='boardNo']").val();
		var cardMenuNo = $("#card"+ cardNo +"").find("input[name='cardMenuNo']").val();
		
		// 컨펌 [확인] 클릭 시
		if(check){
			// 카드 전체 조회
			$.ajax({
				url : "/todo/board/cardList"
				, type : "get"
				, success : function(card){
					console.log(card);
					if(card != null){
						for(var i=0; i<card.length; i++){
							// card[i].cardNo 가 cardNo와 같을 때의 card객체를 data로 전송
							if(card[i].cardNo == cardNo){
								$.ajax({
									url : "/todo/card/deleteCard"
									, type : "post"
									, data : card[i]
									, success : function(result){
										if(result == 1){
											$("#card"+ cardNo +"").remove();
											$("#detailCard"+ cardNo +"").remove();
										}
									}
								});
							}
						}
						
					}
				}
			});
		}
		
	}
	
	// 입력한 카드 메뉴이름으로 카드 메뉴 생성
	function fn_createCardMenu(){
		var cardSj = $("input[name='cardSj']");
		
		if( fn_isEmpty(cardSj.val()) || $.trim(cardSj.val()) == "" ){
			alert("카드 메뉴 이름을 입력하세요.");
			cardSj.focus();
			return false;
		}
		
		// 카드 메뉴 생성
		$.ajax({
			url : "/todo/board/createCardMenu"
			, type : "post"
			, data : $("#cardMenuFrm").serialize()
			, async : false
			, success : function(createdCardMenuNo){
// 				console.log(createdCardMenuNo);
				// 카드 메뉴가 생성 성공 시(리턴 값 : insert된 카드메뉴 번호)
				if(createdCardMenuNo != null){
					// 생성된 카드메뉴 조회
					$.ajax({
						url : "/todo/board/createdCardMenuInfo"
						, type : "post"
						, data : {"cardMenuNo" : ""+ createdCardMenuNo +""}
						, async : false
						, success : function(createdCardMenuInfo){
// 							console.log(createdCardMenuInfo);
							// 해당 카드메뉴 정보가 존재하면(리턴 값 : todoVO)
							if(createdCardMenuInfo != null){
								var str = '<div class="col-sm-2 cardMenu" id="cardMenu'+ createdCardMenuInfo.cardMenuNo +'">'
								+ '<input type="hidden" name="boardNo" value="'+ createdCardMenuInfo.boardNo +'">'
								+ '<div class="cardMenuTitle">'
								+	'<div class="cardMenuHeader">'
								+		'<span>'+ createdCardMenuInfo.cardSj +'</span>'
								+		'<span class="cardMenuOption" data-toggle="dropdown"><i class="fas fa-align-justify"></i></span>'
								+ 		'<div class="dropdown-menu">'
							    + 			'<a class="dropdown-item" onclick="fn_openEditCardMenuNm('+ createdCardMenuInfo.cardMenuNo +')">카드메뉴 이름 수정</a>'
							    + 			'<a class="dropdown-item" onclick="fn_deleteCardMenu('+ createdCardMenuInfo.cardMenuNo +')">카드메뉴 삭제</a>'
							  	+		'</div>'
							  	+	'</div>'
							  	+	'<div class="editCardMenuNm">'
								+		'<input type="text" class="form-control" name="cardSj" value="'+ createdCardMenuInfo.cardSj +'">'
								+		'<div class="btnEditCardMenu">'
								+			'<button type="button" class="btnEditCardMenuNm" onclick="fn_editCardMenuNm('+ createdCardMenuInfo.cardMenuNo +')">수정</button>'
								+			'<button type="button" class="btnCancelCardMenuNm" onclick="fn_cancelCardMenuNm('+ createdCardMenuInfo.cardMenuNo +')">취소</button>'
								+		'</div>'
								+	'</div>'
								+ '</div>'
								+ '<div class="createCard" onclick="fn_blockCardList(this)">'
								+	'<i class="fas fa-plus"></i>'
								+ '</div>'
								+	'<div class="createCardList">'
								+		'<form id="cardFrm'+ createdCardMenuInfo.cardMenuNo +'">'
								+			'<input type="text" class="form-control" name="cardNm" >'
								+			'<input type="hidden" class="form-control" name="cardMenuNo" value="'+ createdCardMenuInfo.cardMenuNo +'">'
								+			'<input type="hidden" class="form-control" name="boardNo" value="'+ createdCardMenuInfo.boardNo +'">'
								+			'<input type="hidden" class="form-control" name="wrterEmpno" value="'+ ${sessionScope.empVo.empno} +'">'
								+		'</form>'
								+			'<div class="btnCard">'
								+				'<button id="btnCreateCard" type="button" onclick="fn_createCard('+ createdCardMenuInfo.cardMenuNo + ')">저장</button>'
								+				'<button id="btnCancelCard" type="button" onclick="fn_cancelCard(this)">취소</button>'
								+			'</div>'
								+	'</div>'
							    +'</div>';
							    
								$("#createCardMenu").before(str);
								$(".createCardMenuList").css("display", "none");	// 카드 메뉴 생성 input메뉴 숨기기
								$(".createCardMenuList input[name='cardSj']").val(null);
			 					$(".plusIcon").css("display", "block");				// 카드 메뉴 생성 div 보이기
			 					$("#createCardMenu").css("cursor", "pointer");
			 					
							}
						}						
					});
					
				}else {
					alert("다시 시도해주세요.");
				}
			}
		});
		
	}
	
	// 카드 만들기 form 띄우기
	function fn_blockCardList(obj){
		$(obj).css("display", "none");					// '카드 생성 div[+]' 숨기기
		$(obj).siblings(".createCardList").css("display", "block");	// 카드 생성 input 보이기
		$("input[name='cardNm']").focus();			// input에 포커스
	}
	
	// 카드 생성
	function fn_createCard(cardMenuNo){
		var cardMenuId = "#cardMenu" + cardMenuNo +"";	// 부모 카드메뉴 
		var cardNm = $(""+ cardMenuId +" input[name='cardNm']");	// 입력한 카드 객체
		var cardFrmId = "#cardFrm" + cardMenuNo;
		
		if( fn_isEmpty(cardNm.val()) || $.trim(cardNm.val()) == "" ){
			alert("카드 이름을 입력하세요.");
			cardNm.focus();
			return false;
		}
		
		$.ajax({
			url : "/todo/board/createCard"
			, type : "post"
			, data : $(""+cardFrmId+"").serialize()
			, async : false
			, success : function(createdCardNo){
				// 카드가 생성됬으면..
				if(createdCardNo != null){
					location.reload;
					// 생성된 카드 조회
					$.ajax({
						url : "/todo/board/createdCardInfo"
						, type : "post"
						, data : {"cardNo" : ""+ createdCardNo +""}
						, async : false
						, success : function(createdCardInfo){
// 							console.log(createdCardInfo);
							// 생성된 카드가 존재하면..
							if(createdCardInfo != null){
								var str = '<div class="cards" id="card'+ createdCardInfo.cardNo +'">'
								+	'<input type="hidden" name="boardNo" value="'+ createdCardInfo.boardNo +'">'
								+	'<input type="hidden" name="cardMenuNo" value="'+ createdCardInfo.cardMenuNo +'">'
								+ 	'<div class="cardTitle" onclick="fn_updateCard('+ createdCardInfo.cardNo +')">'
								+		'<span>'+ createdCardInfo.cardNm +'</span>'
								+	'</div>'
								+	'<div class="editCardNm">'
								+		'<input type="text" class="form-control" name="cardNm" value="'+ createdCardInfo.cardNm +'">'
								+		'<div class="btnEditCard">'
								+			'<button type="button" class="btnEditCardNm" onclick="fn_editCardNm('+ createdCardInfo.cardNo +')">수정</button>'
								+			'<button type="button" class="btnCancelCardNm" onclick="fn_cancelCardNm('+ createdCardInfo.cardNo +')">취소</button>'
								+		'</div>'
								+	'</div>'
								+	'<div class="option">'
								+ 		'<span class="cardOption" data-toggle="dropdown"><i class="fas fa-bars fa-xs"></i></span>'
								+ 		'<div class="dropdown-menu">'
							    + 			'<a class="dropdown-item" onclick="fn_openEditCardNm('+ createdCardInfo.cardNo +')">카드 이름 수정</a>'
							    + 			'<a class="dropdown-item" onclick="fn_deleteCard('+ createdCardInfo.cardNo +')">카드 삭제</a>'
							  	+		'</div>'
							  	+	'</div>'
								+	'<div class="cardContent">'
								+	'</div>'
								+	'<div class="shareMember">'
								+	'</div>'
								+ '</div>';
							
								var cardMenuId = "#cardMenu" + createdCardInfo.cardMenuNo +"";	// 구별되는 카드 id
								$(""+ cardMenuId +" .createCard").before(str);					// '카드 생성 div[ + ]' 앞에 생성하기
 								$(""+ cardMenuId +" #cardFrm"+ createdCardInfo.cardMenuNo +" input[name='cardNm']").val(null);			// input 비우기
								$(""+ cardMenuId +" .createCardList").css("display", "none");	// 카드 생성 ipput 숨기기
								$(""+ cardMenuId +" .createCard").css("display", "block");		// 카드 생성 div 보이기
								
								
								if(createdCardInfo.cardCn == null){
									createdCardInfo.cardCn = "";
								}
								
								// 모달 생성
								var cardModal = '<div class="modal detailCard" id="detailCard'+ createdCardInfo.cardNo +'" data-backdrop="static">'
												+	'<div class="modal-dialog">'
												+		'<div class="modal-content">'
												+			'<div class="modal-header">'
												+				'<span class="modal-title"><i class="fas fa-poll-h mr-2"></i>'+ createdCardInfo.cardNm +'</span>'
												+				'<button type="button" class="close" data-dismiss="modal"><i class="fas fa-times"></i></button>'
												+			'</div>'
												+			'<div class="modal-body">'
												+				'<input type="hidden" name="updtEmpno" value="'+${sessionScope.empVo.empno}+'">'
												+				'<input type="hidden" id="boardNo'+ createdCardInfo.cardNo +'" name="boardNo" value="'+ createdCardInfo.boardNo +'">'
												+				'<input type="hidden" id="cardMenuNo'+ createdCardInfo.cardNo +'" name="cardMenuNo" value="'+ createdCardInfo.cardMenuNo +'">'
												+				'<input type="hidden" id="cardNo'+ createdCardInfo.cardNo +'" name="cardNo" value="'+ createdCardInfo.cardNo +'">'
												+					'<div class="cardInfo">'
												+						'<span class="addCardInfo" onclick="fn_addCardInfo('+  createdCardInfo.cardNo +', this)"><i class="fas fa-plus mr-2"></i>설명</span>'
												+						'<div class="InfoContent" onclick="fn_detailCardInfoContent('+  createdCardInfo.cardNo +', this)">'
												+							'<p>'+ createdCardInfo.cardCn +'</p>'
												+						'</div>'
												+						'<div class="cardInfoContent">'
												+							'<textarea rows="5" class="form-control" id="cardCn'+ createdCardInfo.cardNo +'" name="cardCn"></textarea>'
												+							'<div class="btnCreateInfoContent">'
												+								'<button id="btnCreateCardInfo" class="btnCreateCardInfo" type="button" onclick="fn_createCardInfo('+  createdCardInfo.cardNo +')">저장</button>'
												+								'<button id="btnCancelCardInfo" class="btnCancelCardInfo" type="button" onclick="fn_cancelCardInfo('+  createdCardInfo.cardNo +')">취소</button>'
												+							'</div>'
												+							'<div class="btnCard">'
												+								'<button id="btnEditCardInfoContent" class="btnEditCardInfoContent" type="button" onclick="fn_editCardInfoContent('+ createdCardInfo.cardNo +')">수정</button>'
												+								'<button id="btnDeleteCardInfoContent" class="btnDeleteCardInfoContent" type="button" onclick="fn_deleteCardInfoContent('+  createdCardInfo.cardNo +')">삭제</button>'
												+								'<button id="btnCancelCardInfoContent" class="btnCancelCardInfoContent" type="button" onclick="fn_cancelCardInfoContent('+  createdCardInfo.cardNo +')">취소</button>'
												+							'</div>'
												+						'</div>'
												+					'</div>'
												+					'<div class="cardFile">'
												+						'<div class="cardFileTitle"><i class="fas fa-paperclip mr-2"></i><span>파일첨부</span></div>'
												+						'<div class="cardAttchFile">'
												+							'<label for="file'+ createdCardInfo.cardNo +'"><span><i class="fas fa-plus mr-2"></i>파일</span></label>'
												+							'<input id="file'+ createdCardInfo.cardNo +'" class="file" type="file" style="display: none;" onchange="fn_attachFile('+ createdCardInfo.cardNo +')">'
												+						'</div>' 
												+						'<div class="cardAttachedFile">'
												+						'</div>'
												+						'<div class="row previewImg">'
												+						'</div>'
												+					'</div>'
												+					'<div class="cardDate">'
												+						'<div class="cardDateTitle"><i class="fas fa-calendar-alt mr-2"></i><span>기한일</span></div>'
												+						'<div class="cardDateAdd">'
												+							'<input id="cardEndDt'+ createdCardInfo.cardNo +'" name="cardEndDt" type="date" value="'+ createdCardInfo.cardEndDt +'" class="form-control" onchange="fn_changeCardDate('+  createdCardInfo.cardNo +')">'
												+						'</div>'
												+					'</div>'
												+				'<div class="cardComment">'
												+					'<div class="commentTitle"><span>댓글</span>(<span id="answerCount'+ createdCardInfo.cardNo +'"></span>)</div>'
												+					'<div class="commentAdd">'
												+						'<div class="myComment">'
												+							'<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">'
												+							'<input type="text" class="form-control" name="answerCn">'
												+							'<div class="btnComment">'
												+								'<button id="btnAddComment" class="btnAddComment" type="button" onclick="fn_createComment('+ createdCardInfo.cardNo +')">등록</button>'
												+							'</div>'
												+						'</div>'
												+						'<div id="commentList'+ createdCardInfo.cardNo +'" class="commentList">'
												+						'</div>'
												+					'</div>'
												+				'</div>'
												+			'</div>'
												+		'</div>'
												+	'</div>'
												+'</div>';
										
										var cardId = "#card" + createdCardInfo.cardNo;
										$(""+ cardId +"").after(cardModal);
							}
							
							var answerCount = $("#commentList"+ createdCardInfo.cardNo +"").find(".comments").length;
							$("#answerCount"+ createdCardInfo.cardNo +"").text(answerCount);
						}
					});
				}	
			}
		
		
		});
		
		
	}
	
	// '카드 생성 div[ + ]' > 취소
	function fn_cancelCard(obj){
		$(obj).parents().find(".createCardList").css("display", "none");
		$(obj).parents().find(".createCard").css("display", "block");
	}
	
	// 생성된 카드 클릭 시 상세정보 기입 모달창 띄우기
	function fn_updateCard(cardNo){
		var cardModalId = "#detailCard" + cardNo;
		
		var cardCn = $("#detailCard"+ cardNo +" .InfoContent > p");
		if(cardCn.text() != null  && cardCn.text() != ""){
			$("#detailCard"+ cardNo +" .addCardInfo").css("display", "none");	// [설명+] 숨기기
			$("#detailCard"+ cardNo +" .InfoContent").css("display", "block"); // 설명 내용 div 보이기
			$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "none"); // 
		}
		
		// 파일이 존재 하지 않을 때, 파일 순서 초기화
		if( $("#detailCard"+ cardNo +" .cardAttachedFile p").length == 0 ){
			fileOrdr = 1;
		}
		
		// 파일이 존재할 때, 각 카드의 파일에 대한 파일번호와 파일 순서 세팅
		if( $("#detailCard"+ cardNo +" .cardAttachedFile p").length > 0 ){
			// .fileNo라는 클래스를 가진 첫 번째 span의 text값(파일 번호는 각 카드에서 유일함)			
			var setFileNo = $("#detailCard"+ cardNo +" .cardAttachedFile .fileNo:first").text();
			fileNo = setFileNo;
			// .fileOrdr라는 클래스를 가진 마지막 span의 text값(파일 순서는 순차적으로 올라감)
			var setFileOrdr = $("#detailCard"+ cardNo +" .cardAttachedFile .fileOrdr:last").text();
			// integer형으로 형변환 후 + 1 하여 fileOrdr에 세팅
			fileOrdr = parseInt(setFileOrdr) + 1;
			
		}
		
		$(""+ cardModalId +"").modal("show");
	}
	
	// [설명+] 클릭 시 textarea 오픈
	function fn_addCardInfo(cardNo, obj){
		console.log(obj);
		$(obj).css("display", "none");
		$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "block");
		$("#detailCard"+ cardNo +" .btnCreateInfoContent").css("display", "block");
	}
	
	// [설명+] -> [저장] 클릭 시
	function fn_createCardInfo(cardNo){
		// ajax data
		var cardCn = $("#cardCn"+ cardNo +"");		// 카드 내용
		var updtEmpno = $("input[name='updtEmpno']").val();		// 수정자 사번
		console.log(updtEmpno);
		var cardMenuNo = $("#cardMenuNo"+ cardNo +"").val();	// 해당 카드의 카드메뉴번호
		var boardNo = $("#boardNo"+ cardNo +"").val();	// 해당 카드의 보드 번호
		
		if( fn_isEmpty(cardCn.val()) || $.trim(cardCn.val()) == "" ){
			alert("내용을 입력하세요.");
			cardCn.focus();
			return false;
		}else {
			$.ajax({
				url : "/todo/card/editCardDesc"
				, type : "post"
				, data : {"cardCn" : cardCn.val(), "updtEmpno" : updtEmpno, "cardMenuNo" : cardMenuNo, "boardNo" : boardNo, "cardNo" : cardNo}
				, success : function(data){
					console.log(data);
					
					$("#detailCard"+ cardNo +" .btnCreateInfoContent").css("display", "none");		// [저장],[취소] 숨기기
					$("#detailCard"+ cardNo +" .addCardInfo").css("display", "none");	// [설명+] 숨기기
	 				$("#detailCard"+ cardNo +" .InfoContent > p").text(cardCn.val());	// 설명 내용 append
					$("#detailCard"+ cardNo +" .InfoContent").css("display", "block"); // 설명 내용 div 보이기
					$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "none");
				}
			});	
		}
		
	}
	
	// [설명+] -> [취소] 클릭 시 
	function fn_cancelCardInfo(cardNo){
		$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "none");	// textarea 숨기기
		$("#detailCard"+ cardNo +" .btnCreateInfoContent").css("display", "none");		// [저장],[취소] 숨기기
		$("#detailCard"+ cardNo +" .addCardInfo").css("display", "inline"); // [설명+] 보이기
	}
	
	// 설명 내용 클릭 시 
	function fn_detailCardInfoContent(cardNo, obj){
		var cardInfoContent = $("#detailCard"+ cardNo +" .InfoContent > p").text();	// 설명 내용 값
		$(obj).css("display", "none");	// 설명 내용 숨기기
		$("#detailCard"+ cardNo +" textarea[name='cardCn']").val(cardInfoContent);	// textarea에 설명내용 저장
		$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "block");	// textarea 보이기
		$("#detailCard"+ cardNo +" .btnCard").css("display", "block");	// [수정],[삭제],[취소] 보이기
	}
	
	// 설명 내용 -> [수정] 클릭 시
	function fn_editCardInfoContent(cardNo){
		// ajax data
		var cardCn = $("#cardCn"+ cardNo +"");		// 카드 내용
		var updtEmpno = $("input[name='updtEmpno']").val();		// 수정자 사번
		var cardMenuNo = $("#cardMenuNo"+ cardNo +"").val();	// 해당 카드의 카드메뉴번호
		var boardNo = $("#boardNo"+ cardNo +"").val();	// 해당 카드의 보드 번호
		
		if( fn_isEmpty(cardCn.val()) || $.trim(cardCn.val()) == "" ){
			alert("내용을 입력하세요.");
			cardCn.focus();
			return false;
		}else {
			$.ajax({
				url : "/todo/card/editCardDesc"
				, type : "post"
				, data : {"cardCn" : cardCn.val(), "updtEmpno" : updtEmpno, "cardMenuNo" : cardMenuNo, "boardNo" : boardNo, "cardNo" : cardNo}
				, success : function(data){
					console.log(data);
					
					$("#detailCard"+ cardNo +" .btnCard").css("display", "none");	// [수정],[삭제],[취소] 숨기기
	 				$("#detailCard"+ cardNo +" .InfoContent > p").text(cardCn.val());	// 설명 내용 append
					$("#detailCard"+ cardNo +" .InfoContent").css("display", "block"); // 설명 내용 div 보이기
					$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "none");
				}
			});	
		}
	}
	
	// 설명 내용 -> [삭제] 클릭 시
	function fn_deleteCardInfoContent(cardNo){
		// ajax data
		var cardCn = $("#cardCn"+ cardNo +"");		// 카드 내용
		var updtEmpno = $("input[name='updtEmpno']").val();		// 수정자 사번
		console.log(updtEmpno);
		var cardMenuNo = $("#cardMenuNo"+ cardNo +"").val();	// 해당 카드의 카드메뉴번호
		var boardNo = $("#boardNo"+ cardNo +"").val();	// 해당 카드의 보드 번호
		
		var check = confirm("삭제한 내용은 복구할 수 없습니다. 삭제하시겠습니까?");	
		if(check == true){
			cardCn.val(null);
			$.ajax({
				url : "/todo/card/editCardDesc"
				, type : "post"
				, data : {"cardCn" : cardCn.val(), "updtEmpno" : updtEmpno, "cardMenuNo" : cardMenuNo, "boardNo" : boardNo, "cardNo" : cardNo}
				, success : function(result){
					if(result == 1){
						$("#detailCard"+ cardNo +" .btnCard").css("display", "none");	// [수정],[삭제],[취소] 숨기기
		 				$("#detailCard"+ cardNo +" .InfoContent > p").text(cardCn.val());	// 설명 내용 append
		 				$("#detailCard"+ cardNo +" .addCardInfo").css("display", "inline"); // [설명+] 보이기
						$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "none");
					}
				
				}
			});
		}
		
	}
	
	// 설명 내용 -> [취소] 클릭 시
	function fn_cancelCardInfoContent(cardNo){
		$("#detailCard"+ cardNo +" .cardInfoContent").css("display", "none");	// textarea 숨기기
		$("#detailCard"+ cardNo +" .btnCard").css("display", "none");	// [수정],[삭제],[취소] 숨기기
		$("#detailCard"+ cardNo +" .InfoContent").css("display", "block"); // 설명 내용 보이기
		
	}
	
	// 파일 크기 포맷팅
	function fileSizePrint(fileSize){
	     var size = "";
	     if (fileSize < 1024){
	    	 size = fileSize + "B";
	     }else if (fileSize < 1024 * 1024){
	    	 size = parseInt (fileSize / 1024) + "KB";
	     }else if (fileSize < 1024 * 1024 * 1024){
	    	 size = parseInt (fileSize / (1024 * 1024)) + "M";
	     }else size = parseInt (fileSize / (1024 * 1024 * 1024)) + "G";
	     
	     return size;
	}
	
	var fileNo = 0;			// 파일번호가 중복되기 위한 전역변수
	var fileOrdr = 1;		// 파일번호에 대한 순서를 위한 전역변수
	// [파일+]로 파일 첨부 시 
	function fn_attachFile(cardNo){
		var formData = new FormData();
		var file = $("#file"+ cardNo +"");		// 파일 객체
		var files = file[0].files;				// 파일 
		var fileName = file.val().split('\\').pop();				// 파일 이름
		var fileSize = file[0].files[0].size;	// 파일 크기
		// 파일 업로드
		formData.append("uploadFile", files[0]);
		
		$.ajax({
			url: "/file/fileAjaxAction"
			, processData: false
			, contentType: false
			, data: formData
			, type: 'post'
			, dataType: 'json'
			, success : function(file){
 				console.log(file);
				// 처음 파일 업로드 할 때 
				if($("#detailCard"+ cardNo +" .cardAttachedFile p").length == 0){
					// 파일번호 구하기
					$.ajax({
						url : "/file/getFileNo"
						, type : "get"
						, success : function(getFileNo){
							if(getFileNo != null){
								fileNo = getFileNo;			// 파일번호를 fileNo 전역변수에 넣기
								file[0].fileNo = getFileNo;	// 해당 파일의 파일번호 세팅
								file[0].fileOrdr = fileOrdr;	// 해당 파일의 파일 순서 세팅
								
								// 파일 insert
								$.ajax({
									url : "/file/createdFileInfo"
									, type : "post"
									, data : file[0] 
									, success : function(fileInfo){
										console.log(fileInfo);
										
										// '파일 이름(파일크기)' 세팅
										var fileInfo = '<p>'
													+ '<span><i class="fas fa-paperclip mr-2"></i></span>'
													+ '<span>'+ fileName +'</span><span>('+ fileSizePrint(fileSize) +')</span>'
													+ '<span class="deleteAttachedFile" onclick="fn_deleteFile('+ file[0].fileNo +','+ file[0].fileOrdr +',this)"><i class="fas fa-times ml-2"></i></span><span class="fileNo" style="display: none;">'+ file[0].fileNo +'</span>'
													+ 	'<span class="fileNo" style="display: none;">'+ file[0].fileNo +'</span>'
													+ 	'<span class="fileOrdr" style="display : none;">' + file[0].fileOrdr +'</span>'
													+	'<span class="downloadFile" onclick="fn_downloadFile('+ file[0].fileNo +', '+ file[0].fileOrdr +')"><i class="fas fa-download"></i></span>'
													+ '</p>';
										$("#detailCard"+ cardNo +" .cardAttachedFile").append(fileInfo);
										
										// 추가한 파일이 이미지 파일일 때, 이미지 보이기
										var reg = /(.*?)\/(jpg|jpeg|png|bmp|jfif)$/;	// 이미지를 구분하기 위한 정규표현식
										if(files[0].type.match(reg)){
											var imgObj = '<div class="col-sm-6"><img id="img'+ file[0].fileNo + file[0].fileOrdr +'" src="" alt=""></div>';
											$("#detailCard"+ cardNo +" .previewImg").append(imgObj);
											
											var reader = new FileReader();
								            reader.onload = function(e) {
								                $("#detailCard"+ cardNo +" #img"+ file[0].fileNo + file[0].fileOrdr +"").attr("src", e.target.result);
								                $("#detailCard"+ cardNo +" #img"+ file[0].fileNo + file[0].fileOrdr +"").attr("alt", files[0].name);
								            }
								            reader.readAsDataURL(files[0]);
										}
										fileOrdr++;	// 파일 순서 증가
										
										
										// 파일 insert 후 해당 파일 번호를 카드 파일 번호에 삽입하기
										var boardNo = $("#detailCard"+ cardNo +" input[name='boardNo']").val();
										var cardMenuNo = $("#detailCard"+ cardNo +" input[name='cardMenuNo']").val();
										var insertedfileNo = file[0].fileNo;
										var data = {"boardNo" : boardNo, "cardMenuNo" : cardMenuNo, "cardNo" : cardNo, "fileNo" : insertedfileNo};
										console.log(data);
										
										$.ajax({
											url : "/todo/card/editCardFileNo"
											, type : "post"
											, data : data
											, success : function(result){
												console.log("성공하면 1 : " + result);
											}
										});
										
									}
								});
							}
							
							
						}
					});
					
				}
				
				// 파일이 존재하고 파일 추가 시
				if($("#detailCard"+ cardNo +" .cardAttachedFile p").length > 0){
					file[0].fileNo = fileNo;		// 전역변수(fileNo)에 세팅된 파일 번호 값을 추가한 파일 번호에 세팅
					file[0].fileOrdr = fileOrdr;	// 전역변수(fileOrdr)에 세팅된 파일 번호 값을 추가한 파일 번호에 세팅
					
					$.ajax({
						url : "/file/createdFileInfo"
						, type : "post"
						, data : file[0] 
						, success : function(fileInfo){
							console.log(fileInfo);
							
							// '파일 이름(파일크기)' 세팅
							var fileInfo = '<p>'
								+ '<span><i class="fas fa-paperclip mr-2"></i></span>'
								+ '<span>'+ fileName +'</span><span>('+ fileSizePrint(fileSize) +')</span>'
								+ '<span class="deleteAttachedFile" onclick="fn_deleteFile('+ file[0].fileNo +','+ file[0].fileOrdr +',this)"><i class="fas fa-times ml-2"></i></span><span class="fileNo" style="display: none;">'+ file[0].fileNo +'</span>'
								+ 	'<span class="fileNo" style="display: none;">'+ file[0].fileNo +'</span>'
								+ 	'<span class="fileOrdr" style="display : none;">' + file[0].fileOrdr +'</span>'
								+	'<span class="downloadFile" onclick="fn_downloadFile('+ file[0].fileNo +', '+ file[0].fileOrdr +')"><i class="fas fa-download"></i></span>'
								+ '</p>';
								
							$("#detailCard"+ cardNo +" .cardAttachedFile").append(fileInfo);
							
							// 추가한 파일이 이미지 파일일 때, 이미지 보이기
							var reg = /(.*?)\/(jpg|jpeg|png|bmp|jfif)$/;	// 이미지를 구분하기 위한 정규표현식
							if(files[0].type.match(reg)){
								var imgObj = '<div class="col-sm-6"><img id="img'+ file[0].fileNo + file[0].fileOrdr +'" src="" alt=""></div>';
								$("#detailCard"+ cardNo +" .previewImg").append(imgObj);
								
								var reader = new FileReader();
					            reader.onload = function(e) {
					                $("#detailCard"+ cardNo +" #img"+ file[0].fileNo + file[0].fileOrdr +"").attr("src", e.target.result);
					                $("#detailCard"+ cardNo +" #img"+ file[0].fileNo + file[0].fileOrdr +"").attr("alt", files[0].name);
					            }
					            reader.readAsDataURL(files[0]);
							}
							fileOrdr++;
						}
					});
				}
				
				
			} // end success
		});
	}
	
	// 파일 삭제('X' 아이콘) 클릭 시
	function fn_deleteFile(fileNo, fileOrdr, obj){
		var check = confirm("해당 파일을 삭제하시겠습니까?");
		var data = {"fileNo" : fileNo, "fileOrdr" : fileOrdr};
		if(check){
			$.ajax({
				url : "/todo/card/deleteFile"
				, type : "post"
				, data : data
				, success : function(result){
					if(result == 1){
						$(obj).parent("p").remove();
						$(".previewImg").find("#img"+ fileNo + fileOrdr +"").parent().remove();
					}
				}
			});
		}
	}
	
	// 파일 다운로드
	function fn_downloadFile(fileNo, fileOrdr){
 		location.href = "/download?fileNo=" + fileNo + "&fileOrdr=" + fileOrdr;
	}
	
	// 기한일 변경 
	function fn_changeCardDate(cardNo){
		
		var cardEndDt = $("#cardEndDt"+ cardNo +"");	// 기한일
		var updtEmpno = $("input[name='updtEmpno']").val();		// 수정자 사번
		var cardMenuNo = $("#cardMenuNo"+ cardNo +"").val();	// 해당 카드의 카드메뉴번호
		var boardNo = $("#boardNo"+ cardNo +"").val();	// 해당 카드의 보드 번호
		// 날짜 비교 변수
		var today = new Date();
		var todayYear = today.getFullYear();		 
		var todayMonth = today.getMonth() + 1;		
		var todayDate =  today.getDate();
		if(todayMonth < 10){
			todayMonth = "0" + todayMonth;
		}
		if(todayDate < 10){
			todayDate = "0" + todayDate;
		}
		var sysdate = todayYear + "-" + todayMonth + "-" + todayDate;
		
		// 오늘 날짜보다 앞 날짜 선택 시
		if(cardEndDt.val() < sysdate){
			alert("기한일은 오늘 또는 오늘 이후로 설정 가능합니다.");
			cardEndDt.val(sysdate);
			return false;
		}else{
			$.ajax({
				url : "/todo/card/editCardEndDate"
				, type : "post"
				, data : {"cardEndDt" : cardEndDt.val(), "updtEmpno" : updtEmpno, "cardMenuNo" : cardMenuNo, "boardNo" : boardNo, "cardNo" : cardNo}
				, success : function(result){
					if(result == 1){
						cardEndDt.val(cardEndDt.val());
						console.log(cardEndDt.val());
					}
				}
			});
		}
		
		
		
	}
	
	
	// 카드 댓글 -> [등록] 클릭 시
	function fn_createComment(cardNo){
		var cardMenuNo = $("#cardMenuNo"+ cardNo +"").val();
		var cardNo = $("#cardNo"+ cardNo +"").val();
		var boardNo = $("#boardNo"+ cardNo +"").val();
		var wrterEmpno = ${sessionScope.empVo.empno};
		var answerCn = $("#detailCard"+ cardNo +" input[name='answerCn']");
		if( fn_isEmpty(answerCn.val()) || $.trim(answerCn.val()) == ""){
			alert("댓글을 입력하세요.");
			answerCn.focus();
			return false;
		}
		var answerCount = $("#answerCount"+ cardNo +"").text();
		var addAnswerCount = parseInt(answerCount) + 1;
		
		<c:set var="fileCours" value="${fn:replace(sessionScope.empVo.fileCours,'\\\\','/')}" />
		
		$.ajax({
			url : "/todo/card/createAnswer"
			, type : "post"
			, data : {"cardMenuNo" : cardMenuNo, "cardNo" : cardNo, "boardNo" : boardNo, "wrterEmpno": wrterEmpno, "answerCn" : answerCn.val()}
			, success : function(answerNo){
				if(answerNo != null){
					$.ajax({
						url : "/todo/card/createdAnswer"
						, type : "post"
						, data : {"answerNo" : answerNo}
						, success : function(answer){
							console.log(answer);
							if(answer.answerCn == null){
								answer.answerCn = "&nbsp";
							}
							
							var str = '<div id="resultComment'+ answer.answerNo +'" class="resultComment">' 	
								+ '<div class="addComment">'
								+ '<input type="hidden" id="answerNo'+ answer.answerNo +'" name="answerNo" value="'+ answer.answerNo +'">'
								+	'<span class="memberImg"><img src="/reload?fileNo=${sessionScope.empVo.fileNo}"></span>'
								+	'<div class="comments">'
								+		'<p>'+ answer.answerCn +'</p>'
						 		+		'<span>'+ answer.updtTm +'</span>'
								+	'</div>'
								+ '</div>'
								+ '<div class="editComment">'
								+	'<img src="/reload?fileNo=${sessionScope.empVo.fileNo}">'
								+	'<input type="text" class="form-control" name="answerCn">'
								+	'<div class="btnComment">'
								+		'<button id="btnEditComment" class="btnEditComment" type="button" onclick="fn_editComment('+ cardNo +','+ answer.answerNo +')">수정</button>'
								+		'<button id="btnCancelComment" class="btnCancelComment" type="button" onclick="fn_cancelComment(this)">취소</button>'
								+	'</div>'
								+ '</div>'
							    + '</div>';
							    
							$(".commentList").append(str);
							if(answer.wrterEmpno == ${sessionScope.empVo.empno}){
								var edit = '<div class="divEditAnswer">'
										+		'<button type="button" class="btn" onclick="fn_openEditComment(this)"><i class="far fa-edit"></i></button>'
										+		'<button type="button" class="btn" onclick="fn_deleteComment('+ cardNo +','+ answer.answerNo +',this)"><i class="fas fa-times"></i></button>'
										+	'</div>'
								$("#resultComment"+ answer.answerNo +" .comments").append(edit);
							}
							var answerCount = $("#answerCount"+ cardNo +"").text(addAnswerCount);
							answerCn.val(null);
							answerCn.focus();
						}
					});

				}
			}
		});
		
	}
	
	// 카드 댓글 '수정 아이콘' 클릭 시
	function fn_openEditComment(obj){
		var comment = $(obj).parents(".comments").find("p").text();
		$(obj).parents(".resultComment").find(".editComment input[name='answerCn']").val(comment);
		$(obj).parents(".resultComment").find(".addComment").css("display", "none");
		$(obj).parents(".resultComment").find(".editComment").css("display", "flex");
		
		
	}
	
	// 카드 댓글 수정
	function fn_editComment(cardNo, answerNo){
		console.log(answerNo);
		var cardMenuNo = $("#cardMenuNo"+ cardNo +"").val();
		var boardNo = $("#boardNo"+ cardNo +"").val();
		var updtEmpno = ${sessionScope.empVo.empno};
		var answerCn = $("#detailCard"+ cardNo +" #resultComment"+ answerNo +" input[name='answerCn']");
		console.log(answerCn.val());
		if( fn_isEmpty(answerCn.val()) || $.trim(answerCn.val()) == ""){
			alert("댓글을 입력하세요.");
			answerCn.focus();
			return false;
		}
		
		$.ajax({
			url : "/todo/card/editAnswer"
			, type : "post"
			, data : {"updtEmpno" : updtEmpno, "answerCn" : answerCn.val(), "cardMenuNo" : cardMenuNo, "cardNo" : cardNo, "boardNo" : boardNo, "answerNo" : answerNo}
			, success : function(result){
				console.log(result);
				if(result != null){
					$.ajax({
						url : "/todo/card/createdAnswer"
						, type : "post"
						, data : {"answerNo" : result}
						, success : function(editedAnswer){
							console.log(editedAnswer);
		 					$("#resultComment"+ editedAnswer.answerNo +" .comments p").text(editedAnswer.answerCn);
		 					$("#resultComment"+ editedAnswer.answerNo +" .comments span").text(editedAnswer.updtTm);
		 					$("#resultComment"+ editedAnswer.answerNo +" .editComment").css("display", "none");
		 					$("#resultComment"+ editedAnswer.answerNo +" .addComment").css("display", "block");
						}
					});
				}

				
			}
		});
	}
	
	// 카드 댓글 '수정 아이콘' -> [취소] 클릭 시
	function fn_cancelComment(obj){
		$(obj).parents(".resultComment").find(".editComment").css("display", "none");
		$(obj).parents(".resultComment").find(".addComment").css("display", "block");
	}
	
	// 카드 댓글 삭제('X' 클릭 시)
	function fn_deleteComment(cardNo, answerNo, obj){
		var cardMenuNo = $("#cardMenuNo"+ cardNo +"").val();
		var boardNo = $("#boardNo"+ cardNo +"").val();
		var answerCount = $("#answerCount"+ cardNo +"").text();
		var minusAnswerCount = parseInt(answerCount) - 1;
		
		$.ajax({
			url : "/todo/card/deleteAnswer"
			, type : "post"
			, data : {"cardMenuNo" : cardMenuNo, "cardNo" : cardNo, "boardNo" : boardNo, "answerNo": answerNo}
			, success : function(result){
				if(result == 1){
					var answerCount = $("#answerCount"+ cardNo +"").text(minusAnswerCount);
					$(obj).parents(".resultComment").remove();			
				}				
			}
		});
		
	}
	
</script>
<div id="body">
	<div class="lefr-menu-list-content">
		<div class="boardTitle" style="padding: 20px 0px 20px 10px; display: flex;">
			<div>
				<button id="btnBoardOption${detailBoard.boardNo}" type="button" class="btn btnBoardOption dropdown-toggle" data-toggle="dropdown"></button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/todo/home">ToDO+</a>
					<a class="dropdown-item" data-toggle="modal" data-target="#editCocnr">공유자 설정</a>
					<a class="dropdown-item" onclick="fn_deleteBoard(${detailBoard.boardNo})">보드 삭제</a>
				</div>
			</div>
			<h3 onclick="fn_openEditBoardNm()">${detailBoard.boardNm}</h3>
			<div class="eidtBoardNm">
				<input type="text" class="form-control" name="boardNm" value="${detailBoard.boardNm}">
				<button type="button" class="btnEditBoardNm" onclick="fn_editBoardNm(${detailBoard.boardNo})">수정</button>
				<button type="button" class="btnCancelBoardNm" onclick="fn_cancelBoardNm()">취소</button>
			</div>
			<form id="bkmkFrm${detailBoard.boardNo}">
			<a class="bkmkYN">
				<c:if test="${detailBoard.bkmk eq 'N'}">
				<i class="fas fa-star fa-lg" style="color: #ddd"></i>
				</c:if>
				<c:if test="${detailBoard.bkmk eq 'Y'}">
				<i class="fas fa-star fa-lg" style="color: gold"></i>
				</c:if>
				<input type="hidden" name="bkmk" value="${detailBoard.bkmk}">
				<input type="hidden" name="boardNo" value="${detailBoard.boardNo}">
			</a>
			</form>
		</div>
		<div class="row data">
			<div class="col-sm-2" id="createCardMenu">
				<div class="plusIcon" style="padding-top: 20px; padding-bottom: 15px;">
					<i class="fas fa-plus"></i>
				</div>
				<div class="createCardMenuList">
					<form id="cardMenuFrm">
						<input type="hidden" name="boardNo" value="${detailBoard.boardNo}">
						<input type="text" class="form-control" name="cardSj" >
						<div class="btnCard">
							<button id="btnCreateCardMenu" type="button" onclick="fn_createCardMenu()">저장</button>
							<button id="btnCancelCardMenu" type="button">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 공유자 설정 모달 -->
	<div class="modal" id="editCocnr" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title">공유자 설정</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
	
				<!-- Modal body -->
				<div class="modal-body">
						<table>
							<colgroup>
								<col width="100px">
								<col width="400px">
							</colgroup>
							<tr>
								<td>공유자
									<a class="sharedEmpAdd"><i class="fas fa-plus-circle ml-2"></i></a>
								</td>
								<td>
								<form id="editBoardCocnrFrm">
									<div class="row" id="memberList">
									<input type="hidden" name="boardNo" value="${detailBoard.boardNo}">
									<c:forEach var="cocnr" items="${detailBoardCocnr}">
										<c:if test="${sessionScope.empVo.empno == cocnr.cocnrEmpno}">
										<div class="col-sm-4" style="display: none;">
											<input type="hidden" class="empno" name="cocnrEmpnoArr" value="${cocnr.cocnrEmpno}">
											<span class="cocnrNm">${cocnr.cocnrNm}&nbsp;${cocnr.cocnrOfcpsNm}</span>
											<a href="#" class="deleteMember" onclick="fn_deleteMember(this)"><i class="fas fa-times-circle"></i></a>
										</div>
										</c:if>
										<c:if test="${sessionScope.empVo.empno != cocnr.cocnrEmpno}">
										<div class="col-sm-4">
											<input type="hidden" class="empno" name="cocnrEmpnoArr" value="${cocnr.cocnrEmpno}">
											<span class="cocnrNm">${cocnr.cocnrNm}&nbsp;${cocnr.cocnrOfcpsNm}</span>
											<a href="#" class="deleteMember" onclick="fn_deleteMember(this)"><i class="fas fa-times-circle"></i></a>
										</div>
										</c:if>
									</c:forEach>
									</div>
								</form>
								</td>
							</tr>
						</table>
				</div>
	
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="btnCreateBoard" type="button" class="btn btn-primary" onclick="fn_editBoardCocnr()">수정</button>
					<button id="btnCancel" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
</div>
