<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.card-padding {
		padding: 10px 20px 20px 20px;
	}
	.left-rem {
		font-size: 0.8rem;
		color: #888;
	}
	.right-rem {
		font-size: 0.8rem;
		color: #212529;
	}
	.card-padding td {
		padding: 3px;
	}
	.card-padding:hover {
		box-shadow: 0px 10px 10px #dddddd;
	}
	
	.col-sm-3:hover {cursor: pointer;}
</style>
<div id="body">
	<div class="lefr-menu-list-content">
			<div class="menu-name menu1">
				<h4>전자 결재 홈</h4>
			</div>
			<div class="EA-document">
				<div class="row">
					<c:forEach var="myDrft" items="${myDrftList}">
						<div class="col-sm-3">
							<form class="card card-padding" onclick="javascript:location.href='/EA/document/detail?drftNo=${myDrft.drftNo}'">
								<table>
								<thead>
									<tr>
										<th>
											<c:if test="${myDrft.drftProgrsNm eq '진행중'}">
											<span class="green-span">진행 중</span>
											</c:if>
											<c:if test="${myDrft.drftProgrsNm eq '완료'}">
												<span class="blue-span">완료</span>
											</c:if>
											<c:if test="${myDrft.drftProgrsNm eq '반려'}">
												<span class="grey-span">반려</span>
											</c:if>
										</th>
									</tr>
								</thead>
								<tbody>					
									<tr>
										<td style="padding-top:20px !important;" colspan="2"><h4>${myDrft.formNm}</h4></td>
									</tr>
									<tr>
										<td class="left-rem">기안자</td>
										<td class="right-rem">${myDrft.nm}</td>
									</tr>
									<tr>
										<td class="left-rem">기안일</td>
										<td class="right-rem">${fn:substring(myDrft.writngTm,0,10)}</td>
									</tr>
									<tr>
										<td class="left-rem">제목</td>
										<td style="display:block;width:145px;text-overflow: ellipsis; overflow:hidden; white-space:nowrap;" class="right-rem">${myDrft.sj}</td>
									</tr>
								</tbody>
								</table>
							</form>
						</div>					
					</c:forEach>
											
				</div>
			</div>					
			<div class="menu-name menu2">기안 진행 문서</div>
			<div class="EA-Proceeding">
			<table class="type_normal list_approval">
				<colgroup>
					<col width="150px">
					<col width="150px">
					<col width="auto">
					<col width="100px">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th id="header_drafted_at" class="sorting_disabled hp date"><span
							class="title_sort">기안일<span
								class="selected"></span></span></th>
						<th id="header_form_name" class="sorting_disabled doc"><span
							class="title_sort">결재양식</span></th>
						<th id="header_title" class="sorting_disabled subject"><span
							class="title_sort">제목</span></th>
						<th id="header_attach" class="sorting_disabled attach"><span
							class="title_sort">첨부</span></th>
						<th id="header_doc_status" class="sorting_disabled state_wrap"><span
							class="title_sort">결재상태</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="procDrft" items="${procDrftList}">
					<tr>
						<td class="date first"><span class="txt">${fn:substring(procDrft.writngTm,0,10)}</span></td>
						<td class="division"><span class="txt">${procDrft.formNm}</span></td>
						<td class="subject" onclick="javascript:location.href='/EA/document/detail?drftNo=${procDrft.drftNo}'">
							<a><span class="txt">${procDrft.sj}</span></a>
						</td>
						<td class="attach">
							<c:if test="${procDrft.fileNo > 0}">
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-paperclip" viewBox="0 0 16 16">
												<path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z"/>
											</svg>
							</c:if>
						</td>
						<td class="state_wrap"><a><span class="state read"><span class="green-span">진행 중</span></span></a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="menu-name menu2" style="padding-top: 100px;">완료 문서</div>
		<div class="EA-complete">
			<table class="type_normal list_approval">
				<colgroup>
					<col width="150px">
					<col width="150px">
					<col width="auto">
					<col width="100px">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th id="header_drafted_at" class="sorting_disabled hp date"><span
							class="title_sort">기안일<span
								class="selected"></span></span></th>
						<th id="header_form_name" class="sorting_disabled doc"><span
							class="title_sort">결재양식</span></th>
						<th id="header_title" class="sorting_disabled subject"><span
							class="title_sort">제목</span></th>
						<th id="header_attach" class="sorting_disabled attach"><span
							class="title_sort">첨부</span></th>
						<!-- <th id="header_doc_no" class="sorting_disabled doc_num"><span
							class="title_sort">문서번호</span></th> -->
						<th id="header_doc_status" class="sorting_disabled state_wrap"><span
							class="title_sort">결재상태</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="complDrft" items="${complDrftList}">
					<tr>
						<td class="date first"><span class="txt">${fn:substring(complDrft.writngTm,0,10)}</span></td>
						<td class="division"><span class="txt">${complDrft.formNm}</span></td>
						<td class="subject"><a onclick="javascript:location.href='/EA/document/detail?drftNo=${complDrft.drftNo}'"><span class="txt">${complDrft.sj}</span></a>
						</td>
						<td class="attach">
							<c:if test="${procDrft.fileNo > 0}">
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-paperclip" viewBox="0 0 16 16">
												<path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z"/>
											</svg>
							</c:if>
						</td>
						<%-- <td class="doc_num"><span class="txt">${complDrft.drftNo}</span></td> --%>
						<td class="state_wrap"><a><span class="state finish"><span class="blue-span">완료</span></span></a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- modal start -->
<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog"
	aria-labelledby="mySmallModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<h4>결재양식 선택</h4>
			</div>
			<div class="row">
				<div class="col-sm-1">
				</div>
				<div class="col-sm-5">
					<div class="drft-div">
						<div>
							일반
							<div class="drft-list">업무기안<br>회계(입금,출금,대체)품의서</div>
						</div>
						<div>
							지원
							<div class="drft-list">해외출장신청<br> 증명서신청(개인)<br> 증명서신청(회사)</div>
						</div>
						<div>
							인사
							<div class="drft-list">채용요청<br> 휴직원<br> 복직원</div>
						</div>
						<div>
							그 외
							<div class="drft-list">휴가신청서<br> 구매 품의서<br> 법인카드(개인) 발급 신청서<br> 회의록</div>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="drft-div">
						<div>제목
							&nbsp;&nbsp;<span>임시 제목</span>
						</div>
						<br>
						<div>보안등급
							&nbsp;&nbsp;<span>임시 제목</span>
						</div>
						<br>
						<div>기안부서
							&nbsp;&nbsp;<span>임시 제목</span>
						</div>
					</div>
				</div>
				<div class="col-sm-1">
			</div>
			</div>
		</div>
	</div>
</div>
<!-- modal end -->